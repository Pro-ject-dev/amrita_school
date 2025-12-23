import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/e_track_entity.dart';

part 'e_track_model.freezed.dart';
part 'e_track_model.g.dart';

@freezed
abstract class ETrackModel with _$ETrackModel {
  const ETrackModel._();
  const factory ETrackModel({
    @JsonKey(name: 'attendance_list') List<AttendanceItemModel>? attendanceList,
    @JsonKey(name: 'leave_list') List<LeaveItemModel>? leaveList,
    @JsonKey(name: 'holiday_list') List<HolidayItemModel>? holidayList,
  }) = _ETrackModel;

  factory ETrackModel.fromJson(Map<String, dynamic> json) =>
      _$ETrackModelFromJson(json);

  ETrackEntity toEntity() => ETrackEntity(
        attendanceList: attendanceList?.map((e) => e.toEntity()).toList() ?? [],
        leaveList: leaveList?.map((e) => e.toEntity()).toList() ?? [],
        holidayList: holidayList?.map((e) => e.toEntity()).toList() ?? [],
      );
}

@freezed
abstract class AttendanceItemModel with _$AttendanceItemModel {
  const AttendanceItemModel._();
  const factory AttendanceItemModel({
    @JsonKey(name: 'attendance_date') String? attendanceDate,
    String? status,
  }) = _AttendanceItemModel;

  factory AttendanceItemModel.fromJson(Map<String, dynamic> json) =>
      _$AttendanceItemModelFromJson(json);

  AttendanceItemEntity toEntity() => AttendanceItemEntity(
        attendanceDate: attendanceDate ?? '',
        status: status ?? '',
      );
}

@freezed
abstract class LeaveItemModel with _$LeaveItemModel {
  const LeaveItemModel._();
  const factory LeaveItemModel({
    String? date,
    @JsonKey(name: 'leave_type') String? leaveType,
    @JsonKey(name: 'day_type') String? dayType,
  }) = _LeaveItemModel;

  factory LeaveItemModel.fromJson(Map<String, dynamic> json) =>
      _$LeaveItemModelFromJson(json);

  LeaveItemEntity toEntity() => LeaveItemEntity(
        date: date ?? '',
        leaveType: leaveType ?? '',
        dayType: dayType ?? '',
      );
}

@freezed
abstract class HolidayItemModel with _$HolidayItemModel {
  const HolidayItemModel._();
  const factory HolidayItemModel({
    @JsonKey(name: 'holiday_date') String? holidayDate,
    String? description,
  }) = _HolidayItemModel;

  factory HolidayItemModel.fromJson(Map<String, dynamic> json) =>
      _$HolidayItemModelFromJson(json);

  HolidayItemEntity toEntity() => HolidayItemEntity(
        holidayDate: holidayDate ?? '',
        description: description ?? '',
      );
}
