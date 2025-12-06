import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    required bool isLoading,
    required bool isValid,
    String? error,
    String? email,
  }) = _AuthState;

  factory AuthState.initial() => const AuthState(
        isLoading: false,
        isValid: false,
        email: null,
      );
}
