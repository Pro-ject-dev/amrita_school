import 'package:riverpod/legacy.dart';
import 'e_track_state.dart';
import '../../domain/usecases/e_track_usecase.dart';

 class ETrackViewModel extends StateNotifier<ETrackState> {
  final ETrackUseCase _useCase = ETrackUseCase();

  ETrackViewModel() : super(ETrackState.initial());

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

final eTrackProvider =
    StateNotifierProvider<ETrackViewModel, ETrackState>(
  (ref) => ETrackViewModel(),
);
