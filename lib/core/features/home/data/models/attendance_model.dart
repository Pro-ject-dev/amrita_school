import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendance_model.freezed.dart';
part 'attendance_model.g.dart';

@freezed
abstract class AttendanceModel with _$AttendanceModel {
  const factory AttendanceModel({
    @JsonKey(name: 'attendance_list') required List<StudentAttendance> attendanceList,
    required String message,
  }) = _AttendanceModel;

  factory AttendanceModel.fromJson(Map<String, dynamic> json) =>
      _$AttendanceModelFromJson(json);
}

@freezed
abstract class StudentAttendance with _$StudentAttendance {
  const factory StudentAttendance({
    required String student,
    @JsonKey(name: 'student_name') required String studentName,
    @JsonKey(name: 'attendance_status') required String attendanceStatus,
    @JsonKey(name: 'attendance_on') required String attendanceOn,
    @Default(false) bool isChecked,
  }) = _StudentAttendance;

  factory StudentAttendance.fromJson(Map<String, dynamic> json) =>
      _$StudentAttendanceFromJson(json);
}
