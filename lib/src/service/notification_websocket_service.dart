import 'dart:async';
import 'dart:convert';

import 'package:web_socket_channel/status.dart' as status;
import 'package:web_socket_channel/web_socket_channel.dart';

import '../model/model.dart';
import '../thingsboard_client_base.dart';
import 'telemetry_websocket_service.dart';

class NotificationWebsocketService implements NotificationService {
  bool _isActive = false;
  bool _isOpening = false;
  bool _isOpened = false;
  bool _isReconnect = false;

  Timer? _socketCloseTimer;
  Timer? _reconnectTimer;

  int _lastCmdId = 0;
  int _subscribersCount = 0;
  final Map<int, NotificationSubscriber> _subscribersMap = {};

  final Set<NotificationSubscriber> _reconnectSubscribers = {};

  final ThingsboardClient _tbClient;
  final NotificationPluginCmdWrapper _cmdsWrapper =
      NotificationPluginCmdWrapper();
  late final Uri _telemetryUri;

  late WebSocketSink _sink;

  factory NotificationWebsocketService(
      ThingsboardClient tbClient, String apiEndpoint) {
    return NotificationWebsocketService._internal(tbClient, apiEndpoint);
  }

  NotificationWebsocketService._internal(this._tbClient, String apiEndpoint) {
    var apiEndpointUri = Uri.parse(apiEndpoint);
    var scheme = apiEndpointUri.scheme == 'https' ? 'wss' : 'ws';
    _telemetryUri = apiEndpointUri.replace(
        scheme: scheme, path: '/api/ws/plugins/notifications');
  }

  @override
  void subscribe(NotificationSubscriber subscriber) {
    _isActive = true;
    subscriber.subscriptionCommands.forEach((subscriptionCommand) {
      var cmdId = _nextCmdId();
      _subscribersMap[cmdId] = subscriber;
      subscriptionCommand.cmdId = cmdId;
      if (subscriptionCommand is UnreadCountSubCmd) {
        _cmdsWrapper.unreadCountSubCmd = subscriptionCommand;
      } else if (subscriptionCommand is UnreadSubCmd) {
        _cmdsWrapper.unreadSubCmd = subscriptionCommand;
      } else if (subscriptionCommand is MarkAsReadCmd) {
        _cmdsWrapper.markAsReadCmd = subscriptionCommand;
        _subscribersMap.remove(cmdId);
      } else if (subscriptionCommand is MarkAllAsReadCmd) {
        _cmdsWrapper.markAllAsReadCmd = subscriptionCommand;
        _subscribersMap.remove(cmdId);
      }
    });
    _subscribersCount++;
    _publishCommands();
  }

  @override
  void update(NotificationSubscriber subscriber) {
    if (!_isReconnect) {
      subscriber.subscriptionCommands.forEach((subscriptionCommand) {
        if (subscriptionCommand.cmdId != null &&
            subscriptionCommand is UnreadSubCmd) {
          _cmdsWrapper.unreadSubCmd = subscriptionCommand;
        }
      });
      _publishCommands();
    }
  }

  @override
  void unsubscribe(NotificationSubscriber subscriber) {
    if (_isActive) {
      subscriber.subscriptionCommands.forEach((subscriptionCommand) {
        if (subscriptionCommand is UnreadCountSubCmd ||
            subscriptionCommand is UnreadSubCmd) {
          var unreadCountUnsubscribeCmd =
              UnsubscribeCmd(cmdId: subscriptionCommand.cmdId);
          _cmdsWrapper.unsubCmd = unreadCountUnsubscribeCmd;
        }
        var cmdId = subscriptionCommand.cmdId;
        if (cmdId != null) {
          _subscribersMap.remove(cmdId);
        }
      });
      _reconnectSubscribers.remove(subscriber);
      _subscribersCount--;
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
        message = jsonEncode(_cmdsWrapper.preparePublishCommands());
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

  void reset(bool close) {
    if (_socketCloseTimer != null) {
      _socketCloseTimer!.cancel();
      _socketCloseTimer = null;
    }
    _lastCmdId = 0;
    _subscribersMap.clear();
    _subscribersCount = 0;
    _cmdsWrapper.clear();
    if (close) {
      _closeSocket();
    }
  }

  void _closeSocket() {
    _isActive = false;
    if (_isOpened) {
      _sink.close(status.goingAway);
    }
  }

  void _tryOpenSocket() {
    if (_isActive) {
      if (!_isOpened && !_isOpening) {
        _isOpening = true;
        if (_tbClient.isJwtTokenValid()) {
          _openSocket(_tbClient.getJwtToken()!);
        } else {
          _tbClient.refreshJwtToken().then((value) {
            _openSocket(_tbClient.getJwtToken()!);
          }, onError: (e) {
            _isOpening = false;
            _tbClient.logout();
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
    var uri = _telemetryUri.replace(queryParameters: {'token': token});
    try {
      var channel = WebSocketChannel.connect(uri);
      _sink = channel.sink;
      channel.stream.listen((event) {
        _onMessage(event);
      }, onDone: () {
        _onClose(channel);
      }, onError: (e) {
        _onError(e);
      });
      _onOpen();
    } catch (e) {
      _onClose();
    }
  }

  void _onOpen() {
    _isOpening = false;
    _isOpened = true;
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
    } else {
      _publishCommands();
    }
  }

  void _onMessage(dynamic rawMessage) async {
    try {
      var message =
          await _tbClient.compute(parseWebsocketDataMessage, rawMessage);
      if (message is CmdUpdate) {
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
        _reconnectSubscribers.clear();
        _subscribersMap.forEach((key, subscriber) {
          _reconnectSubscribers.add(subscriber);
        });
        reset(false);
        _isReconnect = true;
      }
      if (_reconnectTimer != null) {
        _reconnectTimer!.cancel();
      }
      _reconnectTimer = Timer(
          Duration(milliseconds: RECONNECT_INTERVAL), () => _tryOpenSocket());
    }
  }

  void _onWsError(int errorCode, String? errorMsg) {
    var message = errorMsg ?? 'WebSocket Error: error code - $errorCode.';
    print(message);
  }
}
