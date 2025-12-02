import 'package:amrita_vidhyalayam_teacher/core/features/attendance/data/models/ui_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import '../../data/models/attendance_model.dart';


part 'attendance_state.freezed.dart';

@freezed
abstract class AttendanceState with _$AttendanceState {
  const factory AttendanceState({
    required bool isLoading,
    required String data,
    required UiResponseModel updateResponse,
    required bool attendanceUpdatedSuccess,
    required bool attendanceUpdatedFaliure,
    List<StudentAttendance>? attendanceList,
    List<StudentAttendance>? filteredAttendanceList,
    List<StudentAttendance>? originalAttendanceList,
    required bool isIndividual,
    required bool isInvidualChecked,
    required bool isChecked,
    required String date,
    required String greetingText,
    String? error,
    required bool isCheckedSelectAll,
    @Default({}) Set<String> selectedIds,
  }) = _AttendanceState;

  factory AttendanceState.initial() => AttendanceState(
    isLoading: false,
    data: "",
    attendanceList: null,
    filteredAttendanceList: null,
    originalAttendanceList: null,
    isChecked: false,
    date: "Today, ${DateFormat('MMM dd').format(DateTime.now()).toString()}",
    isCheckedSelectAll: false,
    selectedIds: {},
    isIndividual: false,
    isInvidualChecked: false, greetingText: '',
    attendanceUpdatedSuccess: false,
    attendanceUpdatedFaliure: false,
    updateResponse: UiResponseModel(isSuccess: null, presentCount: 0, absentCount: 0, totalCount: 0, message:"")
  );
}
