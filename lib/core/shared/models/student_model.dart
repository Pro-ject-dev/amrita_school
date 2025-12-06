import 'package:freezed_annotation/freezed_annotation.dart';

part 'student_model.freezed.dart';
part 'student_model.g.dart';

@freezed
abstract class StudentModel with _$StudentModel {
  const factory StudentModel({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'attendance_list') required List<StudentAttendance> attendanceList,
    required String message,
  }) = _StudentModel;

  factory StudentModel.fromJson(Map<String, dynamic> json) =>
      _$StudentModelFromJson(json);
}

@freezed
abstract class StudentAttendance with _$StudentAttendance {
  const factory StudentAttendance({
    required String student,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'student_name') required String studentName,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'attendance_status') required String attendanceStatus,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'attendance_on') required String attendanceOn,
    @Default(false) bool isChecked,
  }) = _StudentAttendance;

  factory StudentAttendance.fromJson(Map<String, dynamic> json) =>
      _$StudentAttendanceFromJson(json);
}
