import 'package:flutter/rendering.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../shared/models/student_model.dart';

part 'my_class_state.freezed.dart';

@freezed
abstract class MyClassState with _$MyClassState {
  const factory MyClassState({
    required bool isLoading,
    required String data,
    required List<StudentAttendance>? studentList,
    required List<StudentAttendance>? orginalStudentList,
    String? error,
  }) = _MyClassState;

  factory MyClassState.initial() => const MyClassState(
        isLoading: false,
        data: "",
        studentList: null,
        orginalStudentList: null
      );
}
