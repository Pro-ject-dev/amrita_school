import 'auth_state.dart';
import '../../domain/usecases/auth_usecase.dart';
import 'package:riverpod/legacy.dart';

class AuthViewModel extends StateNotifier<AuthState> {
  final AuthUseCase _useCase = AuthUseCase();

  AuthViewModel() : super(AuthState.initial());

  Future<void> load() async {
    state = state.copyWith(isLoading: true);

    try {
      final result = await _useCase.execute();
      state = state.copyWith(isLoading: false, data: result.value);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }
}

final authProvider =
    StateNotifierProvider<AuthViewModel, AuthState>(
  (ref) => AuthViewModel(),
);
