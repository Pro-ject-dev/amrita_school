import 'dart:developer';
import 'package:amrita_vidhyalayam_teacher/core/providers/common_providers.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:riverpod/riverpod.dart';
import '../../data/repository/auth_repository.dart';
import 'auth_state.dart';

class AuthViewModel extends StateNotifier<AuthState> {
  final AuthRepository _repository;
  final Ref ref;

  AuthViewModel(this._repository, this.ref) : super(AuthState.initial());

  Future<void> login() async {
    state = state.copyWith(isLoading: true);
    try {
      final isLoggedIn = await _repository.login();

      if (isLoggedIn["success"]) {
        final validStatus = await _repository.isValidUser(mail: isLoggedIn["mail"]);
        if (validStatus.message.isInstructor) {
          await ref.read(storageServiceProvider).write("isLoggedIn", 'true');
          await ref.read(storageServiceProvider).write(
            "class", 
            '${validStatus.message.classIncharge}'
          );
            await ref.read(storageServiceProvider).write(
              "mail", 
              isLoggedIn["mail"].toString()
            );
            await ref.read(storageServiceProvider).write(
              "className", 
             validStatus.message.classSubject?.first.studentClass??"null"
            );
              state = state.copyWith(
                isValid: true,
                isLoading: false,
                error: null,
              );
           
          } else {
            log("ERROR: Email is null or empty from login response");
            state = state.copyWith(
              isValid: false,
              isLoading: false,
              error: "Email not found in login response",
            );
          }
       
      } else {
        state = state.copyWith(
          isValid: false,
          isLoading: false,
          error: "Login failed",
        );
      }
    } catch (e) {
      log("Login exception: $e");
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
      state = AuthState.initial();
    } catch (e) {
      log("Logout error: $e");
    }
  }
}