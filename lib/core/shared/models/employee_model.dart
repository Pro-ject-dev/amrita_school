import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee_model.freezed.dart';
part 'employee_model.g.dart';

@freezed
abstract class EmployeeModel with _$EmployeeModel {
  const factory EmployeeModel({
    @JsonKey(name: "emp_data") EmpDataModel? empData,
    @JsonKey(name: "attendance_list") List<AttendanceModel>? attendanceList,
    @JsonKey(name: "punch_list") List<PunchModel>? punchList,
    String? message,
  }) = _EmployeeModel;

  factory EmployeeModel.fromJson(Map<String, dynamic> json) {
    return EmployeeModel(
      empData: (json["emp_data"] is Map && (json["emp_data"] as Map).isNotEmpty)
          ? EmpDataModel.fromJson(json["emp_data"])
          : null,

      attendanceList: (json["attendance_list"] is List)
          ? (json["attendance_list"] as List)
              .map((e) => AttendanceModel.fromJson(e))
              .toList()
          : [],

      punchList: (json["punch_list"] is List)
          ? (json["punch_list"] as List)
              .map((e) => PunchModel.fromJson(e))
              .toList()
          : [],

      message: json["message"],
    );
  }
}

// =====================================================================
// EMP DATA MODEL
// =====================================================================

@freezed
abstract class EmpDataModel with _$EmpDataModel {
  const factory EmpDataModel({
    @JsonKey(name: 'emp_id') String? empId,
    @JsonKey(name: 'employee_name') String? employeeName,
    String? status,
    String? gender,
    @JsonKey(name: 'date_of_birth') String? dateOfBirth,
    @JsonKey(name: 'date_of_joining') String? dateOfJoining,
    String? school,
    String? designation,
    @JsonKey(name: 'employment_category') String? employmentCategory,
    @JsonKey(name: 'employment_type') String? employmentType,
  }) = _EmpDataModel;

  factory EmpDataModel.fromJson(Map<String, dynamic> json) =>
      _$EmpDataModelFromJson(json);
}

// =====================================================================
// ATTENDANCE MODEL
// =====================================================================

@freezed
abstract class AttendanceModel with _$AttendanceModel {
  const factory AttendanceModel({
    String? employee,
    @JsonKey(name: 'attendance_date') String? attendanceDate,
    @JsonKey(name: 'employee_name') String? employeeName,
    String? status,
    String? shift,
    @JsonKey(name: 'late_entry') int? lateEntry,
    @JsonKey(name: 'early_exit') int? earlyExit,
  }) = _AttendanceModel;

  factory AttendanceModel.fromJson(Map<String, dynamic> json) =>
      _$AttendanceModelFromJson(json);
}

// =====================================================================
// UPDATED PUNCH MODEL (FULL API RESPONSE SUPPORTED)
// =====================================================================

@freezed
abstract class PunchModel with _$PunchModel {
  const factory PunchModel({
    @JsonKey(name: 'in_time_diff') String? inTimeDiff,
    @JsonKey(name: 'in_time_status') String? inTimeStatus,
    @JsonKey(name: 'out_time_diff') String? outTimeDiff,
    @JsonKey(name: 'out_time_status') String? outTimeStatus,

    @JsonKey(name: 'first_punch') String? firstPunch,
    @JsonKey(name: 'last_punch') String? lastPunch,

    @JsonKey(name: 'shift_start') String? shiftStart,
    @JsonKey(name: 'shift_end') String? shiftEnd,

    @JsonKey(name: 'date_of_punch') String? dateOfPunch,
  }) = _PunchModel;

  factory PunchModel.fromJson(Map<String, dynamic> json) =>
      _$PunchModelFromJson(json);
}
