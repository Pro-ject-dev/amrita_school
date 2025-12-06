import 'package:amrita_vidhyalayam_teacher/core/features/home/data/models/today_puch_model.dart';
import 'package:amrita_vidhyalayam_teacher/core/shared/models/employee_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    required bool isLoading,
    required EmployeeModel? punchData,
    required TodayPuchModel? todayData,
    String? error,
  }) = _HomeState;

  factory HomeState.initial() => const HomeState(
        isLoading: false,
        punchData: null,
        todayData: null
      );
}
