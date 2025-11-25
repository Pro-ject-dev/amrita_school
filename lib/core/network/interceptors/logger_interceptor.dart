import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class LoggerInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    debugPrint('--> ${options.method.toUpperCase()} ${options.uri}');
    debugPrint('Headers: ${options.headers}');
    debugPrint('QueryParameters: ${options.queryParameters}');
    if (options.data != null) {
      debugPrint('Body: ${options.data}');
    }
    debugPrint('--> END ${options.method.toUpperCase()}');
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    debugPrint('<-- ${response.statusCode} ${response.requestOptions.uri}');
    debugPrint('Headers: ${response.headers}');
    debugPrint('Response: ${response.data}');
    debugPrint('<-- END HTTP');
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    debugPrint('<-- ${err.message} ${err.requestOptions.uri}');
    debugPrint('${err.response != null ? err.response?.data : 'Unknown Error'}');
    debugPrint('<-- End error');
    super.onError(err, handler);
  }
}
