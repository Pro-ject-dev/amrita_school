import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import '../../data/models/attendance_model.dart';

part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    required bool isLoading,
    required String data,
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
    isInvidualChecked: false, greetingText: ''



  );
}
