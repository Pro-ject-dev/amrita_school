import 'package:freezed_annotation/freezed_annotation.dart';

part 'student_state.freezed.dart';

@freezed
abstract class StudentState with _$StudentState {
  const factory StudentState({
    required bool isLoading,
    required String data,
    String? error,
  }) = _StudentState;

  factory StudentState.initial() => const StudentState(
        isLoading: false,
        data: "",
      );
}
