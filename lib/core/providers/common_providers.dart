
import 'package:amrita_vidhyalayam_teacher/core/services/auth_service.dart';
import 'package:amrita_vidhyalayam_teacher/core/services/storage_serice.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../main.dart';
import '../features/auth/data/repository/auth_repository.dart' show AuthRepository;
import '../features/auth/presentation/viewmodel/auth_state.dart' show AuthState, AuthStatePatterns;
import '../features/auth/presentation/viewmodel/auth_viewmodel.dart' show AuthViewModel;
import '../network/dio_client.dart';


final isDarkModeProvider = StateProvider<bool>((ref) => false);

final authConfigProvider = Provider<Map<String, dynamic>>((ref) {
  return {
    "tenant": "organizations",
    "clientId": "9a5b1112-36b9-44df-990a-36df4a33c1a5",
    "scope": "openid profile offline_access",
    "redirectUri":"msauth://com.myamrita.studentportal/Kf5iVwblzspMBfM3TkNL2q6YOJs%3D",
    "navigatorKey": navigatorKey,
    "webUseRedirect": false,
    "loader": Center(child: CircularProgressIndicator()),
    "postLogoutRedirectUri": 'http://your_base_url/logout',
  };
});

/// Auth Service provider
final authServiceProvider = Provider<AuthService>((ref) {
  final config = ref.watch(authConfigProvider);
  return AuthService(
    clientId: config['clientId']!,
    redirectUri: config['redirectUri']!,
    tenant: config['tenant'],
    
  );
});

/// Auth Repository provider
final authRepositoryProvider = Provider<AuthRepository>((ref) {
  final service = ref.watch(authServiceProvider);
  final dio = ref.watch(dioProvider);
  return AuthRepository(service,dio);
});

/// Auth ViewModel provider (StateNotifierProvider)
final authViewModelProvider = StateNotifierProvider<AuthViewModel, AuthState>((ref) {
  final repository = ref.watch(authRepositoryProvider);
  return AuthViewModel(repository,ref);
});



final storageServiceProvider = Provider<SecureStorageService>((ref) {
  return SecureStorageService(
    storage: const FlutterSecureStorage(),
  );
});