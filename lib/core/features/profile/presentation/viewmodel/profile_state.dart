import 'package:amrita_vidhyalayam_teacher/core/shared/models/employee_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.freezed.dart';

@freezed
abstract class ProfileState with _$ProfileState {
  const factory ProfileState({
    required bool isLoading,
    required EmployeeModel? data,
    required String? mail,
    String? error,
  }) = _ProfileState;

  factory ProfileState.initial() => const ProfileState(
        isLoading: false,
        data: null,
        mail: "Not Found"
      );
}
