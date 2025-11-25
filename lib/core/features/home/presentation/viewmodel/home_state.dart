import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/attendance_model.dart';

part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    required bool isLoading,
    required String data,
    List<StudentAttendance>? attendanceList,
    required bool isChecked,
    String? error,
  }) = _HomeState;

  factory HomeState.initial() => const HomeState(
        isLoading: false,
        data: "",
        attendanceList: null,
        isChecked: false,
      );
}
