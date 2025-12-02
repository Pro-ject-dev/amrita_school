import 'package:amrita_vidhyalayam_teacher/core/providers/common_providers.dart';
import 'package:amrita_vidhyalayam_teacher/core/services/storage_serice.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:riverpod/riverpod.dart';
import '../../data/repository/auth_repository.dart';
import 'auth_state.dart';

class AuthViewModel extends StateNotifier<AuthState> {
  final AuthRepository _repository;
  final Ref ref; // add ref

  AuthViewModel(this._repository, this.ref) : super(AuthState.initial()) {
    _checkAuthStatus();
  }

  Future<void> _checkAuthStatus() async {
    try {
      final isAuth = await _repository.checkAuthStatus();
      if (isAuth) {
        await _loadUserData();
      }
    } catch (_) {}
  }

  Future<void> _loadUserData() async {
    try {
      await _repository.getCurrentUser();
    } catch (_) {}
  }

  Future<void> login() async {
    state = state.copyWith(isLoading: true);

    try {
      final isLoggedIn = await _repository.login();

      if (isLoggedIn) {
        final validStatus = await _repository.isValidUser();
        if (validStatus.message.isInstructor) {
          await ref.read(storageServiceProvider).write(
                "isLoggedIn",
                true
              );

          state = state.copyWith(
            isValid: true,
            isLoading: false,
          );
        } else {
          state = state.copyWith(
            isValid: false,
            isLoading: false,
            error: "Not a valid teacher account",
          );
        }
      }
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
    }
  }

  Future<void> logout() async {
    try {
      await _repository.logout();
      await ref.read(storageServiceProvider).clear();
    } catch (_) {}
  }
}
