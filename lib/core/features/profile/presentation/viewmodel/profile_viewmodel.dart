import 'package:riverpod/legacy.dart';
import 'profile_state.dart';
import '../../domain/usecases/profile_usecase.dart';

 class ProfileViewModel extends StateNotifier<ProfileState> {
  final ProfileUseCase _useCase = ProfileUseCase();

  ProfileViewModel() : super(ProfileState.initial());

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

final profileProvider =
    StateNotifierProvider<ProfileViewModel, ProfileState>(
  (ref) => ProfileViewModel(),
);
