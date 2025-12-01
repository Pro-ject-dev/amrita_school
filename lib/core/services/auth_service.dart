

import 'dart:developer';
import 'package:aad_oauth/aad_oauth.dart';
import 'package:aad_oauth/model/config.dart';
import 'package:amrita_vidhyalayam_teacher/main.dart';

import 'package:dio/dio.dart';
import 'package:jwt_decode/jwt_decode.dart';


class AuthService {
   static const String graphBaseUrl = 'https://graph.microsoft.com/v1.0';
  late final AadOAuth _oauth;
  late final Dio dio;
  AuthService({
    required String clientId,
    required String redirectUri,
    
    String? tenant,
  }) {
    final config = Config(
      tenant: tenant ?? 'common',
      clientId: clientId,
      scope: 'openid profile email User.Read offline_access',
      redirectUri: redirectUri,
      navigatorKey: navigatorKey,
    );
    
    _oauth = AadOAuth(config);
  }

  Future<Map<String, dynamic>> login() async {
    try {
      await _oauth.login();
      final accessToken = await _oauth.getAccessToken();
      
      if (accessToken == null || accessToken.isEmpty) {
        return {
          'isCancel':true
        };
      }

      return {
        'accessToken': accessToken,
        'isAuthenticated': true,
      };
    } catch (e) {
      log(e.toString());
      throw Exception('Login failed: ${e.toString()}');
    }
  }

  Future<void> logout() async {
    try {
      await _oauth.logout();
    } catch (e) {
      throw Exception('Logout failed: ${e.toString()}');
    }
  }

  Future<String?> getAccessToken() async {
    try {
      return await _oauth.getAccessToken();
    } catch (e) {
      return null;
    }
  }

  Future<bool> isAuthenticated() async {
    try {
      final token = await getAccessToken();
      return token != null && token.isNotEmpty;
    } catch (e) {
      return false;
    }
  }

  Future<String> getEmail() async {
    try {
      final accessToken = await getAccessToken();
      if (accessToken == null || accessToken.isEmpty) {
        throw Exception('No access token available');
      }
      final decodedToken = Jwt.parseJwt(accessToken);
      return decodedToken["upn"];
    } catch (e) {
      log('Error getting user info from token: ${e.toString()}');
      throw Exception('Error getting user info from token: ${e.toString()}');
    }
  }
}