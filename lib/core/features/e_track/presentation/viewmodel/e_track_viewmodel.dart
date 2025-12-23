import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod/legacy.dart';
import 'e_track_state.dart';
import '../../data/repository/e_track_repository.dart';
import 'package:amrita_vidhyalayam_teacher/core/shared/repository/employee_repository.dart';
import 'package:amrita_vidhyalayam_teacher/core/providers/common_providers.dart';

class ETrackViewModel extends StateNotifier<ETrackState> {
  final ETrackRepository _repository;
  final EmployeeRepository _employeeRepository;
  final Ref ref;

  ETrackViewModel(this._repository, this._employeeRepository, this.ref)
      : super(ETrackState.initial());

  Future<void> load({required int year, required int month}) async {
    state = state.copyWith(isLoading: true, error: null);

    try {
      // Get Mail
      var mail = await ref.read(storageServiceProvider).read("mail");
      if (mail == null || mail.isEmpty) {
        state = state.copyWith(
          isLoading: false,
          error: "User email not found",
        );
        return;
      }

      // Get Employee ID
      final employee = await _employeeRepository.getEmployeeDetails(mail: mail);
      final empId = employee.empData?.empId;

      if (empId == null) {
        state = state.copyWith(
          isLoading: false,
          error: "Employee ID not found",
        );
        return;
      }

      // Get ETrack Details
      final result = await _repository.fetchETrackDetails(
        year: year.toString(),
        month: month.toString(),
        empId: empId,
      );

      state = state.copyWith(isLoading: false, data: result);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }
}

final eTrackProvider = StateNotifierProvider<ETrackViewModel, ETrackState>(
  (ref) {
    final repo = ref.watch(eTrackRepositoryProvider);
    final empRepo = ref.watch(employeeRepositoryProvider);
    return ETrackViewModel(repo, empRepo, ref);
  },
);
