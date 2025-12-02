import 'package:amrita_vidhyalayam_teacher/core/features/attendance/data/models/attendance_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'student_state.freezed.dart';

@freezed
abstract class StudentState with _$StudentState {
  const factory StudentState({
    required bool isLoading,
    required String data,
    required List<StudentAttendance>? studentList,
    String? error,
  }) = _StudentState;

  factory StudentState.initial() => const StudentState(
        isLoading: false,
        data: "",
        studentList: null
      );
}
