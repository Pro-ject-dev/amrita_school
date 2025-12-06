import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class LoggerInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    debugPrint('➡️ REQUEST: ${options.method} ${options.uri}');
    debugPrint('Headers: ${options.headers}');
    debugPrint('Query: ${options.queryParameters}');
    if (options.data != null) {
      debugPrint('Body: ${options.data}');
    }
    debugPrint('--------------------------------------------');
    return handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    debugPrint('⬅️ RESPONSE [${response.statusCode}] ${response.requestOptions.uri}');
    debugPrint('Headers: ${response.headers}');

    // 🔥 This prints the real RAW response body
    debugPrint('Body: ${response.toString()}');

    debugPrint('--------------------------------------------');
    return handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    debugPrint('⛔ ERROR: ${err.requestOptions.uri}');
    debugPrint('Message: ${err.message}');
    if (err.response != null) {
      debugPrint('Error Body: ${err.response.toString()}');
    }
    debugPrint('--------------------------------------------');
    return handler.next(err);
  }
}
