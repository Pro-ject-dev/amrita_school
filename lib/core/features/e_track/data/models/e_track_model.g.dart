// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'e_track_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ETrackModel _$ETrackModelFromJson(Map<String, dynamic> json) => _ETrackModel(
  attendanceList: (json['attendance_list'] as List<dynamic>?)
      ?.map((e) => AttendanceItemModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  leaveList: (json['leave_list'] as List<dynamic>?)
      ?.map((e) => LeaveItemModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  holidayList: (json['holiday_list'] as List<dynamic>?)
      ?.map((e) => HolidayItemModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ETrackModelToJson(_ETrackModel instance) =>
    <String, dynamic>{
      'attendance_list': instance.attendanceList,
      'leave_list': instance.leaveList,
      'holiday_list': instance.holidayList,
    };

_AttendanceItemModel _$AttendanceItemModelFromJson(Map<String, dynamic> json) =>
    _AttendanceItemModel(
      attendanceDate: json['attendance_date'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$AttendanceItemModelToJson(
  _AttendanceItemModel instance,
) => <String, dynamic>{
  'attendance_date': instance.attendanceDate,
  'status': instance.status,
};

_LeaveItemModel _$LeaveItemModelFromJson(Map<String, dynamic> json) =>
    _LeaveItemModel(
      date: json['date'] as String?,
      leaveType: json['leave_type'] as String?,
      dayType: json['day_type'] as String?,
    );

Map<String, dynamic> _$LeaveItemModelToJson(_LeaveItemModel instance) =>
    <String, dynamic>{
      'date': instance.date,
      'leave_type': instance.leaveType,
      'day_type': instance.dayType,
    };

_HolidayItemModel _$HolidayItemModelFromJson(Map<String, dynamic> json) =>
    _HolidayItemModel(
      holidayDate: json['holiday_date'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$HolidayItemModelToJson(_HolidayItemModel instance) =>
    <String, dynamic>{
      'holiday_date': instance.holidayDate,
      'description': instance.description,
    };
