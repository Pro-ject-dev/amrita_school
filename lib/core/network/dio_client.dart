import 'package:amrita_vidhyalayam_teacher/core/config/app_secrets.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'interceptors/auth_interceptor.dart';
import 'interceptors/logger_interceptor.dart';

part 'dio_client.g.dart';

@riverpod
Dio dio(Ref ref) {
  final dio = Dio();

  dio.options.baseUrl = AppSecrets.base_url;
  dio.options.connectTimeout = const Duration(seconds: 5);
  dio.options.receiveTimeout = const Duration(seconds: 3);

  dio.interceptors.addAll([
    AuthInterceptor(),
    LoggerInterceptor(),
  ]);

  return dio;
}
