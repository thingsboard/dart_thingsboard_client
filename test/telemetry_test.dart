// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:fake_async/fake_async.dart';
import 'package:stream_channel/stream_channel.dart';
import 'package:test/test.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:thingsboard_client/src/thingsboard_client_base.dart';
import 'package:thingsboard_client/src/thingsboard_client.dart';
import 'package:thingsboard_client/src/service/telemetry_websocket_service.dart';
import 'package:thingsboard_client/src/model/login_models.dart';
import 'package:thingsboard_client/src/model/telemetry/telemetry_models.dart';
import 'package:thingsboard_client/src/model/id/entity_id.dart';
import 'package:thingsboard_client/src/model/id/entity_type_models.dart';

// ---- Test helpers ----

String createTestJwt({
  String sub = 'user-id',
  String scope = 'TENANT_ADMIN',
  int expInSeconds = 3600,
  String tenantId = 'tenant-id',
}) {
  final header = base64Url.encode(utf8.encode('{"alg":"HS256","typ":"JWT"}'));
  final payload = base64Url.encode(utf8.encode(jsonEncode({
    'sub': sub,
    'scopes': [scope],
    'exp':
        DateTime.now().millisecondsSinceEpoch ~/ 1000 + expInSeconds,
    'iss': 'test',
    'iat': DateTime.now().millisecondsSinceEpoch ~/ 1000,
    'firstName': 'Test',
    'lastName': 'User',
    'enabled': true,
    'isPublic': false,
    'tenantId': tenantId,
  })));
  return '$header.$payload.fake-signature';
}

String createExpiredTestJwt() {
  final header = base64Url.encode(utf8.encode('{"alg":"HS256","typ":"JWT"}'));
  final payload = base64Url.encode(utf8.encode(jsonEncode({
    'sub': 'user-id',
    'scopes': ['TENANT_ADMIN'],
    'exp': DateTime.now().millisecondsSinceEpoch ~/ 1000 - 3600,
    'iss': 'test',
    'iat': DateTime.now().millisecondsSinceEpoch ~/ 1000 - 7200,
    'firstName': 'Test',
    'lastName': 'User',
    'enabled': true,
    'isPublic': false,
    'tenantId': 'tenant-id',
  })));
  return '$header.$payload.fake-signature';
}

class MockHttpClientAdapter implements HttpClientAdapter {
  final Map<String, List<FutureOr<ResponseBody> Function(RequestOptions)>>
      _handlers = {};
  final List<String> requestedPaths = [];

  void onRoute(
      String path, FutureOr<ResponseBody> Function(RequestOptions) handler) {
    _handlers.putIfAbsent(path, () => []).add(handler);
  }

  @override
  Future<ResponseBody> fetch(RequestOptions options,
      Stream<Uint8List>? requestStream, Future<void>? cancelFuture) async {
    requestedPaths.add(options.path);
    final handlers = _handlers[options.path];
    if (handlers != null && handlers.isNotEmpty) {
      final handler =
          handlers.length > 1 ? handlers.removeAt(0) : handlers[0];
      return await handler(options);
    }
    return ResponseBody.fromString('{"message":"Not found"}', 404,
        headers: {'content-type': ['application/json']});
  }

  @override
  void close({bool force = false}) {}
}

/// A fake WebSocketChannel backed by in-memory stream controllers.
/// Extends StreamChannelMixin to get the required mixin methods.
class FakeWebSocketChannel extends StreamChannelMixin<dynamic>
    implements WebSocketChannel {
  final StreamController<dynamic> _serverToClientController =
      StreamController<dynamic>.broadcast();
  final List<dynamic> sentMessages = [];
  bool _isClosed = false;

  late final _FakeWebSocketSink _wsSink;

  FakeWebSocketChannel() {
    _wsSink = _FakeWebSocketSink(sentMessages, this);
  }

  void injectMessage(dynamic message) {
    if (!_serverToClientController.isClosed) {
      _serverToClientController.add(message);
    }
  }

  void simulateDisconnect({int? closeCode}) {
    _isClosed = true;
    _serverToClientController.close();
  }

  @override
  Stream<dynamic> get stream => _serverToClientController.stream;

  @override
  WebSocketSink get sink => _wsSink;

  @override
  Future<void> get ready => Future.value();

  @override
  int? get closeCode => _isClosed ? 1000 : null;

  @override
  String? get closeReason => _isClosed ? 'Normal closure' : null;

  @override
  String? get protocol => null;
}

class _FakeWebSocketSink implements WebSocketSink {
  final List<dynamic> _sentMessages;
  final FakeWebSocketChannel _channel;
  final _closeCompleter = Completer<void>();

  _FakeWebSocketSink(this._sentMessages, this._channel);

  @override
  void add(dynamic data) {
    _sentMessages.add(data);
  }

  @override
  void addError(Object error, [StackTrace? stackTrace]) {}

  @override
  Future<dynamic> addStream(Stream<dynamic> stream) async {
    await for (final item in stream) {
      add(item);
    }
  }

  @override
  Future<void> close([int? closeCode, String? closeReason]) {
    _channel.simulateDisconnect(closeCode: closeCode);
    if (!_closeCompleter.isCompleted) _closeCompleter.complete();
    return _closeCompleter.future;
  }

  @override
  Future<void> get done => _closeCompleter.future;
}

/// A factory that manages FakeWebSocketChannel instances for testing.
class FakeChannelFactory {
  FakeWebSocketChannel? currentChannel;
  int connectCallCount = 0;
  final List<FakeWebSocketChannel> _queue = [];

  void enqueue(FakeWebSocketChannel channel) {
    _queue.add(channel);
  }

  WebSocketChannel call(Uri uri) {
    connectCallCount++;
    if (_queue.isNotEmpty) {
      currentChannel = _queue.removeAt(0);
    } else {
      currentChannel = FakeWebSocketChannel();
    }
    return currentChannel!;
  }
}

List<Map<String, dynamic>> sentCmds(FakeWebSocketChannel channel) => [
      for (final msg in channel.sentMessages)
        ...((jsonDecode(msg as String)['cmds'] as List?) ?? const [])
            .cast<Map<String, dynamic>>(),
    ];

/// A WebSocketChannel whose connection attempt fails. Mirrors what
/// AdapterWebSocketChannel does when the server is unreachable: `ready`
/// completes with an error, and the stream reports the error and then closes.
class _FailedConnectChannel extends StreamChannelMixin<dynamic>
    implements WebSocketChannel {
  final StreamController<dynamic> _streamController =
      StreamController<dynamic>();
  final _error = WebSocketChannelException('connection refused');
  late final _DelayedWebSocketSink _wsSink;

  _FailedConnectChannel() {
    _wsSink = _DelayedWebSocketSink([], _streamController);
    _streamController.addError(_error);
    _streamController.close();
  }

  @override
  Future<void> get ready => Future.error(_error);

  @override
  Stream<dynamic> get stream => _streamController.stream;

  @override
  WebSocketSink get sink => _wsSink;

  @override
  int? get closeCode => null;

  @override
  String? get closeReason => null;

  @override
  String? get protocol => null;
}

/// A WebSocketChannel that delays its ready future until explicitly completed.
/// Used to test command queuing behavior.
class _DelayedReadyChannel extends StreamChannelMixin<dynamic>
    implements WebSocketChannel {
  final Completer<void> _readyCompleter = Completer<void>();
  final StreamController<dynamic> _streamController =
      StreamController<dynamic>.broadcast();
  final List<dynamic> sentMessages = [];
  late final _DelayedWebSocketSink _wsSink;

  _DelayedReadyChannel() {
    _wsSink = _DelayedWebSocketSink(sentMessages, _streamController);
  }

  void completeReady() {
    _readyCompleter.complete();
  }

  @override
  Future<void> get ready => _readyCompleter.future;

  @override
  Stream<dynamic> get stream => _streamController.stream;

  @override
  WebSocketSink get sink => _wsSink;

  @override
  int? get closeCode => null;

  @override
  String? get closeReason => null;

  @override
  String? get protocol => null;
}

class _DelayedWebSocketSink implements WebSocketSink {
  final List<dynamic> _sentMessages;
  final StreamController<dynamic> _streamController;
  final _closeCompleter = Completer<void>();

  _DelayedWebSocketSink(this._sentMessages, this._streamController);

  @override
  void add(dynamic data) {
    _sentMessages.add(data);
  }

  @override
  void addError(Object error, [StackTrace? stackTrace]) {}

  @override
  Future<dynamic> addStream(Stream<dynamic> stream) async {
    await for (final item in stream) {
      add(item);
    }
  }

  @override
  Future<void> close([int? closeCode, String? closeReason]) {
    if (!_closeCompleter.isCompleted) _closeCompleter.complete();
    _streamController.close();
    return _closeCompleter.future;
  }

  @override
  Future<void> get done => _closeCompleter.future;
}

// ---- Tests ----

void main() {
  late MockHttpClientAdapter mockAdapter;
  late ThingsboardClient client;
  late FakeChannelFactory channelFactory;

  setUp(() {
    mockAdapter = MockHttpClientAdapter();
    channelFactory = FakeChannelFactory();
    client = ThingsboardClient('http://localhost:8080');
    client.dio.httpClientAdapter = mockAdapter;
  });

  // Helper to log in the client with a valid JWT
  Future<void> loginClient(ThingsboardClient c, {String? jwtToken}) async {
    final token = jwtToken ?? createTestJwt();
    final refreshToken = createTestJwt(scope: 'REFRESH_TOKEN');
    mockAdapter.onRoute('/api/auth/login', (req) {
      return ResponseBody.fromString(
        jsonEncode({'token': token, 'refreshToken': refreshToken}),
        200,
        headers: {'content-type': ['application/json']},
      );
    });
    await c.login(LoginRequest(userName: 'u@test.com', password: 'p'));
  }

  // Helper to create a device EntityId for testing
  EntityId deviceId(String id) =>
      EntityId.fromTypeAndUuid(EntityType.DEVICE, id);

  TelemetrySubscriber attributesSubscriber(
          TelemetryService service, String id) =>
      TelemetrySubscriber.createEntityAttributesSubscription(
        telemetryService: service,
        entityId: deviceId(id),
        attributeScope: 'LATEST_TELEMETRY',
      );

  group('TelemetryWebsocketService', () {
    group('RT-01: stream routing', () {
      test('subscribe sends subscription command via WebSocket', () async {
        await loginClient(client);

        final fakeChannel = FakeWebSocketChannel();
        channelFactory.enqueue(fakeChannel);

        final service = TelemetryWebsocketService(
          client,
          'http://localhost:8080',
          channelFactory: channelFactory.call,
        );

        final subscriber =
            TelemetrySubscriber.createEntityAttributesSubscription(
          telemetryService: service,
          entityId: deviceId('device-1'),
          attributeScope: 'LATEST_TELEMETRY',
        );
        service.subscribe(subscriber);

        // Allow event loop to run (ready.then fires)
        await Future.delayed(Duration(milliseconds: 10));

        // Verify at least one message was sent (authCmd + subscription)
        expect(fakeChannel.sentMessages.isNotEmpty, isTrue);

        // Decode sent messages and look for subscription cmd
        bool foundSubscription = false;
        for (final msg in fakeChannel.sentMessages) {
          final decoded = jsonDecode(msg as String);
          if (decoded['cmds'] != null) {
            final cmds = decoded['cmds'] as List;
            if (cmds.any((c) => c['type'] == 'TIMESERIES')) {
              foundSubscription = true;
            }
          }
        }
        expect(foundSubscription, isTrue,
            reason: 'Expected TIMESERIES subscription command to be sent');
      });

      test('inject server message is dispatched to subscriber data stream',
          () async {
        await loginClient(client);

        final fakeChannel = FakeWebSocketChannel();
        channelFactory.enqueue(fakeChannel);

        final service = TelemetryWebsocketService(
          client,
          'http://localhost:8080',
          channelFactory: channelFactory.call,
        );

        final subscriber =
            TelemetrySubscriber.createEntityAttributesSubscription(
          telemetryService: service,
          entityId: deviceId('device-1'),
          attributeScope: 'LATEST_TELEMETRY',
        );
        service.subscribe(subscriber);

        // Allow socket open
        await Future.delayed(Duration(milliseconds: 10));

        // Find the cmdId assigned
        int? cmdId;
        for (final msg in fakeChannel.sentMessages) {
          final decoded = jsonDecode(msg as String);
          if (decoded['cmds'] != null) {
            final cmds = decoded['cmds'] as List;
            for (final c in cmds) {
              if (c['type'] == 'TIMESERIES') {
                cmdId = c['cmdId'] as int;
              }
            }
          }
        }
        expect(cmdId, isNotNull, reason: 'Expected cmdId to be assigned');

        // Capture data stream update
        final dataCompleter = Completer<SubscriptionUpdate>();
        subscriber.dataStream.first.then(dataCompleter.complete);

        // Inject a server message
        final serverMsg = jsonEncode({
          'subscriptionId': cmdId,
          'data': {
            'temperature': [
              [1000, '25.0']
            ]
          }
        });
        fakeChannel.injectMessage(serverMsg);

        final update =
            await dataCompleter.future.timeout(Duration(seconds: 2));
        expect(update.subscriptionId, equals(cmdId));
        expect(update.data.containsKey('temperature'), isTrue);
      });
    });

    group('RT-02: reconnect', () {
      test('subscriber stream not closed on disconnect and reconnects',
          () async {
        await loginClient(client);

        final firstChannel = FakeWebSocketChannel();
        final secondChannel = FakeWebSocketChannel();
        channelFactory.enqueue(firstChannel);
        channelFactory.enqueue(secondChannel);

        final service = TelemetryWebsocketService(
          client,
          'http://localhost:8080',
          channelFactory: channelFactory.call,
        );

        final subscriber =
            TelemetrySubscriber.createEntityAttributesSubscription(
          telemetryService: service,
          entityId: deviceId('device-1'),
          attributeScope: 'LATEST_TELEMETRY',
        );
        service.subscribe(subscriber);

        // Wait for first channel to open
        await Future.delayed(Duration(milliseconds: 10));
        expect(channelFactory.connectCallCount, equals(1));

        // Capture reconnect signal
        final reconnectCompleter = Completer<void>();
        subscriber.reconnectStream.first
            .then((_) => reconnectCompleter.complete());

        // Simulate disconnect
        firstChannel.simulateDisconnect();

        // Wait for reconnect timer (2s) + some margin
        await Future.delayed(Duration(milliseconds: 2200));

        // A second connection should have been opened
        expect(channelFactory.connectCallCount, equals(2),
            reason:
                'Expected reconnect to open a new WebSocket connection');

        // Reconnect event should fire
        expect(reconnectCompleter.isCompleted, isTrue,
            reason: 'Expected reconnect stream to emit');
      });

      test('failed connect retries after RECONNECT_INTERVAL, then backs off',
          () async {
        await loginClient(client);

        var connectCount = 0;
        WebSocketChannel failingFactory(Uri uri) {
          connectCount++;
          return _FailedConnectChannel();
        }

        final service = TelemetryWebsocketService(
          client,
          'http://localhost:8080',
          channelFactory: failingFactory,
        );
        final subscriber =
            TelemetrySubscriber.createEntityAttributesSubscription(
          telemetryService: service,
          entityId: deviceId('device-1'),
          attributeScope: 'LATEST_TELEMETRY',
        );
        service.subscribe(subscriber);

        await Future.delayed(Duration(milliseconds: 50));
        expect(connectCount, equals(1));

        // A failed connect reports both a ready error and a stream done, so
        // the first retry must still be scheduled at RECONNECT_INTERVAL and
        // not one backoff step later.
        await Future.delayed(Duration(milliseconds: RECONNECT_INTERVAL + 100));
        expect(connectCount, equals(2),
            reason: 'Expected the first retry after RECONNECT_INTERVAL');

        await Future.delayed(Duration(milliseconds: RECONNECT_INTERVAL + 100));
        expect(connectCount, equals(2),
            reason: 'Expected the second retry to back off to '
                '2 * RECONNECT_INTERVAL');

        service.reset(true);
      });
    });

    group('RT-03: token handling', () {
      test('authCmd is first message sent with valid JWT token', () async {
        await loginClient(client);

        final fakeChannel = FakeWebSocketChannel();
        channelFactory.enqueue(fakeChannel);

        final service = TelemetryWebsocketService(
          client,
          'http://localhost:8080',
          channelFactory: channelFactory.call,
        );

        final subscriber =
            TelemetrySubscriber.createEntityAttributesSubscription(
          telemetryService: service,
          entityId: deviceId('device-1'),
          attributeScope: 'LATEST_TELEMETRY',
        );
        service.subscribe(subscriber);

        await Future.delayed(Duration(milliseconds: 10));

        expect(fakeChannel.sentMessages.isNotEmpty, isTrue);
        final firstMsg =
            jsonDecode(fakeChannel.sentMessages.first as String);
        expect(firstMsg['authCmd'], isNotNull,
            reason: 'First message should contain authCmd');
        expect(firstMsg['authCmd']['token'], isNotNull,
            reason: 'authCmd should contain the JWT token');
        expect(firstMsg['authCmd']['type'], equals('AUTH'));
      });

      test('authCmd carries the API key of an API key client', () async {
        final apiKeyClient =
            ThingsboardClient('http://localhost:8080', apiKey: 'my-api-key');
        apiKeyClient.dio.httpClientAdapter = mockAdapter;

        final fakeChannel = FakeWebSocketChannel();
        channelFactory.enqueue(fakeChannel);

        final service = TelemetryWebsocketService(
          apiKeyClient,
          'http://localhost:8080',
          channelFactory: channelFactory.call,
        );
        service.subscribe(attributesSubscriber(service, 'device-1'));

        await Future.delayed(Duration(milliseconds: 10));

        expect(channelFactory.connectCallCount, equals(1),
            reason: 'The socket opens without a JWT or a token refresh');
        expect(fakeChannel.sentMessages.isNotEmpty, isTrue);
        final firstMsg =
            jsonDecode(fakeChannel.sentMessages.first as String);
        expect(firstMsg['authCmd']['type'], equals('AUTH'));
        expect(firstMsg['authCmd']['apiKey'], equals('my-api-key'));
        expect(firstMsg['authCmd'].containsKey('token'), isFalse);
      });

      test('expired token triggers refreshJwtToken before socket open',
          () async {
        // Login with an expired token
        final expiredToken = createExpiredTestJwt();
        final validToken = createTestJwt();
        final refreshToken = createTestJwt(scope: 'REFRESH_TOKEN');

        // Set up login to give expired token
        mockAdapter.onRoute('/api/auth/login', (req) {
          return ResponseBody.fromString(
            jsonEncode(
                {'token': expiredToken, 'refreshToken': refreshToken}),
            200,
            headers: {'content-type': ['application/json']},
          );
        });
        // Set up token refresh to return valid token
        mockAdapter.onRoute('/api/auth/token', (req) {
          return ResponseBody.fromString(
            jsonEncode({'token': validToken, 'refreshToken': refreshToken}),
            200,
            headers: {'content-type': ['application/json']},
          );
        });

        await client.login(LoginRequest(userName: 'u@test.com', password: 'p'));
        // At this point, the token is expired

        final fakeChannel = FakeWebSocketChannel();
        channelFactory.enqueue(fakeChannel);

        final service = TelemetryWebsocketService(
          client,
          'http://localhost:8080',
          channelFactory: channelFactory.call,
        );

        final subscriber =
            TelemetrySubscriber.createEntityAttributesSubscription(
          telemetryService: service,
          entityId: deviceId('device-1'),
          attributeScope: 'LATEST_TELEMETRY',
        );
        service.subscribe(subscriber);

        // Allow async refresh + socket open
        await Future.delayed(Duration(milliseconds: 50));

        // Token refresh should have been called
        expect(mockAdapter.requestedPaths.contains('/api/auth/token'), isTrue,
            reason: 'Expected token refresh before socket open');

        // Auth cmd should use the refreshed token
        if (fakeChannel.sentMessages.isNotEmpty) {
          final firstMsg =
              jsonDecode(fakeChannel.sentMessages.first as String);
          if (firstMsg['authCmd'] != null) {
            expect(firstMsg['authCmd']['token'], equals(validToken));
          }
        }
      });

      Future<TelemetryWebsocketService> subscribeWithExpiredToken(
          {String? refreshToken}) async {
        mockAdapter.onRoute('/api/auth/login', (req) {
          return ResponseBody.fromString(
            jsonEncode({
              'token': createExpiredTestJwt(),
              'refreshToken':
                  refreshToken ?? createTestJwt(scope: 'REFRESH_TOKEN'),
            }),
            200,
            headers: {'content-type': ['application/json']},
          );
        });
        await client.login(LoginRequest(userName: 'u@test.com', password: 'p'));

        final service = TelemetryWebsocketService(
          client,
          'http://localhost:8080',
          channelFactory: channelFactory.call,
        );
        final subscriber =
            TelemetrySubscriber.createEntityAttributesSubscription(
          telemetryService: service,
          entityId: deviceId('device-1'),
          attributeScope: 'LATEST_TELEMETRY',
        );
        service.subscribe(subscriber);
        await Future.delayed(Duration(milliseconds: 50));
        return service;
      }

      test('unreachable server during refresh keeps the session and retries',
          () async {
        mockAdapter.onRoute(
            '/api/auth/token', (req) => throw SocketException('offline'));

        final service = await subscribeWithExpiredToken();

        expect(client.isAuthenticated(), isTrue);
        expect(client.getRefreshToken(), isNotNull);
        expect(mockAdapter.requestedPaths, isNot(contains('/api/auth/logout')));
        expect(channelFactory.connectCallCount, equals(0));

        await Future.delayed(Duration(milliseconds: RECONNECT_INTERVAL + 100));
        service.reset(true);

        expect(mockAdapter.requestedPaths.where((p) => p == '/api/auth/token'),
            hasLength(greaterThanOrEqualTo(2)),
            reason: 'Expected the refresh to be retried on reconnect');
      });

      test('rejected refresh token during socket open ends the session once',
          () async {
        mockAdapter.onRoute('/api/auth/token', (req) {
          return ResponseBody.fromString(
            jsonEncode({
              'status': 401,
              'errorCode': 11,
              'message': 'Token has expired',
            }),
            401,
            headers: {'content-type': ['application/json']},
          );
        });

        await subscribeWithExpiredToken();

        expect(client.isAuthenticated(), isFalse);
        expect(mockAdapter.requestedPaths, isNot(contains('/api/auth/logout')));
        expect(channelFactory.connectCallCount, equals(0));
      });

      test('expired refresh token during socket open does not open a socket',
          () async {
        await subscribeWithExpiredToken(
            refreshToken:
                createTestJwt(scope: 'REFRESH_TOKEN', expInSeconds: -60));

        expect(client.isAuthenticated(), isFalse);
        expect(mockAdapter.requestedPaths, isNot(contains('/api/auth/token')));
        expect(channelFactory.connectCallCount, equals(0));
      });
    });

    group('RT-04: unsubscribe', () {
      test('unsubscribe sends correct unsubscribe command', () async {
        await loginClient(client);

        final fakeChannel = FakeWebSocketChannel();
        channelFactory.enqueue(fakeChannel);

        final service = TelemetryWebsocketService(
          client,
          'http://localhost:8080',
          channelFactory: channelFactory.call,
        );

        final subscriber =
            TelemetrySubscriber.createEntityAttributesSubscription(
          telemetryService: service,
          entityId: deviceId('device-1'),
          attributeScope: 'LATEST_TELEMETRY',
        );
        service.subscribe(subscriber);
        await Future.delayed(Duration(milliseconds: 10));

        final msgCountBefore = fakeChannel.sentMessages.length;
        service.unsubscribe(subscriber);
        await Future.delayed(Duration(milliseconds: 10));

        // Should have more messages after unsubscribe
        expect(fakeChannel.sentMessages.length, greaterThan(msgCountBefore),
            reason: 'Expected unsubscribe command to be sent');

        // Find unsubscribe command
        bool foundUnsubscribe = false;
        for (final msg in fakeChannel.sentMessages.skip(msgCountBefore)) {
          final decoded = jsonDecode(msg as String);
          if (decoded['cmds'] != null) {
            final cmds = decoded['cmds'] as List;
            for (final c in cmds) {
              if (c['type'] == 'TIMESERIES' && c['unsubscribe'] == true) {
                foundUnsubscribe = true;
              }
            }
          }
        }
        expect(foundUnsubscribe, isTrue,
            reason: 'Expected unsubscribe=true in TIMESERIES command');
      });

      test('unsubscribed subscriber no longer receives messages', () async {
        await loginClient(client);

        final fakeChannel = FakeWebSocketChannel();
        channelFactory.enqueue(fakeChannel);

        final service = TelemetryWebsocketService(
          client,
          'http://localhost:8080',
          channelFactory: channelFactory.call,
        );

        final subscriber =
            TelemetrySubscriber.createEntityAttributesSubscription(
          telemetryService: service,
          entityId: deviceId('device-1'),
          attributeScope: 'LATEST_TELEMETRY',
        );
        service.subscribe(subscriber);
        await Future.delayed(Duration(milliseconds: 10));

        // Get the cmdId
        int? cmdId;
        for (final msg in fakeChannel.sentMessages) {
          final decoded = jsonDecode(msg as String);
          if (decoded['cmds'] != null) {
            final cmds = decoded['cmds'] as List;
            for (final c in cmds) {
              if (c['type'] == 'TIMESERIES') {
                cmdId = c['cmdId'] as int;
              }
            }
          }
        }

        // Unsubscribe
        service.unsubscribe(subscriber);
        await Future.delayed(Duration(milliseconds: 10));

        // Track data stream events after unsubscribe
        int dataCount = 0;
        // Stream may be closed after unsubscribe, so guard with try
        try {
          subscriber.dataStream.listen((_) => dataCount++);
        } catch (_) {}

        // Inject message with old cmdId — should not arrive at subscriber
        // since it was removed from _subscribersMap
        if (cmdId != null) {
          fakeChannel.injectMessage(jsonEncode({
            'subscriptionId': cmdId,
            'data': {'temp': []}
          }));
        }
        await Future.delayed(Duration(milliseconds: 10));
        expect(dataCount, equals(0));
      });
    });

    group('RT-05: idle timeout', () {
      test('idle timer is set when subscriber count drops to 0', () async {
        await loginClient(client);

        final fakeChannel = FakeWebSocketChannel();
        channelFactory.enqueue(fakeChannel);

        final service = TelemetryWebsocketService(
          client,
          'http://localhost:8080',
          channelFactory: channelFactory.call,
        );

        final subscriber =
            TelemetrySubscriber.createEntityAttributesSubscription(
          telemetryService: service,
          entityId: deviceId('device-1'),
          attributeScope: 'LATEST_TELEMETRY',
        );
        service.subscribe(subscriber);
        await Future.delayed(Duration(milliseconds: 10));

        // After unsubscribe, socket should stay open (idle timer not fired yet)
        service.unsubscribe(subscriber);
        await Future.delayed(Duration(milliseconds: 10));

        // Socket should still be open (idle timer fires after 90s, not instantly)
        expect(fakeChannel.closeCode, isNull,
            reason:
                'Socket should not close immediately after last unsubscribe');
      });

      test('new subscription cancels idle timer', () async {
        await loginClient(client);

        final fakeChannel = FakeWebSocketChannel();
        channelFactory.enqueue(fakeChannel);

        final service = TelemetryWebsocketService(
          client,
          'http://localhost:8080',
          channelFactory: channelFactory.call,
        );

        final subscriber1 =
            TelemetrySubscriber.createEntityAttributesSubscription(
          telemetryService: service,
          entityId: deviceId('device-1'),
          attributeScope: 'LATEST_TELEMETRY',
        );
        service.subscribe(subscriber1);
        await Future.delayed(Duration(milliseconds: 10));

        // Unsubscribe — this starts the idle timer
        service.unsubscribe(subscriber1);
        await Future.delayed(Duration(milliseconds: 10));

        // Subscribe again before idle timer fires — should cancel the timer
        final subscriber2 =
            TelemetrySubscriber.createEntityAttributesSubscription(
          telemetryService: service,
          entityId: deviceId('device-2'),
          attributeScope: 'LATEST_TELEMETRY',
        );
        service.subscribe(subscriber2);
        await Future.delayed(Duration(milliseconds: 10));

        // Socket should still be open
        expect(fakeChannel.closeCode, isNull,
            reason: 'Socket should remain open when subscriber re-added');

        service.unsubscribe(subscriber2);
      });

      test('unsubscribing a subscriber twice does not hide the next one',
          () async {
        await loginClient(client);
        fakeAsync((async) {
          final fakeChannel = FakeWebSocketChannel();
          channelFactory.enqueue(fakeChannel);
          final service = TelemetryWebsocketService(
            client,
            'http://localhost:8080',
            channelFactory: channelFactory.call,
          );

          final first = attributesSubscriber(service, 'device-1');
          service.subscribe(first);
          async.flushMicrotasks();
          service.unsubscribe(first);
          service.unsubscribe(first);
          service.subscribe(attributesSubscriber(service, 'device-2'));
          async.flushMicrotasks();
          fakeChannel.injectMessage(jsonEncode({
            'subscriptionId': 2,
            'data': {
              'temperature': [
                [1000, '25.0']
              ]
            }
          }));
          async.flushMicrotasks();
          async.elapse(Duration(milliseconds: WS_IDLE_TIMEOUT * 2));

          expect(fakeChannel.closeCode, isNull,
              reason: 'The socket still has a live subscriber');
          service.reset(true);
        });
      });
    });

    group('RT-06: command queue', () {
      test('commands queue before socket opens and drain on open', () async {
        await loginClient(client);

        // Use a channel that delays its ready future
        final fakeChannel = _DelayedReadyChannel();
        WebSocketChannel delayedFactory(Uri uri) => fakeChannel;

        final service = TelemetryWebsocketService(
          client,
          'http://localhost:8080',
          channelFactory: delayedFactory,
        );

        final subscriber =
            TelemetrySubscriber.createEntityAttributesSubscription(
          telemetryService: service,
          entityId: deviceId('device-1'),
          attributeScope: 'LATEST_TELEMETRY',
        );

        // Subscribe — this queues the command before socket is open
        service.subscribe(subscriber);

        // Immediately: no messages should be sent yet (socket not open)
        expect(fakeChannel.sentMessages.isEmpty, isTrue,
            reason: 'No messages should be sent before socket is ready');

        // Now open the channel (simulate ready)
        fakeChannel.completeReady();
        await Future.delayed(Duration(milliseconds: 10));

        // After opening, queued commands should drain
        expect(fakeChannel.sentMessages.isNotEmpty, isTrue,
            reason: 'Queued commands should drain after socket opens');
      });
    });

    group('RT-07: reconnect backoff and reset (PROD-8863)', () {
      // Opens a socket for a device-1 subscriber and drops it, leaving the
      // service in its reconnect backoff; the next socket is reconnectChannel.
      Future<
          ({
            TelemetryWebsocketService service,
            TelemetrySubscriber dropped,
            FakeWebSocketChannel reconnectChannel,
          })> dropIntoBackoff() async {
        await loginClient(client);
        final firstChannel = FakeWebSocketChannel();
        final reconnectChannel = FakeWebSocketChannel();
        channelFactory.enqueue(firstChannel);
        channelFactory.enqueue(reconnectChannel);
        final service = TelemetryWebsocketService(
          client,
          'http://localhost:8080',
          channelFactory: channelFactory.call,
        );

        final dropped = attributesSubscriber(service, 'device-1');
        service.subscribe(dropped);
        await Future.delayed(Duration(milliseconds: 10));
        firstChannel.simulateDisconnect();
        await Future.delayed(Duration(milliseconds: 10));
        return (
          service: service,
          dropped: dropped,
          reconnectChannel: reconnectChannel,
        );
      }

      test(
          'unsubscribe during reconnect backoff sends nothing for the dropped '
          'connection', () async {
        final (:service, :dropped, :reconnectChannel) = await dropIntoBackoff();

        service.unsubscribe(dropped);
        service.subscribe(attributesSubscriber(service, 'device-2'));
        await Future.delayed(Duration(milliseconds: 10));

        final cmds = sentCmds(reconnectChannel);
        expect(cmds.map((c) => c['entityId']), equals(['device-2']));
        expect(cmds.where((c) => c['unsubscribe'] == true), isEmpty);
        service.reset(true);
      });

      test(
          'a live subscriber keeps the socket open past the idle timeout '
          'after a reconnect', () async {
        final (:service, :dropped, :reconnectChannel) = await dropIntoBackoff();
        fakeAsync((async) {
          service.unsubscribe(dropped);
          service.subscribe(attributesSubscriber(service, 'device-2'));
          async.flushMicrotasks();
          // Only an incoming message arms the idle close; publishing re-cancels it.
          reconnectChannel.injectMessage(jsonEncode({
            'subscriptionId': 1,
            'data': {
              'temperature': [
                [1000, '25.0']
              ]
            }
          }));
          async.flushMicrotasks();
          async.elapse(Duration(milliseconds: WS_IDLE_TIMEOUT * 2));

          expect(reconnectChannel.closeCode, isNull,
              reason: 'The socket still has a live subscriber');
          service.reset(true);
        });
      });

      test(
          'a surviving subscriber and one added during the backoff are both '
          'published on reopen', () async {
        final (:service, :dropped, :reconnectChannel) = await dropIntoBackoff();
        final added = attributesSubscriber(service, 'device-2');
        var droppedReconnects = 0;
        var addedReconnects = 0;
        dropped.reconnectStream.listen((_) => droppedReconnects++);
        added.reconnectStream.listen((_) => addedReconnects++);

        service.subscribe(added);
        await Future.delayed(Duration(milliseconds: 10));

        final cmds = sentCmds(reconnectChannel);
        expect(cmds.map((c) => c['entityId']),
            unorderedEquals(['device-1', 'device-2']));
        expect(cmds.map((c) => c['cmdId']).toSet(), hasLength(2));
        expect(droppedReconnects, equals(1));
        expect(addedReconnects, equals(0),
            reason: 'Only a subscriber from the dropped connection reconnects');
        service.reset(true);
      });

      test('after reset(true) the next subscribe is published on open',
          () async {
        final (:service, :dropped, :reconnectChannel) = await dropIntoBackoff();
        service.unsubscribe(dropped);

        service.reset(true);
        service.subscribe(attributesSubscriber(service, 'device-2'));
        await Future.delayed(Duration(milliseconds: 10));

        expect(sentCmds(reconnectChannel).map((c) => c['entityId']),
            equals(['device-2']));
        service.reset(true);
      });
    });

    group('getTelemetryService integration', () {
      test('getTelemetryService returns a TelemetryService', () {
        final service = client.getTelemetryService();
        expect(service, isA<TelemetryService>());
        expect(service, isA<TelemetryWebsocketService>());
      });

      test('getTelemetryService returns same instance on repeated calls', () {
        final s1 = client.getTelemetryService();
        final s2 = client.getTelemetryService();
        expect(identical(s1, s2), isTrue);
      });

      test('apiEndpoint getter returns the endpoint', () {
        expect(client.apiEndpoint, equals('http://localhost:8080'));
      });
    });
  });
}
