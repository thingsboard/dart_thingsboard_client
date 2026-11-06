// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:thingsboard_client/thingsboard_client.dart';

import 'auth_test.dart' show MockHttpClientAdapter, createTestJwt;

ResponseBody jsonResponse(Map<String, dynamic> body, int status) =>
    ResponseBody.fromString(
      jsonEncode(body),
      status,
      headers: {
        'content-type': ['application/json'],
      },
    );

const deviceId = '784f394c-42b6-435a-983c-b7beff2784f9';
const devicePath = '/api/device/$deviceId';

ResponseBody notFound(RequestOptions _) => jsonResponse({
  'status': 404,
  'message': "Device with requested id wasn't found!",
  'errorCode': 32,
}, 404);

ResponseBody serverError(RequestOptions _) =>
    jsonResponse({'status': 500, 'message': 'boom', 'errorCode': 2}, 500);

void main() {
  late MockHttpClientAdapter mockAdapter;
  late ThingsboardClient client;
  late List<ThingsboardError> reportedErrors;

  setUp(() async {
    mockAdapter = MockHttpClientAdapter();
    reportedErrors = [];
    client = ThingsboardClient(
      'http://localhost:8080',
      onError: reportedErrors.add,
    );
    client.dio.httpClientAdapter = mockAdapter;
    await client.setUserFromJwtToken(
      createTestJwt(),
      createTestJwt(scope: 'REFRESH_TOKEN'),
      false,
    );
  });

  group('nullIfNotFound', () {
    test('returns null when a generated API call answers 404', () async {
      mockAdapter.onRoute(devicePath, notFound);

      final device = await nullIfNotFound(
        () => client.getDeviceControllerApi().getDeviceById(deviceId: deviceId),
      );

      expect(device, isNull);
    });

    test('returns the result when the call succeeds', () async {
      mockAdapter.onRoute(
        devicePath,
        (_) => jsonResponse({'name': 'Thermostat'}, 200),
      );

      final device = (await nullIfNotFound(
        () => client.getDeviceControllerApi().getDeviceById(deviceId: deviceId),
      ))?.data;

      expect(device?.name, 'Thermostat');
    });

    test('rethrows the DioException of any other error', () async {
      mockAdapter.onRoute(devicePath, serverError);

      await expectLater(
        nullIfNotFound(
          () =>
              client.getDeviceControllerApi().getDeviceById(deviceId: deviceId),
        ),
        throwsA(
          isA<DioException>().having(
            (e) => e.thingsboardError.errorCode,
            'errorCode',
            ThingsBoardErrorCode.general,
          ),
        ),
      );
    });

    test('returns null for a ThingsboardError 404 of a facade call', () async {
      mockAdapter.onRoute(devicePath, notFound);

      final result = await nullIfNotFound(() => client.get<Object>(devicePath));

      expect(result, isNull);
    });

    test('rethrows a ThingsboardError that is not a 404', () async {
      mockAdapter.onRoute(devicePath, serverError);

      await expectLater(
        nullIfNotFound(() => client.get<Object>(devicePath)),
        throwsA(isA<ThingsboardError>()),
      );
    });

    test('the 404 still reaches onError by default', () async {
      mockAdapter.onRoute(devicePath, notFound);

      await nullIfNotFound(
        () => client.getDeviceControllerApi().getDeviceById(deviceId: deviceId),
      );
      await Future<void>.delayed(Duration.zero);

      expect(reportedErrors, hasLength(1));
    });

    test('ignoreErrors in extra keeps the 404 from onError', () async {
      mockAdapter.onRoute(devicePath, notFound);

      final device = await nullIfNotFound(
        () => client.getDeviceControllerApi().getDeviceById(
          deviceId: deviceId,
          extra: InterceptorConfig(ignoreErrors: true).toExtra(),
        ),
      );
      await Future<void>.delayed(Duration.zero);

      expect(device, isNull);
      expect(reportedErrors, isEmpty);
    });
  });

  group('DioException.thingsboardError', () {
    test('is the ThingsboardError of a server error response', () async {
      mockAdapter.onRoute(devicePath, notFound);

      try {
        await client.getDeviceControllerApi().getDeviceById(deviceId: deviceId);
        fail('expected a DioException');
      } on DioException catch (e) {
        final error = e.thingsboardError;
        expect(error, same(e.error));
        expect(error.errorCode, ThingsBoardErrorCode.itemNotFound);
        expect(error.status, 404);
        expect(error.message, "Device with requested id wasn't found!");
      }
    });

    test('maps a 404 body without errorCode to itemNotFound', () async {
      mockAdapter.onRoute(
        devicePath,
        (_) => jsonResponse({'status': 404, 'message': 'Not found'}, 404),
      );

      final device = await nullIfNotFound(
        () => client.getDeviceControllerApi().getDeviceById(deviceId: deviceId),
      );

      expect(device, isNull);
      try {
        await client.getDeviceControllerApi().getDeviceById(deviceId: deviceId);
        fail('expected a DioException');
      } on DioException catch (e) {
        expect(e.thingsboardError.errorCode, ThingsBoardErrorCode.itemNotFound);
      }
    });

    test('maps a non-JSON 404 response to itemNotFound', () {
      final options = RequestOptions(path: devicePath);
      final e = DioException(
        requestOptions: options,
        response: Response<Object>(
          requestOptions: options,
          statusCode: 404,
          data: '<html>Not Found</html>',
        ),
        type: DioExceptionType.badResponse,
      );

      expect(e.thingsboardError.errorCode, ThingsBoardErrorCode.itemNotFound);
    });

    test('maps a connection error to "Unable to connect"', () {
      final e = DioException(
        requestOptions: RequestOptions(path: devicePath),
        type: DioExceptionType.connectionError,
      );

      final error = e.thingsboardError;

      expect(error.message, 'Unable to connect');
      expect(error.errorCode, ThingsBoardErrorCode.general);
    });

    test('maps an inner error that is not a ThingsboardError', () {
      final e = DioException(
        requestOptions: RequestOptions(path: devicePath),
        error: const FormatException('bad payload'),
      );

      final error = e.thingsboardError;

      expect(error.message, contains('bad payload'));
      expect(error.errorCode, ThingsBoardErrorCode.general);
      expect(error.error, same(e));
    });

    test(
      'maps a 200 response that failed to deserialize to a general error',
      () {
        final options = RequestOptions(path: devicePath);
        final e = DioException(
          requestOptions: options,
          response: Response<Object>(
            requestOptions: options,
            statusCode: 200,
            data: {'unexpected': 'shape'},
          ),
          type: DioExceptionType.unknown,
          error: const FormatException('bad device payload'),
          stackTrace: StackTrace.current,
        );

        final error = e.thingsboardError;

        expect(error.errorCode, ThingsBoardErrorCode.general);
        expect(error.message, contains('bad device payload'));
        expect(error.error, same(e));
      },
    );

    test('maps an error response that did not pass the interceptor', () {
      final options = RequestOptions(path: devicePath);
      final e = DioException(
        requestOptions: options,
        response: Response<Object>(
          requestOptions: options,
          statusCode: 403,
          data: {'status': 403, 'message': 'Forbidden', 'errorCode': 20},
        ),
        type: DioExceptionType.badResponse,
      );

      final error = e.thingsboardError;

      expect(error.errorCode, ThingsBoardErrorCode.permissionDenied);
      expect(error.status, 403);
    });
  });
}
