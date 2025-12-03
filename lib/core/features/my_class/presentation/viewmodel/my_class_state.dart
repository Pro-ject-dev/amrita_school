import 'package:amrita_vidhyalayam_teacher/core/features/attendance/data/models/attendance_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_class_state.freezed.dart';

@freezed
abstract class MyClassState with _$MyClassState {
  const factory MyClassState({
    required bool isLoading,
    required String data,
    required List<StudentAttendance>? studentList,
    String? error,
  }) = _MyClassState;

  factory MyClassState.initial() => const MyClassState(
        isLoading: false,
        data: "",
        studentList: null
      );
}
