// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EmpDataModel _$EmpDataModelFromJson(Map<String, dynamic> json) =>
    _EmpDataModel(
      empId: json['emp_id'] as String?,
      employeeName: json['employee_name'] as String?,
      status: json['status'] as String?,
      gender: json['gender'] as String?,
      dateOfBirth: json['date_of_birth'] as String?,
      dateOfJoining: json['date_of_joining'] as String?,
      school: json['school'] as String?,
      designation: json['designation'] as String?,
      employmentCategory: json['employment_category'] as String?,
      employmentType: json['employment_type'] as String?,
    );

Map<String, dynamic> _$EmpDataModelToJson(_EmpDataModel instance) =>
    <String, dynamic>{
      'emp_id': instance.empId,
      'employee_name': instance.employeeName,
      'status': instance.status,
      'gender': instance.gender,
      'date_of_birth': instance.dateOfBirth,
      'date_of_joining': instance.dateOfJoining,
      'school': instance.school,
      'designation': instance.designation,
      'employment_category': instance.employmentCategory,
      'employment_type': instance.employmentType,
    };

_AttendanceModel _$AttendanceModelFromJson(Map<String, dynamic> json) =>
    _AttendanceModel(
      employee: json['employee'] as String?,
      attendanceDate: json['attendance_date'] as String?,
      employeeName: json['employee_name'] as String?,
      status: json['status'] as String?,
      shift: json['shift'] as String?,
      lateEntry: (json['late_entry'] as num?)?.toInt(),
      earlyExit: (json['early_exit'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AttendanceModelToJson(_AttendanceModel instance) =>
    <String, dynamic>{
      'employee': instance.employee,
      'attendance_date': instance.attendanceDate,
      'employee_name': instance.employeeName,
      'status': instance.status,
      'shift': instance.shift,
      'late_entry': instance.lateEntry,
      'early_exit': instance.earlyExit,
    };

_PunchModel _$PunchModelFromJson(Map<String, dynamic> json) => _PunchModel(
  inTimeDiff: json['in_time_diff'] as String?,
  inTimeStatus: json['in_time_status'] as String?,
  outTimeDiff: json['out_time_diff'] as String?,
  outTimeStatus: json['out_time_status'] as String?,
  firstPunch: json['first_punch'] as String?,
  lastPunch: json['last_punch'] as String?,
  shiftStart: json['shift_start'] as String?,
  shiftEnd: json['shift_end'] as String?,
  dateOfPunch: json['date_of_punch'] as String?,
);

Map<String, dynamic> _$PunchModelToJson(_PunchModel instance) =>
    <String, dynamic>{
      'in_time_diff': instance.inTimeDiff,
      'in_time_status': instance.inTimeStatus,
      'out_time_diff': instance.outTimeDiff,
      'out_time_status': instance.outTimeStatus,
      'first_punch': instance.firstPunch,
      'last_punch': instance.lastPunch,
      'shift_start': instance.shiftStart,
      'shift_end': instance.shiftEnd,
      'date_of_punch': instance.dateOfPunch,
    };
