// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:isolate';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:fake_async/fake_async.dart';
import 'package:stream_channel/stream_channel.dart';
import 'package:test/test.dart';
import 'package:thingsboard_client/thingsboard_client.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

String createTestJwt({
  String sub = 'user-id',
  String scope = 'TENANT_ADMIN',
  int expInSeconds = 3600,
  String tenantId = 'tenant-id',
}) {
  final header = base64Url.encode(utf8.encode('{"alg":"HS256","typ":"JWT"}'));
  final payload = base64Url.encode(
    utf8.encode(
      jsonEncode({
        'sub': sub,
        'scopes': [scope],
        'exp': DateTime.now().millisecondsSinceEpoch ~/ 1000 + expInSeconds,
        'iss': 'test',
        'iat': DateTime.now().millisecondsSinceEpoch ~/ 1000,
        'firstName': 'Test',
        'lastName': 'User',
        'enabled': true,
        'isPublic': false,
        'tenantId': tenantId,
      }),
    ),
  );
  return '$header.$payload.fake-signature';
}

String createExpiredTestJwt() {
  final header = base64Url.encode(utf8.encode('{"alg":"HS256","typ":"JWT"}'));
  final payload = base64Url.encode(
    utf8.encode(
      jsonEncode({
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
      }),
    ),
  );
  return '$header.$payload.fake-signature';
}

class MockHttpClientAdapter implements HttpClientAdapter {
  final Map<String, List<FutureOr<ResponseBody> Function(RequestOptions)>>
  _handlers = {};
  final List<String> requestedPaths = [];

  void onRoute(
    String path,
    FutureOr<ResponseBody> Function(RequestOptions) handler,
  ) {
    _handlers.putIfAbsent(path, () => []).add(handler);
  }

  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    requestedPaths.add(options.path);
    final handlers = _handlers[options.path];
    if (handlers != null && handlers.isNotEmpty) {
      final handler = handlers.length > 1 ? handlers.removeAt(0) : handlers[0];
      return await handler(options);
    }
    return ResponseBody.fromString(
      '{"message":"Not found"}',
      404,
      headers: {
        'content-type': ['application/json'],
      },
    );
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

/// A TelemetryService that does nothing, for driving a subscriber directly.
class _NoopTelemetryService implements TelemetryService {
  @override
  void subscribe(TelemetrySubscriber subscriber) {}

  @override
  void update(TelemetrySubscriber subscriber) {}

  @override
  void unsubscribe(TelemetrySubscriber subscriber) {}

  @override
  void reset(bool close) {}
}

Map<String, dynamic> _fixtureJson(String name) =>
    jsonDecode(File('test/fixtures/ws/$name').readAsStringSync())
        as Map<String, dynamic>;

var _isolateComputeCalls = 0;

/// Like Flutter's `compute`: counts its calls and runs [callback] on
/// [message] in another isolate, so both must be sendable.
Future<R> _isolateCompute<Q, R>(TbComputeCallback<Q, R> callback, Q message) {
  _isolateComputeCalls++;
  return Isolate.run(() => callback(message));
}

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

  Future<void> loginClient(ThingsboardClient c, {String? jwtToken}) async {
    final token = jwtToken ?? createTestJwt();
    final refreshToken = createTestJwt(scope: 'REFRESH_TOKEN');
    mockAdapter.onRoute('/api/auth/login', (req) {
      return ResponseBody.fromString(
        jsonEncode({'token': token, 'refreshToken': refreshToken}),
        200,
        headers: {
          'content-type': ['application/json'],
        },
      );
    });
    await c.login(
      LoginRequest(
        (b) => b
          ..username = 'u@test.com'
          ..password = 'p',
      ),
    );
  }

  EntityId deviceId(String id) => DeviceId((b) => b..id = id);

  TelemetrySubscriber attributesSubscriber(
    TelemetryService service,
    String id,
  ) => TelemetrySubscriber.createEntityAttributesSubscription(
    telemetryService: service,
    entityId: deviceId(id),
    attributeScope: 'LATEST_TELEMETRY',
  );

  group('TelemetryWebsocketService', () {
    group('stream routing', () {
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

        await Future.delayed(Duration(milliseconds: 10));

        expect(fakeChannel.sentMessages.isNotEmpty, isTrue);

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
        expect(
          foundSubscription,
          isTrue,
          reason: 'Expected TIMESERIES subscription command to be sent',
        );
      });

      test(
        'inject server message is dispatched to subscriber data stream',
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

          await Future.delayed(Duration(milliseconds: 10));

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

          final dataCompleter = Completer<SubscriptionUpdate>();
          subscriber.dataStream.first.then(dataCompleter.complete);

          final serverMsg = jsonEncode({
            'subscriptionId': cmdId,
            'data': {
              'temperature': [
                [1000, '25.0'],
              ],
            },
          });
          fakeChannel.injectMessage(serverMsg);

          final update = await dataCompleter.future.timeout(
            Duration(seconds: 2),
          );
          expect(update.subscriptionId, equals(cmdId));
          expect(update.data.containsKey('temperature'), isTrue);
        },
      );
    });

    group('reconnect', () {
      test(
        'subscriber stream not closed on disconnect and reconnects',
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

          await Future.delayed(Duration(milliseconds: 10));
          expect(channelFactory.connectCallCount, equals(1));

          final reconnectCompleter = Completer<void>();
          subscriber.reconnectStream.first.then(
            (_) => reconnectCompleter.complete(),
          );

          firstChannel.simulateDisconnect();

          await Future.delayed(Duration(milliseconds: 2200));

          expect(
            channelFactory.connectCallCount,
            equals(2),
            reason: 'Expected reconnect to open a new WebSocket connection',
          );

          expect(
            reconnectCompleter.isCompleted,
            isTrue,
            reason: 'Expected reconnect stream to emit',
          );
        },
      );

      test(
        'failed connect retries after RECONNECT_INTERVAL, then backs off',
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
          await Future.delayed(
            Duration(milliseconds: RECONNECT_INTERVAL + 100),
          );
          expect(
            connectCount,
            equals(2),
            reason: 'Expected the first retry after RECONNECT_INTERVAL',
          );

          await Future.delayed(
            Duration(milliseconds: RECONNECT_INTERVAL + 100),
          );
          expect(
            connectCount,
            equals(2),
            reason:
                'Expected the second retry to back off to '
                '2 * RECONNECT_INTERVAL',
          );

          service.reset(true);
        },
      );
    });

    group('token handling', () {
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
        final firstMsg = jsonDecode(fakeChannel.sentMessages.first as String);
        expect(
          firstMsg['authCmd'],
          isNotNull,
          reason: 'First message should contain authCmd',
        );
        expect(
          firstMsg['authCmd']['token'],
          isNotNull,
          reason: 'authCmd should contain the JWT token',
        );
        expect(firstMsg['authCmd']['type'], equals('AUTH'));
      });

      test('authCmd carries the API key of an API key client', () async {
        final apiKeyClient = ThingsboardClient(
          'http://localhost:8080',
          apiKey: 'my-api-key',
        );
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

        expect(
          channelFactory.connectCallCount,
          equals(1),
          reason: 'The socket opens without a JWT or a token refresh',
        );
        expect(fakeChannel.sentMessages.isNotEmpty, isTrue);
        final firstMsg = jsonDecode(fakeChannel.sentMessages.first as String);
        expect(firstMsg['authCmd']['type'], equals('AUTH'));
        expect(firstMsg['authCmd']['apiKey'], equals('my-api-key'));
        expect(firstMsg['authCmd'].containsKey('token'), isFalse);
      });

      test(
        'expired token triggers refreshJwtToken before socket open',
        () async {
          final expiredToken = createExpiredTestJwt();
          final validToken = createTestJwt();
          final refreshToken = createTestJwt(scope: 'REFRESH_TOKEN');

          mockAdapter.onRoute('/api/auth/login', (req) {
            return ResponseBody.fromString(
              jsonEncode({'token': expiredToken, 'refreshToken': refreshToken}),
              200,
              headers: {
                'content-type': ['application/json'],
              },
            );
          });
          mockAdapter.onRoute('/api/auth/token', (req) {
            return ResponseBody.fromString(
              jsonEncode({'token': validToken, 'refreshToken': refreshToken}),
              200,
              headers: {
                'content-type': ['application/json'],
              },
            );
          });

          await client.login(
            LoginRequest(
              (b) => b
                ..username = 'u@test.com'
                ..password = 'p',
            ),
          );

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

          await Future.delayed(Duration(milliseconds: 50));

          expect(
            mockAdapter.requestedPaths.contains('/api/auth/token'),
            isTrue,
            reason: 'Expected token refresh before socket open',
          );

          if (fakeChannel.sentMessages.isNotEmpty) {
            final firstMsg = jsonDecode(
              fakeChannel.sentMessages.first as String,
            );
            if (firstMsg['authCmd'] != null) {
              expect(firstMsg['authCmd']['token'], equals(validToken));
            }
          }
        },
      );

      Future<TelemetryWebsocketService> subscribeWithExpiredToken({
        String? refreshToken,
      }) async {
        mockAdapter.onRoute('/api/auth/login', (req) {
          return ResponseBody.fromString(
            jsonEncode({
              'token': createExpiredTestJwt(),
              'refreshToken':
                  refreshToken ?? createTestJwt(scope: 'REFRESH_TOKEN'),
            }),
            200,
            headers: {
              'content-type': ['application/json'],
            },
          );
        });
        await client.login(
          LoginRequest(
            (b) => b
              ..username = 'u@test.com'
              ..password = 'p',
          ),
        );

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

      test(
        'unreachable server during refresh keeps the session and retries',
        () async {
          mockAdapter.onRoute(
            '/api/auth/token',
            (req) => throw SocketException('offline'),
          );

          final service = await subscribeWithExpiredToken();

          expect(client.isAuthenticated(), isTrue);
          expect(client.getRefreshToken(), isNotNull);
          expect(
            mockAdapter.requestedPaths,
            isNot(contains('/api/auth/logout')),
          );
          expect(channelFactory.connectCallCount, equals(0));

          await Future.delayed(
            Duration(milliseconds: RECONNECT_INTERVAL + 100),
          );
          service.reset(true);

          expect(
            mockAdapter.requestedPaths.where((p) => p == '/api/auth/token'),
            hasLength(greaterThanOrEqualTo(2)),
            reason: 'Expected the refresh to be retried on reconnect',
          );
        },
      );

      test(
        'rejected refresh token during socket open ends the session once',
        () async {
          mockAdapter.onRoute('/api/auth/token', (req) {
            return ResponseBody.fromString(
              jsonEncode({
                'status': 401,
                'errorCode': 11,
                'message': 'Token has expired',
              }),
              401,
              headers: {
                'content-type': ['application/json'],
              },
            );
          });

          await subscribeWithExpiredToken();

          expect(client.isAuthenticated(), isFalse);
          expect(
            mockAdapter.requestedPaths,
            isNot(contains('/api/auth/logout')),
          );
          expect(channelFactory.connectCallCount, equals(0));
        },
      );

      test(
        'expired refresh token during socket open does not open a socket',
        () async {
          await subscribeWithExpiredToken(
            refreshToken: createTestJwt(
              scope: 'REFRESH_TOKEN',
              expInSeconds: -60,
            ),
          );

          expect(client.isAuthenticated(), isFalse);
          expect(
            mockAdapter.requestedPaths,
            isNot(contains('/api/auth/token')),
          );
          expect(channelFactory.connectCallCount, equals(0));
        },
      );
    });

    group('unsubscribe', () {
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

        expect(
          fakeChannel.sentMessages.length,
          greaterThan(msgCountBefore),
          reason: 'Expected unsubscribe command to be sent',
        );

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
        expect(
          foundUnsubscribe,
          isTrue,
          reason: 'Expected unsubscribe=true in TIMESERIES command',
        );
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

        service.unsubscribe(subscriber);
        await Future.delayed(Duration(milliseconds: 10));

        int dataCount = 0;
        try {
          subscriber.dataStream.listen((_) => dataCount++);
        } catch (_) {}

        // Inject message with old cmdId — should not arrive at subscriber
        // since it was removed from _subscribersMap
        if (cmdId != null) {
          fakeChannel.injectMessage(
            jsonEncode({
              'subscriptionId': cmdId,
              'data': {'temp': []},
            }),
          );
        }
        await Future.delayed(Duration(milliseconds: 10));
        expect(dataCount, equals(0));
      });
    });

    group('idle timeout', () {
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

        service.unsubscribe(subscriber);
        await Future.delayed(Duration(milliseconds: 10));

        expect(
          fakeChannel.closeCode,
          isNull,
          reason: 'Socket should not close immediately after last unsubscribe',
        );
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

        service.unsubscribe(subscriber1);
        await Future.delayed(Duration(milliseconds: 10));

        final subscriber2 =
            TelemetrySubscriber.createEntityAttributesSubscription(
              telemetryService: service,
              entityId: deviceId('device-2'),
              attributeScope: 'LATEST_TELEMETRY',
            );
        service.subscribe(subscriber2);
        await Future.delayed(Duration(milliseconds: 10));

        expect(
          fakeChannel.closeCode,
          isNull,
          reason: 'Socket should remain open when subscriber re-added',
        );

        service.unsubscribe(subscriber2);
      });

      test(
        'unsubscribing a subscriber twice does not hide the next one',
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
            fakeChannel.injectMessage(
              jsonEncode({
                'subscriptionId': 2,
                'data': {
                  'temperature': [
                    [1000, '25.0'],
                  ],
                },
              }),
            );
            async.flushMicrotasks();
            async.elapse(Duration(milliseconds: WS_IDLE_TIMEOUT * 2));

            expect(
              fakeChannel.closeCode,
              isNull,
              reason: 'The socket still has a live subscriber',
            );
            service.reset(true);
          });
        },
      );
    });

    group('command queue', () {
      test('commands queue before socket opens and drain on open', () async {
        await loginClient(client);

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

        service.subscribe(subscriber);

        expect(
          fakeChannel.sentMessages.isEmpty,
          isTrue,
          reason: 'No messages should be sent before socket is ready',
        );

        fakeChannel.completeReady();
        await Future.delayed(Duration(milliseconds: 10));

        expect(
          fakeChannel.sentMessages.isNotEmpty,
          isTrue,
          reason: 'Queued commands should drain after socket opens',
        );
      });
    });

    group('reconnect backoff and reset', () {
      // Opens a socket for a device-1 subscriber and drops it, leaving the
      // service in its reconnect backoff; the next socket is reconnectChannel.
      Future<
        ({
          TelemetryWebsocketService service,
          TelemetrySubscriber dropped,
          FakeWebSocketChannel reconnectChannel,
        })
      >
      dropIntoBackoff() async {
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

      test('unsubscribe during reconnect backoff sends nothing for the dropped '
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

      test('a live subscriber keeps the socket open past the idle timeout '
          'after a reconnect', () async {
        final (:service, :dropped, :reconnectChannel) = await dropIntoBackoff();
        fakeAsync((async) {
          service.unsubscribe(dropped);
          service.subscribe(attributesSubscriber(service, 'device-2'));
          async.flushMicrotasks();
          // Only an incoming message arms the idle close; publishing re-cancels it.
          reconnectChannel.injectMessage(
            jsonEncode({
              'subscriptionId': 1,
              'data': {
                'temperature': [
                  [1000, '25.0'],
                ],
              },
            }),
          );
          async.flushMicrotasks();
          async.elapse(Duration(milliseconds: WS_IDLE_TIMEOUT * 2));

          expect(
            reconnectChannel.closeCode,
            isNull,
            reason: 'The socket still has a live subscriber',
          );
          service.reset(true);
        });
      });

      test('a surviving subscriber and one added during the backoff are both '
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
        expect(
          cmds.map((c) => c['entityId']),
          unorderedEquals(['device-1', 'device-2']),
        );
        expect(cmds.map((c) => c['cmdId']).toSet(), hasLength(2));
        expect(droppedReconnects, equals(1));
        expect(
          addedReconnects,
          equals(0),
          reason: 'Only a subscriber from the dropped connection reconnects',
        );
        service.reset(true);
      });

      test(
        'after reset(true) the next subscribe is published on open',
        () async {
          final (:service, :dropped, :reconnectChannel) =
              await dropIntoBackoff();
          service.unsubscribe(dropped);

          service.reset(true);
          service.subscribe(attributesSubscriber(service, 'device-2'));
          await Future.delayed(Duration(milliseconds: 10));

          expect(
            sentCmds(reconnectChannel).map((c) => c['entityId']),
            equals(['device-2']),
          );
          service.reset(true);
        },
      );
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

  group('WebSocket updates on generated models', () {
    test('tsOffset is applied once per update', () async {
      final subscriber = TelemetrySubscriber(_NoopTelemetryService(), [
        EntityDataCmd(cmdId: 1),
      ]);
      subscriber.setTsOffset(1000);
      final json = _fixtureJson('entity_data_update.json');
      final entityJson = (json['update'] as List).single as Map;
      (entityJson['latest']['ENTITY_FIELD'] as Map)['createdTime'] = {
        'ts': 1793807289284,
        'value': '1764077525869',
      };
      final message =
          parseWebsocketDataMessage(jsonEncode(json)) as EntityDataUpdate;
      final received = <EntityDataUpdate>[];
      subscriber.entityDataStream.listen(received.add);

      subscriber.onCmdUpdate(message);
      subscriber.onCmdUpdate(message);
      await Future<void>.delayed(Duration.zero);

      expect(received, hasLength(2));
      for (final update in received) {
        final entity = update.update!.single;
        expect(entity.timeseries!['temperature']!.map((v) => v.ts), [
          1767620190490,
          1764927907792,
          1764077526869,
        ]);
        expect(
          entity.latest!['TIME_SERIES']!['temperature']!.ts,
          1767620190490,
        );
        expect(entity.latest!['ATTRIBUTE']!['active']!.ts, 1767620791344);
        final createdTime = entity.latest!['ENTITY_FIELD']!['createdTime']!;
        expect(createdTime.ts, 1793807290284);
        expect(createdTime.value, '1764077526869');
        expect(entity.latest!['ENTITY_FIELD']!['name']!.value, 'Device A');
      }
      // The received message itself is left as it came from the server.
      expect(
        message.update!.single.timeseries!['temperature']!.first.ts,
        1767620189490,
      );
    });

    test('alarm tsOffset shifts the alarm times and time-valued fields, '
        'but not unset (0) ones', () {
      final json = _fixtureJson('alarm_data_update.json');
      final alarmJson = (json['data']['data'] as List).first as Map;
      (alarmJson['latest']['ALARM_FIELD'] ??= {})
        ..['startTime'] = {'ts': 1, 'value': '1764077525869'}
        ..['ackTime'] = {'ts': 0, 'value': '0'};
      final message =
          parseWebsocketDataMessage(jsonEncode(json)) as AlarmDataUpdate;
      final alarm = message.withTsOffset(1000).data!.data!.first;
      expect(alarm.createdTime, 1764077527497);
      expect(alarm.endTs, 1767620191121);
      expect(alarm.ackTs, 0);
      expect(alarm.clearTs, 0);
      expect(
        alarm.latest!['ALARM_FIELD']!['startTime']!.value,
        '1764077526869',
      );
      expect(alarm.latest!['ALARM_FIELD']!['startTime']!.ts, 1001);
      expect(alarm.latest!['ALARM_FIELD']!['ackTime']!.ts, 0);
      expect(alarm.latest!['ALARM_FIELD']!['ackTime']!.value, '0');
      expect(alarm.latest!['ENTITY_FIELD']!['name']!.value, 'Device A');
      expect(message.data!.data!.first.createdTime, 1764077526497);
    });

    test('unknown enum values in updates decode to unknownDefaultOpenApi', () {
      final entityJson = _fixtureJson('entity_data_update.json');
      ((entityJson['update'] as List).single as Map)['entityId']['entityType'] =
          'FUTURE_TYPE';
      final entityUpdate =
          parseWebsocketDataMessage(jsonEncode(entityJson)) as EntityDataUpdate;
      final entityId = entityUpdate.update!.single.entityId!;
      expect(entityId.entityType, EntityType.unknownDefaultOpenApi);
      expect(entityId.id, '434deb10-c3cc-11f0-ba29-557ae2ab3d6a');

      final alarmJson = _fixtureJson('alarm_data_update.json');
      ((alarmJson['data']['data'] as List).first as Map)['severity'] = 'FUTURE';
      final alarmUpdate =
          parseWebsocketDataMessage(jsonEncode(alarmJson)) as AlarmDataUpdate;
      expect(
        alarmUpdate.data!.data!.first.severity,
        AlarmSeverity.unknownDefaultOpenApi,
      );
    });

    test('resubscribe after reconnect sends identical command JSON', () async {
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
      final subscriber = TelemetrySubscriber(service, [
        EntityDataCmd(
          query: EntityDataQuery(
            (b) => b
              ..entityFilter = EntityTypeFilter(
                (f) => f..entityType = EntityType.DEVICE,
              )
              ..pageLink.pageSize = 10
              ..entityFields.add(
                EntityKey(
                  (k) => k
                    ..type = EntityKeyType.ENTITY_FIELD
                    ..key = 'name',
                ),
              ),
          ),
          latestCmd: LatestValueCmd(
            keys: [
              EntityKey(
                (k) => k
                  ..type = EntityKeyType.TIME_SERIES
                  ..key = 'temperature',
              ),
            ],
          ),
        ),
      ]);
      service.subscribe(subscriber);
      await Future.delayed(Duration(milliseconds: 10));
      firstChannel.simulateDisconnect();
      await Future.delayed(Duration(milliseconds: RECONNECT_INTERVAL + 200));

      final before = sentCmds(firstChannel);
      final after = sentCmds(secondChannel);
      expect(before, hasLength(1));
      expect(before.single['type'], 'ENTITY_DATA');
      expect(jsonEncode(after), jsonEncode(before));
      service.reset(true);
    });

    test('parseWebsocketDataMessage works in a fresh isolate', () async {
      for (final name in [
        'entity_data_update.json',
        'alarm_data_update.json',
        'notifications_update.json',
        'subscription_update.json',
      ]) {
        final raw = File('test/fixtures/ws/$name').readAsStringSync();
        final message = await Isolate.run(() => parseWebsocketDataMessage(raw));
        expect(message, isA<WebsocketDataMsg>(), reason: name);
        if (message is EntityDataUpdate) {
          expect(
            message.update!.single.entityId!.id,
            '434deb10-c3cc-11f0-ba29-557ae2ab3d6a',
          );
        } else if (message is AlarmDataUpdate) {
          expect(message.data!.data!.first.severity, AlarmSeverity.CRITICAL);
        } else if (message is NotificationsUpdate) {
          expect(message.notifications!.first.recipientId, isA<UserId>());
        }
      }
    });

    test(
      'attributeDataStream accumulates updates without mutating previous lists',
      () async {
        final subscriber =
            TelemetrySubscriber.createEntityAttributesSubscription(
              telemetryService: _NoopTelemetryService(),
              entityId: deviceId('device-1'),
              attributeScope: 'SHARED_SCOPE',
            );
        expect(
          subscriber.subscriptionCommands.single.toJson()['scope'],
          'SHARED_SCOPE',
        );
        final lists = <List<AttributeData>>[];
        subscriber.attributeDataStream.listen(lists.add);

        subscriber.onData(
          SubscriptionUpdate.fromJson({
            'subscriptionId': 1,
            'data': {
              'a': [
                [1000, '1'],
              ],
            },
          }),
        );
        subscriber.onData(
          SubscriptionUpdate.fromJson({
            'subscriptionId': 1,
            'data': {
              'a': [
                [2000, '2'],
              ],
              'b': [
                [2000, 'x'],
              ],
            },
          }),
        );
        await Future<void>.delayed(Duration.zero);

        expect(lists, hasLength(2));
        expect(lists[0], hasLength(1));
        expect(lists[0].single.key, 'a');
        expect(lists[0].single.lastUpdateTs, 1000);
        expect(lists[0].single.value!.value, '1');
        expect(lists[1].map((e) => e.key), ['a', 'b']);
        expect(lists[1][0].lastUpdateTs, 2000);
        expect(lists[1][0].value!.value, '2');
        expect(lists[1][1].value!.value, 'x');
      },
    );

    test(
      'a notification update is inserted first, trimmed to the limit',
      () async {
        final subscriber = TelemetrySubscriber(_NoopTelemetryService(), [
          UnreadSubCmd(cmdId: 3, limit: 2),
        ]);
        final received = <NotificationsUpdate>[];
        subscriber.notificationStream.listen(received.add);

        final json = _fixtureJson('notifications_update.json');
        subscriber.onCmdUpdate(
          parseWebsocketDataMessage(jsonEncode(json)) as NotificationsUpdate,
        );
        final newest = Map.of(
          (json['notifications'] as List).first as Map<String, dynamic>,
        );
        newest['id'] = {'entityType': 'NOTIFICATION', 'id': 'newest'};
        newest['subject'] = 'Newest';
        json['notifications'] = null;
        json['update'] = newest;
        json['totalUnreadCount'] = 235;
        subscriber.onCmdUpdate(
          parseWebsocketDataMessage(jsonEncode(json)) as NotificationsUpdate,
        );
        await Future<void>.delayed(Duration.zero);

        expect(received, hasLength(2));
        final last = subscriber.lastUpdatedNotification!;
        expect(received.last, same(last));
        expect(last.notifications, isA<List<Notification>>());
        expect(last.notifications!.map((n) => n.id!.id), [
          'newest',
          '74c7b4d0-d859-11f1-b743-55278f64f06e',
        ]);
        expect(last.notifications!.first.subject, 'Newest');
      },
    );

    test('an unknown attribute scope is rejected', () {
      expect(
        () => TelemetrySubscriber.createEntityAttributesSubscription(
          telemetryService: _NoopTelemetryService(),
          entityId: deviceId('device-1'),
          attributeScope: 'NO_SUCH_SCOPE',
        ),
        throwsArgumentError,
      );
    });

    test('EntityDataCmd with an alias entity id', () {
      final cmd = EntityDataCmd(
        cmdId: 1,
        query: EntityDataQuery(
          (b) => b
            ..entityFilter = SingleEntityFilter(
              (f) => f..singleEntity.entityType = 'CURRENT_USER',
            )
            ..pageLink.pageSize = 1,
        ),
      );
      final json = jsonDecode(jsonEncode(cmd.toJson()));
      expect(json['query']['entityFilter'], {
        'type': 'singleEntity',
        'singleEntity': {'entityType': 'CURRENT_USER'},
      });
    });
  });

  group('WebSocket update routing', () {
    /// An attribute subscriber and an entity-data subscriber on one opened
    /// service, with the cmdIds they were given.
    Future<
      ({
        TelemetryWebsocketService service,
        FakeWebSocketChannel channel,
        TelemetrySubscriber attributes,
        TelemetrySubscriber entityData,
        int attributesCmdId,
        int entityDataCmdId,
      })
    >
    openTwoSubscribers(ThingsboardClient c) async {
      await loginClient(c);
      final channel = FakeWebSocketChannel();
      channelFactory.enqueue(channel);
      final service = TelemetryWebsocketService(
        c,
        'http://localhost:8080',
        channelFactory: channelFactory.call,
      );
      final attributes = attributesSubscriber(service, 'device-1');
      final entityData = TelemetrySubscriber(service, [
        EntityDataCmd(
          query: EntityDataQuery(
            (b) => b
              ..entityFilter = EntityTypeFilter(
                (f) => f..entityType = EntityType.DEVICE,
              )
              ..pageLink.pageSize = 10,
          ),
        ),
      ]);
      attributes.subscribe();
      entityData.subscribe();
      await Future<void>.delayed(Duration(milliseconds: 10));
      final cmds = sentCmds(channel);
      return (
        service: service,
        channel: channel,
        attributes: attributes,
        entityData: entityData,
        attributesCmdId:
            cmds.singleWhere((c) => c['type'] == 'TIMESERIES')['cmdId'] as int,
        entityDataCmdId:
            cmds.singleWhere((c) => c['type'] == 'ENTITY_DATA')['cmdId'] as int,
      );
    }

    test("updates reach only their own subscriber's parser", () async {
      final s = await openTwoSubscribers(client);
      final attributeData = <SubscriptionUpdate>[];
      final attributeEntityData = <EntityDataUpdate>[];
      final entityDataData = <SubscriptionUpdate>[];
      final entityDataUpdates = <EntityDataUpdate>[];
      s.attributes.dataStream.listen(attributeData.add);
      s.attributes.entityDataStream.listen(attributeEntityData.add);
      s.entityData.dataStream.listen(entityDataData.add);
      s.entityData.entityDataStream.listen(entityDataUpdates.add);

      final subscriptionJson = _fixtureJson('subscription_update.json')
        ..['subscriptionId'] = s.attributesCmdId;
      final entityDataJson = _fixtureJson('entity_data_update.json')
        ..['cmdId'] = s.entityDataCmdId;
      s.channel.injectMessage(jsonEncode(subscriptionJson));
      s.channel.injectMessage(jsonEncode(entityDataJson));
      await Future<void>.delayed(Duration(milliseconds: 10));

      expect(attributeData, hasLength(1));
      expect(attributeData.single.subscriptionId, s.attributesCmdId);
      expect(attributeData.single.data['active']!.single.value, 'false');
      expect(attributeEntityData, isEmpty);
      expect(entityDataData, isEmpty);
      expect(entityDataUpdates, hasLength(1));
      expect(entityDataUpdates.single.cmdId, s.entityDataCmdId);
      expect(
        entityDataUpdates.single.update!.single.entityId!.id,
        '434deb10-c3cc-11f0-ba29-557ae2ab3d6a',
      );
      s.service.reset(true);
    });

    test('updates still reach the subscribers after a reconnect', () async {
      final s = await openTwoSubscribers(client);
      final reconnectChannel = FakeWebSocketChannel();
      channelFactory.enqueue(reconnectChannel);
      final attributeData = <SubscriptionUpdate>[];
      final entityDataUpdates = <EntityDataUpdate>[];
      s.attributes.dataStream.listen(attributeData.add);
      s.entityData.entityDataStream.listen(entityDataUpdates.add);

      s.channel.simulateDisconnect();
      // The first reconnect attempt waits RECONNECT_INTERVAL.
      for (var i = 0; i < 300 && sentCmds(reconnectChannel).length < 2; i++) {
        await Future<void>.delayed(Duration(milliseconds: 20));
      }
      final cmds = sentCmds(reconnectChannel);
      final attributesCmdId =
          cmds.singleWhere((c) => c['type'] == 'TIMESERIES')['cmdId'] as int;
      final entityDataCmdId =
          cmds.singleWhere((c) => c['type'] == 'ENTITY_DATA')['cmdId'] as int;

      reconnectChannel.injectMessage(
        jsonEncode(
          _fixtureJson('subscription_update.json')
            ..['subscriptionId'] = attributesCmdId,
        ),
      );
      reconnectChannel.injectMessage(
        jsonEncode(
          _fixtureJson('entity_data_update.json')..['cmdId'] = entityDataCmdId,
        ),
      );
      await Future<void>.delayed(Duration(milliseconds: 10));

      expect(attributeData, hasLength(1));
      expect(attributeData.single.subscriptionId, attributesCmdId);
      expect(entityDataUpdates, hasLength(1));
      expect(entityDataUpdates.single.cmdId, entityDataCmdId);
      s.service.reset(true);
    });

    test('an update for an unknown subscription is ignored', () async {
      final s = await openTwoSubscribers(client);
      final attributeData = <SubscriptionUpdate>[];
      final entityDataUpdates = <EntityDataUpdate>[];
      s.attributes.dataStream.listen(attributeData.add);
      s.entityData.entityDataStream.listen(entityDataUpdates.add);
      final unknownId = s.entityDataCmdId + 100;

      s.channel.injectMessage(
        jsonEncode(
          _fixtureJson('subscription_update.json')
            ..['subscriptionId'] = unknownId,
        ),
      );
      s.channel.injectMessage(
        jsonEncode(
          _fixtureJson('entity_data_update.json')..['cmdId'] = unknownId,
        ),
      );
      s.channel.injectMessage(
        jsonEncode(
          _fixtureJson('notifications_update.json')..['cmdId'] = unknownId,
        ),
      );
      // A known subscription still gets its updates afterwards.
      s.channel.injectMessage(
        jsonEncode(
          _fixtureJson('subscription_update.json')
            ..['subscriptionId'] = s.attributesCmdId,
        ),
      );
      await Future<void>.delayed(Duration(milliseconds: 10));

      expect(entityDataUpdates, isEmpty);
      expect(attributeData, hasLength(1));
      expect(attributeData.single.subscriptionId, s.attributesCmdId);
      s.service.reset(true);
    });

    test('parsing runs through computeFunc', () async {
      _isolateComputeCalls = 0;
      final isolateClient = ThingsboardClient(
        'http://localhost:8080',
        computeFunc: _isolateCompute,
      );
      isolateClient.dio.httpClientAdapter = mockAdapter;
      final s = await openTwoSubscribers(isolateClient);
      final attributeData = <SubscriptionUpdate>[];
      final entityDataUpdates = <EntityDataUpdate>[];
      s.attributes.dataStream.listen(attributeData.add);
      s.entityData.entityDataStream.listen(entityDataUpdates.add);
      final callsBefore = _isolateComputeCalls;

      s.channel.injectMessage(
        jsonEncode(
          _fixtureJson('subscription_update.json')
            ..['subscriptionId'] = s.attributesCmdId,
        ),
      );
      s.channel.injectMessage(
        jsonEncode(
          _fixtureJson('entity_data_update.json')
            ..['cmdId'] = s.entityDataCmdId,
        ),
      );
      s.channel.injectMessage(
        jsonEncode(
          _fixtureJson('entity_data_update.json')
            ..['cmdId'] = s.entityDataCmdId + 100,
        ),
      );
      // Isolates take a while to start: wait for all three parses.
      for (var i = 0; i < 500; i++) {
        if (attributeData.isNotEmpty && entityDataUpdates.isNotEmpty) break;
        await Future<void>.delayed(Duration(milliseconds: 10));
      }
      await Future<void>.delayed(Duration(milliseconds: 100));

      expect(_isolateComputeCalls - callsBefore, 3);
      expect(attributeData, hasLength(1));
      expect(entityDataUpdates, hasLength(1));
      expect(
        entityDataUpdates.single.update!.single.entityId!.id,
        '434deb10-c3cc-11f0-ba29-557ae2ab3d6a',
      );
      s.service.reset(true);
    });
  });
}
