import 'package:riverpod/legacy.dart';
import 'home_state.dart';
import '../../domain/usecases/home_usecase.dart';

class HomeViewModel extends StateNotifier<HomeState> {
  final HomeUseCase _useCase = HomeUseCase();

  HomeViewModel() : super(HomeState.initial());

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

final homeProvider =
    StateNotifierProvider<HomeViewModel, HomeState>(
  (ref) => HomeViewModel(),
);
