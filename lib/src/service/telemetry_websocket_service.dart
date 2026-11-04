// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:web_socket_channel/status.dart' as status;

import '../model/telemetry/telemetry_models.dart';
import '../thingsboard_client_base.dart';

const RECONNECT_INTERVAL = 2000;
const MAX_RECONNECT_INTERVAL = 60000;
// log2 of the cap-to-base ratio: past this exponent the backoff is already
// clamped to MAX_RECONNECT_INTERVAL, and shifting further would overflow.
final _maxBackoffExponent =
    (log(MAX_RECONNECT_INTERVAL / RECONNECT_INTERVAL) / ln2).ceil();
const WS_IDLE_TIMEOUT = 90000;
const MAX_PUBLISH_COMMANDS = 10;

typedef WebSocketChannelFactory = WebSocketChannel Function(Uri uri);

WebsocketDataMsg parseWebsocketDataMessage(dynamic raw) {
  return WebsocketDataMsg.fromJson(jsonDecode(raw));
}

class TelemetryWebsocketService implements TelemetryService {
  bool _isActive = false;
  bool _isOpening = false;
  bool _isOpened = false;
  bool _isReconnect = false;

  Timer? _socketCloseTimer;
  Timer? _reconnectTimer;
  int _reconnectAttempt = 0;

  int _lastCmdId = 0;
  int _subscribersCount = 0;
  final Map<int, TelemetrySubscriber> _subscribersMap = {};

  final Set<TelemetrySubscriber> _reconnectSubscribers = {};

  final ThingsboardClientBase _tbClient;
  final TelemetryPluginCmdsWrapper _cmdsWrapper = TelemetryPluginCmdsWrapper();
  late final Uri _telemetryUri;
  late final WebSocketChannelFactory _channelFactory;

  late WebSocketSink _sink;

  factory TelemetryWebsocketService(
      ThingsboardClientBase tbClient, String apiEndpoint,
      {WebSocketChannelFactory? channelFactory}) {
    return TelemetryWebsocketService._internal(tbClient, apiEndpoint,
        channelFactory: channelFactory);
  }

  TelemetryWebsocketService._internal(this._tbClient, String apiEndpoint,
      {WebSocketChannelFactory? channelFactory}) {
    var apiEndpointUri = Uri.parse(apiEndpoint);
    var scheme = apiEndpointUri.scheme == 'https' ? 'wss' : 'ws';
    _telemetryUri = apiEndpointUri.replace(scheme: scheme, path: '/api/ws');
    _channelFactory = channelFactory ?? WebSocketChannel.connect;
  }

  @override
  void subscribe(TelemetrySubscriber subscriber) {
    _isActive = true;
    subscriber.subscriptionCommands.forEach((subscriptionCommand) {
      var cmdId = _nextCmdId();
      if (!(subscriptionCommand is MarkAsReadCmd) &&
          !(subscriptionCommand is MarkAllAsReadCmd)) {
        _subscribersMap[cmdId] = subscriber;
      }
      subscriptionCommand.cmdId = cmdId;
      _cmdsWrapper.cmds.add(subscriptionCommand);
    });
    _subscribersCount++;
    _publishCommands();
  }

  @override
  void update(TelemetrySubscriber subscriber) {
    if (!_isReconnect) {
      subscriber.subscriptionCommands.forEach((subscriptionCommand) {
        if (subscriptionCommand.cmdId != null &&
            (subscriptionCommand is EntityDataCmd ||
                subscriptionCommand is UnreadSubCmd)) {
          _cmdsWrapper.cmds.add(subscriptionCommand);
        }
      });
      _publishCommands();
    }
  }

  @override
  void unsubscribe(TelemetrySubscriber subscriber) {
    // Its commands belong to the dropped connection, whose state (including
    // its count) is already cleared; cmdIds restart after that, so sending
    // them could unsubscribe a live subscriber on the new socket.
    if (_reconnectSubscribers.remove(subscriber)) {
      return;
    }
    if (_isActive) {
      subscriber.subscriptionCommands.forEach((subscriptionCommand) {
        if (subscriptionCommand is SubscriptionCmd) {
          subscriptionCommand.unsubscribe = true;
          _cmdsWrapper.cmds.add(subscriptionCommand);
        } else if (subscriptionCommand is EntityDataCmd) {
          var entityDataUnsubscribeCmd =
              EntityDataUnsubscribeCmd(cmdId: subscriptionCommand.cmdId);
          _cmdsWrapper.cmds.add(entityDataUnsubscribeCmd);
        } else if (subscriptionCommand is AlarmDataCmd) {
          var alarmDataUnsubscribeCmd =
              AlarmDataUnsubscribeCmd(cmdId: subscriptionCommand.cmdId);
          _cmdsWrapper.cmds.add(alarmDataUnsubscribeCmd);
        } else if (subscriptionCommand is EntityCountCmd) {
          var entityCountUnsubscribeCmd =
              EntityCountUnsubscribeCmd(cmdId: subscriptionCommand.cmdId);
          _cmdsWrapper.cmds.add(entityCountUnsubscribeCmd);
        } else if (subscriptionCommand is UnreadCountSubCmd ||
            subscriptionCommand is UnreadSubCmd) {
          var unreadCountUnsubscribeCmd =
              UnsubscribeCmd(cmdId: subscriptionCommand.cmdId);
          _cmdsWrapper.cmds.add(unreadCountUnsubscribeCmd);
        }
        var cmdId = subscriptionCommand.cmdId;
        if (cmdId != null) {
          _subscribersMap.remove(cmdId);
        }
      });
      if (_subscribersCount > 0) {
        _subscribersCount--;
      }
      _publishCommands();
    }
  }

  int _nextCmdId() {
    _lastCmdId++;
    return _lastCmdId;
  }

  void _publishCommands() {
    while (_isOpened && _cmdsWrapper.hasCommands()) {
      String? message;
      try {
        message = jsonEncode(
            _cmdsWrapper.preparePublishCommands(MAX_PUBLISH_COMMANDS));
      } catch (e) {
        print('Failed to prepare publish commands: $e');
      }
      if (message != null) {
        _sink.add(message);
      }
      _checkToClose();
    }
    _tryOpenSocket();
  }

  void _checkToClose() {
    if (_subscribersCount == 0 && _isOpened) {
      _socketCloseTimer ??=
          Timer(Duration(milliseconds: WS_IDLE_TIMEOUT), () => _closeSocket());
    }
  }

  @override
  void reset(bool close) {
    _clearConnectionState();
    _reconnectTimer?.cancel();
    _reconnectTimer = null;
    _isReconnect = false;
    _reconnectAttempt = 0;
    _reconnectSubscribers.clear();
    if (close) {
      _closeSocket();
    }
  }

  void _clearConnectionState() {
    if (_socketCloseTimer != null) {
      _socketCloseTimer!.cancel();
      _socketCloseTimer = null;
    }
    _lastCmdId = 0;
    _subscribersMap.clear();
    _subscribersCount = 0;
    _cmdsWrapper.clear();
  }

  void _closeSocket() {
    _isActive = false;
    if (_isOpened) {
      // A client may only send 1000 or 3000-4999 (package:web_socket rejects
      // 1001 goingAway with an ArgumentError on dart:io).
      _sink.close(status.normalClosure);
    }
  }

  void _tryOpenSocket() {
    if (_isActive) {
      if (!_isOpened && !_isOpening) {
        _isOpening = true;
        if (_isReconnect) {
          _reconnectAttempt++;
        }
        if (_tbClient.isJwtTokenValid()) {
          _openSocket(_tbClient.getJwtToken()!);
        } else {
          _tbClient.refreshJwtToken().then((value) {
            var token = _tbClient.getJwtToken();
            if (_isActive && token != null) {
              _openSocket(token);
            } else {
              _isOpening = false;
            }
          }, onError: (e) {
            _isOpening = false;
            // A rejected refresh token has already cleared the session (which
            // resets this service); otherwise the server was unreachable, so
            // retry like any other failed connection attempt.
            if (_tbClient.isAuthenticated()) {
              _onClose();
            }
          });
        }
      }
      if (_socketCloseTimer != null) {
        _socketCloseTimer!.cancel();
        _socketCloseTimer = null;
      }
    }
  }

  void _openSocket(String token) {
    try {
      var channel = _channelFactory(_telemetryUri);
      _sink = channel.sink;
      channel.ready.then((value) => _onOpen(token), onError: ((e, stackTrace) {
        _onError(e);
        _onClose(channel);
      }));
      channel.stream.listen((event) {
        _onMessage(event);
      }, onDone: () {
        _onClose(channel);
      }, onError: (e) {
        _onError(e);
      });
    } catch (e) {
      _onError(e);
      _onClose();
    }
  }

  void _onOpen(String token) {
    _isOpening = false;
    _isOpened = true;
    _reconnectAttempt = 0;
    _cmdsWrapper.setAuth(token);
    if (_reconnectTimer != null) {
      _reconnectTimer!.cancel();
      _reconnectTimer = null;
    }
    if (_isReconnect) {
      _isReconnect = false;
      _reconnectSubscribers.forEach((reconnectSubscriber) {
        reconnectSubscriber.onReconnected();
        subscribe(reconnectSubscriber);
      });
      _reconnectSubscribers.clear();
    }
    // Subscribers added during the backoff queued commands of their own.
    _publishCommands();
  }

  void _onMessage(dynamic rawMessage) async {
    try {
      var message =
          await _tbClient.compute(parseWebsocketDataMessage, rawMessage);
      if (message is SubscriptionUpdate) {
        if (message.errorCode != null && message.errorCode! != 0) {
          _onWsError(message.errorCode!, message.errorMsg);
        } else {
          var subscriber = _subscribersMap[message.subscriptionId];
          subscriber?.onData(message);
        }
      } else if (message is CmdUpdate) {
        if (message.errorCode != null && message.errorCode! != 0) {
          _onWsError(message.errorCode!, message.errorMsg);
        } else {
          var subscriber = _subscribersMap[message.cmdId];
          subscriber?.onCmdUpdate(message);
        }
      }
    } catch (e) {
      print('Failed to process websocket message: ' + e.toString());
    }
    _checkToClose();
  }

  void _onError(dynamic errorEvent) {
    if (errorEvent != null) {
      print('WebSocket error event: $errorEvent');
    }
    _isOpening = false;
  }

  // Exponential backoff for reconnect attempts, capped at
  // MAX_RECONNECT_INTERVAL. The first reconnect after a drop or a failed
  // connect still fires quickly (RECONNECT_INTERVAL); the delay only grows
  // while attempts keep failing - e.g. a server still unreachable after a
  // failed token refresh - so it no longer retries (and re-triggers a token
  // refresh) every 2s indefinitely. Reset by _onOpen once a connection
  // succeeds.
  //
  // Attempts are counted when they start (_tryOpenSocket), not when they end:
  // a failed connect surfaces as both a `ready` error and a stream `done`, so
  // counting in _onClose would advance the backoff two steps per attempt.
  int _nextReconnectDelay() {
    final exponent = min(_reconnectAttempt, _maxBackoffExponent);
    return min(RECONNECT_INTERVAL << exponent, MAX_RECONNECT_INTERVAL);
  }

  void _onClose([WebSocketChannel? channel]) {
    if (channel != null &&
        channel.closeCode != null &&
        channel.closeCode! > 1001 &&
        channel.closeCode! != 1006) {
      _onWsError(channel.closeCode!, channel.closeReason);
    }
    _isOpening = false;
    _isOpened = false;
    if (_isActive) {
      if (!_isReconnect) {
        _reconnectSubscribers.addAll(_subscribersMap.values);
        _clearConnectionState();
        _isReconnect = true;
      }
      if (_reconnectTimer != null) {
        _reconnectTimer!.cancel();
      }
      _reconnectTimer = Timer(
          Duration(milliseconds: _nextReconnectDelay()), () => _tryOpenSocket());
    }
  }

  void _onWsError(int errorCode, String? errorMsg) {
    var message = errorMsg ?? 'WebSocket Error: error code - $errorCode.';
    print(message);
  }
}
