import 'dart:convert';
import 'package:dio/dio.dart';

class HttpLogInterceptor extends InterceptorsWrapper {
  @override
  Future onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
      print('Request => ${options.path}');
      print('Header => ${options.headers}');
      print('Query => ${json.encode(options.queryParameters)}');
      if (options.data != null) {
        if (options.data is FormData) {
          print('FormData => ${(options.data as FormData).fields}');
        } else {
          print('Body => ${options.data}');
        }
      }
    handler.next(options);
  }

  @override
  Future onResponse(
      Response response, ResponseInterceptorHandler handler) async {
    if (response != null) {
      print('Result Header => ${response.headers.toString()}');
      print('Result Data => ${response.toString()}');
    }
    handler.next(response);
  }

  @override
  Future onError(DioError err, ErrorInterceptorHandler handler) async {
    print('Error => ${err.toString()}');
    print('Error Info => ${err.response?.toString() ?? ""}');
    handler.next(err);
  }
}
