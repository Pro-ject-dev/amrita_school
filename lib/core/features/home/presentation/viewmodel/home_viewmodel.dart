import 'package:riverpod/legacy.dart';
import '../../data/repository/home_repository.dart';
import 'home_state.dart';


class HomeViewModel extends StateNotifier<HomeState> {
  final HomeRepository _repository;

  HomeViewModel(this._repository) : super(HomeState.initial());

  Future<void> fetchAttendance() async {
    state = state.copyWith(isLoading: true);
    try {
      final result = await _repository.getClassAttendance(
        sclass: "TS 25 CLASS 2 A",
        attendanceOn: "18-11-2025",
      );
      state = state.copyWith(
        isLoading: false,
        attendanceList: result.attendanceList,
      );
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }
}

final homeProvider =
    StateNotifierProvider<HomeViewModel, HomeState>(
  (ref) => HomeViewModel(ref.watch(homeRepositoryProvider)),
);
