import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class AuthInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // TODO: Get token from secure storage or state management
    const String? token = "e77203d2be80bed:2fc7ec3d5bfdfcb"; 
    
    if (token != null) {
      options.headers['Content-Type'] = 'application/json';
      options.headers['Authorization'] = 'Token $token';
    }
    
    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.response?.statusCode == 401) {
      // TODO: Handle token expiration (refresh token or logout)
      debugPrint('Unauthorized: ${err.response?.statusCode}');
    }
    super.onError(err, handler);
  }
}
