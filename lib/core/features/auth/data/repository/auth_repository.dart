import 'dart:developer';
import 'package:amrita_vidhyalayam_teacher/core/features/auth/data/models/validation_model.dart';
import 'package:dio/dio.dart';

import '../../../../services/auth_service.dart';

class AuthRepository {
  final AuthService authService;
  final Dio dio;


  AuthRepository(this.authService, this.dio);


  Future<Map<String,dynamic>> login() async {
    try {
      final result = await authService.login();
      final accessToken = await result['accessToken'] as String;
      final mail = await authService.getEmail();
      return {"success":true,"mail":mail};
    } on Exception catch (e) {
      throw Exception('Repository login failed: ${e.toString()}');
    } catch (e) {
      throw Exception('Unexpected login error: ${e.toString()}');
    }
  }

  Future<void> logout() async {
    try {
      await authService.logout();
    } on Exception catch (e) {
      throw Exception('Repository logout failed: ${e.toString()}');
    } catch (e) {
      throw Exception('Unexpected logout error: ${e.toString()}');
    }
  }

  Future<bool> checkAuthStatus() async {
    try {
      return await authService.isAuthenticated();
    } catch (e) {
      return false;
    }
  }

  // Future<bool> getCurrentUser() async {
  //   try {
  //     final accessToken = await authService.getAccessToken();
  //     if (accessToken == null || accessToken.isEmpty) {
  //       throw Exception('No access token available');
  //     }
  //     final userProfile = await authService.getEmail();
  //     return true;
  //   } on Exception catch (e) {
  //     throw Exception('Failed to get current user: ${e.toString()}');
  //   } catch (e) {
  //     throw Exception('Unexpected error getting user: ${e.toString()}');
  //   }
  // }

  Future<ValidationModel> isValidUser({mail}) async {
    try {
      final response = await dio.post(
        '/validate_user',
        data: {"user": mail},
      );
      await Future.delayed(const Duration(seconds: 1));
      return ValidationModel.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }
}
