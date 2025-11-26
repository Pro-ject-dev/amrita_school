import 'package:riverpod/legacy.dart';
import 'student_state.dart';
import '../../domain/usecases/student_usecase.dart';

class StudentViewModel extends StateNotifier<StudentState> {
  final StudentUseCase _useCase = StudentUseCase();

  StudentViewModel() : super(StudentState.initial());

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

final studentProvider =
    StateNotifierProvider<StudentViewModel, StudentState>(
  (ref) => StudentViewModel(),
);
