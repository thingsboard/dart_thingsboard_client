// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:thingsboard_client/src/error/thingsboard_error.dart';

void main() {
  group('ThingsboardError', () {
    test('fromJson deserializes message, status, and errorCode', () {
      final json = {'message': 'Not Found', 'status': 404, 'errorCode': 32};
      final error = ThingsboardError.fromJson(json);
      expect(error.message, equals('Not Found'));
      expect(error.status, equals(404));
      expect(error.errorCode, equals(ThingsBoardErrorCode.itemNotFound));
    });

    test('fromJson with authentication error', () {
      final json = {
        'message': 'Authentication failed',
        'status': 401,
        'errorCode': 10,
      };
      final error = ThingsboardError.fromJson(json);
      expect(error.errorCode, equals(ThingsBoardErrorCode.authentication));
      expect(error.status, equals(401));
    });

    test('parseMessage returns message field when present', () {
      final json = {'message': 'Custom message', 'status': 500, 'errorCode': 2};
      expect(ThingsboardError.parseMessage(json), equals('Custom message'));
    });

    test('parseMessage falls back to error field when message is null', () {
      final json = {'error': 'Internal Server Error', 'status': 500};
      expect(
        ThingsboardError.parseMessage(json),
        equals('Internal Server Error'),
      );
    });

    test('parseMessage uses error + path when both present', () {
      final json = {
        'error': 'Not Found',
        'path': '/api/devices/123',
        'status': 404,
      };
      expect(
        ThingsboardError.parseMessage(json),
        equals("Path '/api/devices/123': Not Found"),
      );
    });

    test('parseMessage returns Unknown error when no message or error', () {
      final json = {'status': 500};
      expect(ThingsboardError.parseMessage(json), equals('Unknown error'));
    });

    test('toString includes message, errorCode, status', () {
      final error = ThingsboardError(
        message: 'Test',
        errorCode: ThingsBoardErrorCode.general,
        status: 500,
      );
      final str = error.toString();
      expect(str, contains('Test'));
      expect(str, contains('500'));
    });

    test('implements Exception', () {
      final error = ThingsboardError(message: 'fail');
      expect(error, isA<Exception>());
    });
  });

  group('ThingsBoardErrorCode.fromInt', () {
    test('maps 2 to general', () {
      expect(
        ThingsBoardErrorCode.fromInt(2),
        equals(ThingsBoardErrorCode.general),
      );
    });

    test('maps 10 to authentication', () {
      expect(
        ThingsBoardErrorCode.fromInt(10),
        equals(ThingsBoardErrorCode.authentication),
      );
    });

    test('maps 11 to jwtTokenExpired', () {
      expect(
        ThingsBoardErrorCode.fromInt(11),
        equals(ThingsBoardErrorCode.jwtTokenExpired),
      );
    });

    test('maps 12 to tenantTrialExpired', () {
      expect(
        ThingsBoardErrorCode.fromInt(12),
        equals(ThingsBoardErrorCode.tenantTrialExpired),
      );
    });

    test('maps 15 to credentialsExpired', () {
      expect(
        ThingsBoardErrorCode.fromInt(15),
        equals(ThingsBoardErrorCode.credentialsExpired),
      );
    });

    test('maps 20 to permissionDenied', () {
      expect(
        ThingsBoardErrorCode.fromInt(20),
        equals(ThingsBoardErrorCode.permissionDenied),
      );
    });

    test('maps 30 to invalidArguments', () {
      expect(
        ThingsBoardErrorCode.fromInt(30),
        equals(ThingsBoardErrorCode.invalidArguments),
      );
    });

    test('maps 31 to badRequestParams', () {
      expect(
        ThingsBoardErrorCode.fromInt(31),
        equals(ThingsBoardErrorCode.badRequestParams),
      );
    });

    test('maps 32 to itemNotFound', () {
      expect(
        ThingsBoardErrorCode.fromInt(32),
        equals(ThingsBoardErrorCode.itemNotFound),
      );
    });

    test('maps 33 to tooManyRequests', () {
      expect(
        ThingsBoardErrorCode.fromInt(33),
        equals(ThingsBoardErrorCode.tooManyRequests),
      );
    });

    test('maps 34 to tooManyUpdates', () {
      expect(
        ThingsBoardErrorCode.fromInt(34),
        equals(ThingsBoardErrorCode.tooManyUpdates),
      );
    });

    test('maps 45 to passwordViolation', () {
      expect(
        ThingsBoardErrorCode.fromInt(45),
        equals(ThingsBoardErrorCode.passwordViolation),
      );
    });

    test('maps 46 to database', () {
      expect(
        ThingsBoardErrorCode.fromInt(46),
        equals(ThingsBoardErrorCode.database),
      );
    });

    test('maps unknown integer to general (fallback)', () {
      expect(
        ThingsBoardErrorCode.fromInt(999),
        equals(ThingsBoardErrorCode.general),
      );
    });

    test('maps 0 to general (fallback)', () {
      expect(
        ThingsBoardErrorCode.fromInt(0),
        equals(ThingsBoardErrorCode.general),
      );
    });
  });

  group('toThingsboardError', () {
    final requestOptions = RequestOptions(path: '/api/auth/user');

    test(
      'maps a connection timeout with no inner error to Unable to connect',
      () {
        final error = toThingsboardError(
          DioException.connectionTimeout(
            timeout: const Duration(seconds: 20),
            requestOptions: requestOptions,
          ),
        );
        expect(error.message, equals('Unable to connect'));
        expect(error.errorCode, equals(ThingsBoardErrorCode.general));
      },
    );

    test('maps a connection error to Unable to connect', () {
      final error = toThingsboardError(
        DioException.connectionError(
          reason: 'Connection failed',
          requestOptions: requestOptions,
        ),
      );
      expect(error.message, equals('Unable to connect'));
    });

    test('maps a SocketException to Unable to connect', () {
      final error = toThingsboardError(
        DioException(
          requestOptions: requestOptions,
          error: const SocketException('Connection refused'),
        ),
      );
      expect(error.message, equals('Unable to connect'));
    });

    test('keeps the server message and status for a bad response', () {
      final error = toThingsboardError(
        DioException.badResponse(
          statusCode: 404,
          requestOptions: requestOptions,
          response: Response(
            requestOptions: requestOptions,
            statusCode: 404,
            data: {
              'message': 'Device not found',
              'status': 404,
              'errorCode': 32,
            },
          ),
        ),
      );
      expect(error.message, equals('Device not found'));
      expect(error.status, equals(404));
      expect(error.errorCode, equals(ThingsBoardErrorCode.itemNotFound));
    });

    test('keeps its own message for a receive timeout', () {
      final error = toThingsboardError(
        DioException.receiveTimeout(
          timeout: const Duration(seconds: 30),
          requestOptions: requestOptions,
        ),
      );
      expect(error.message, isNot(equals('Unable to connect')));
    });
  });

  group('isUnauthorized', () {
    test('is true for HTTP 401', () {
      expect(ThingsboardError(status: 401).isUnauthorized, isTrue);
    });

    test('is true for authentication error codes without a status', () {
      expect(
        ThingsboardError(
          errorCode: ThingsBoardErrorCode.authentication,
        ).isUnauthorized,
        isTrue,
      );
      expect(
        ThingsboardError(
          errorCode: ThingsBoardErrorCode.jwtTokenExpired,
        ).isUnauthorized,
        isTrue,
      );
    });

    test('is false for 403, 5xx and connection errors', () {
      expect(
        ThingsboardError(
          status: 403,
          errorCode: ThingsBoardErrorCode.permissionDenied,
        ).isUnauthorized,
        isFalse,
      );
      expect(
        ThingsboardError(
          status: 502,
          errorCode: ThingsBoardErrorCode.general,
        ).isUnauthorized,
        isFalse,
      );
      expect(
        ThingsboardError(
          message: 'Unable to connect',
          errorCode: ThingsBoardErrorCode.general,
        ).isUnauthorized,
        isFalse,
      );
    });
  });
}
