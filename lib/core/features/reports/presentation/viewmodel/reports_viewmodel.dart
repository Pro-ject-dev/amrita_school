import 'package:riverpod/legacy.dart';
import 'reports_state.dart';
import '../../domain/usecases/reports_usecase.dart';

class ReportsViewModel extends StateNotifier<ReportsState> {
  final ReportsUseCase _useCase = ReportsUseCase();

  ReportsViewModel() : super(ReportsState.initial());

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

final reportsProvider =
    StateNotifierProvider<ReportsViewModel, ReportsState>(
  (ref) => ReportsViewModel(),
);
