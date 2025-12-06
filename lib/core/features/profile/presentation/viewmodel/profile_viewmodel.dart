import 'package:amrita_vidhyalayam_teacher/core/features/home/data/repository/home_repository.dart';
import 'package:amrita_vidhyalayam_teacher/core/providers/common_providers.dart';
import 'package:amrita_vidhyalayam_teacher/core/shared/repository/employee_repository.dart';
import 'package:riverpod/legacy.dart';
import 'package:riverpod/riverpod.dart';
import 'profile_state.dart';

class ProfileViewModel extends StateNotifier<ProfileState> {
  final EmployeeRepository repository;
  final Ref ref;

  ProfileViewModel(this.repository, this.ref) : super(ProfileState.initial());

  Future<void> getProfile() async {
    try {
      state = state.copyWith(isLoading: true);
      final staffMail = await ref.read(storageServiceProvider).read("mail");
      final profileData = await repository.getEmployeeDetails(
        mail: staffMail.toString(),
      );
      state = state.copyWith(
        isLoading: false,
        data: profileData,
        error: null,
        mail: staffMail,
      );
    } catch (ex) {
      state = state.copyWith(error: ex.toString(), isLoading: false);
    }
  }
}

final profileProvider = StateNotifierProvider<ProfileViewModel, ProfileState>((
  ref,
) {
  final repository = ref.watch(employeeRepositoryProvider);
  return ProfileViewModel(repository, ref);
});
