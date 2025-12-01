import 'package:amrita_vidhyalayam_teacher/core/features/home/data/models/ui_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import '../../data/models/attendance_model.dart';
import '../../data/models/post_attendance_model.dart';

part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
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
  }) = _HomeState;

  factory HomeState.initial() => HomeState(
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
