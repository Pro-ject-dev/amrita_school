// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AttendanceModel _$AttendanceModelFromJson(Map<String, dynamic> json) =>
    _AttendanceModel(
      attendanceList: (json['attendance_list'] as List<dynamic>)
          .map((e) => StudentAttendance.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String,
    );

Map<String, dynamic> _$AttendanceModelToJson(_AttendanceModel instance) =>
    <String, dynamic>{
      'attendance_list': instance.attendanceList,
      'message': instance.message,
    };

_StudentAttendance _$StudentAttendanceFromJson(Map<String, dynamic> json) =>
    _StudentAttendance(
      student: json['student'] as String,
      studentName: json['student_name'] as String,
      attendanceStatus: json['attendance_status'] as String,
      attendanceOn: json['attendance_on'] as String,
      isChecked: json['isChecked'] as bool? ?? false,
    );

Map<String, dynamic> _$StudentAttendanceToJson(_StudentAttendance instance) =>
    <String, dynamic>{
      'student': instance.student,
      'student_name': instance.studentName,
      'attendance_status': instance.attendanceStatus,
      'attendance_on': instance.attendanceOn,
      'isChecked': instance.isChecked,
    };
