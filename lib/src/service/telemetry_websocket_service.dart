import 'dart:async';
import 'dart:convert';

import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:web_socket_channel/status.dart' as status;

import '../model/model.dart';
import '../thingsboard_client_base.dart';

const RECONNECT_INTERVAL = 2000;
const WS_IDLE_TIMEOUT = 90000;
const MAX_PUBLISH_COMMANDS = 10;

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

  int _lastCmdId = 0;
  int _subscribersCount = 0;
  final Map<int, TelemetrySubscriber> _subscribersMap = {};

  final Set<TelemetrySubscriber> _reconnectSubscribers = {};

  final ThingsboardClient _tbClient;
  final TelemetryPluginCmdsWrapper _cmdsWrapper = TelemetryPluginCmdsWrapper();
  late final Uri _telemetryUri;

  late WebSocketSink _sink;

  factory TelemetryWebsocketService(
      ThingsboardClient tbClient, String apiEndpoint) {
    return TelemetryWebsocketService._internal(tbClient, apiEndpoint);
  }

  TelemetryWebsocketService._internal(this._tbClient, String apiEndpoint) {
    var apiEndpointUri = Uri.parse(apiEndpoint);
    var scheme = apiEndpointUri.scheme == 'https' ? 'wss' : 'ws';
    _telemetryUri = apiEndpointUri.replace(
        scheme: scheme, path: '/api/ws/plugins/telemetry');
  }

  @override
  void subscribe(TelemetrySubscriber subscriber) {
    _isActive = true;
    subscriber.subscriptionCommands.forEach((subscriptionCommand) {
      var cmdId = _nextCmdId();
      _subscribersMap[cmdId] = subscriber;
      subscriptionCommand.cmdId = cmdId;
      if (subscriptionCommand is SubscriptionCmd) {
        if (subscriptionCommand is TimeseriesSubscriptionCmd) {
          _cmdsWrapper.tsSubCmds.add(subscriptionCommand);
        } else {
          _cmdsWrapper.attrSubCmds
              .add(subscriptionCommand as AttributesSubscriptionCmd);
        }
      } else if (subscriptionCommand is GetHistoryCmd) {
        _cmdsWrapper.historyCmds.add(subscriptionCommand);
      } else if (subscriptionCommand is EntityDataCmd) {
        _cmdsWrapper.entityDataCmds.add(subscriptionCommand);
      } else if (subscriptionCommand is AlarmDataCmd) {
        _cmdsWrapper.alarmDataCmds.add(subscriptionCommand);
      } else if (subscriptionCommand is EntityCountCmd) {
        _cmdsWrapper.entityCountCmds.add(subscriptionCommand);
      }
    });
    _subscribersCount++;
    _publishCommands();
  }

  @override
  void update(TelemetrySubscriber subscriber) {
    if (!_isReconnect) {
      subscriber.subscriptionCommands.forEach((subscriptionCommand) {
        if (subscriptionCommand.cmdId != null &&
            subscriptionCommand is EntityDataCmd) {
          _cmdsWrapper.entityDataCmds.add(subscriptionCommand);
        }
      });
      _publishCommands();
    }
  }

  @override
  void unsubscribe(TelemetrySubscriber subscriber) {
    if (_isActive) {
      subscriber.subscriptionCommands.forEach((subscriptionCommand) {
        if (subscriptionCommand is SubscriptionCmd) {
          subscriptionCommand.unsubscribe = true;
          if (subscriptionCommand is TimeseriesSubscriptionCmd) {
            _cmdsWrapper.tsSubCmds.add(subscriptionCommand);
          } else {
            _cmdsWrapper.attrSubCmds
                .add(subscriptionCommand as AttributesSubscriptionCmd);
          }
        } else if (subscriptionCommand is EntityDataCmd) {
          var entityDataUnsubscribeCmd =
              EntityDataUnsubscribeCmd(cmdId: subscriptionCommand.cmdId);
          _cmdsWrapper.entityDataUnsubscribeCmds.add(entityDataUnsubscribeCmd);
        } else if (subscriptionCommand is AlarmDataCmd) {
          var alarmDataUnsubscribeCmd =
              AlarmDataUnsubscribeCmd(cmdId: subscriptionCommand.cmdId);
          _cmdsWrapper.alarmDataUnsubscribeCmds.add(alarmDataUnsubscribeCmd);
        } else if (subscriptionCommand is EntityCountCmd) {
          var entityCountUnsubscribeCmd =
              EntityCountUnsubscribeCmd(cmdId: subscriptionCommand.cmdId);
          _cmdsWrapper.entityCountUnsubscribeCmds
              .add(entityCountUnsubscribeCmd);
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
      var channel = IOWebSocketChannel.connect(uri);
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

  void _onClose([IOWebSocketChannel? channel]) {
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
