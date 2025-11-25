import 'package:riverpod/legacy.dart';
import '../../data/models/attendance_model.dart';
import '../../data/repository/home_repository.dart';
import 'home_state.dart';


class HomeViewModel extends StateNotifier<HomeState> {
  final HomeRepository _repository;

  HomeViewModel(this._repository) : super(HomeState.initial());

  Future<void> fetchAttendance(String searchTxt) async {
    state = state.copyWith(isLoading: true);
    try {
      final result = await _repository.getClassAttendance(
        sclass: "TS 25 CLASS 2 A",
        attendanceOn: "18-11-2025",
        searchQuery: searchTxt

      );
      state = state.copyWith(
        isLoading: false,
        attendanceList: result.attendanceList,
      );
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

Future<void> checkBox(int index, bool? isChecked) async {
  if (state.attendanceList != null) {
    final updatedList = List<StudentAttendance>.from(state.attendanceList!);
    final studentAttendance = updatedList[index];
    final updatedAttendance = studentAttendance.copyWith(
      isChecked: isChecked ?? false,
    );
    updatedList[index] = updatedAttendance;
    final anyChecked = updatedList.any((e) => e.isChecked == true);
    state = state.copyWith(
      attendanceList: updatedList,
      isChecked: anyChecked, 
    );
  }
}


  Future<void> toggleAttendance(int index, bool isPresent) async {
    if (state.attendanceList != null) {
      final updatedList = List<StudentAttendance>.from(state.attendanceList!);
      final studentAttendance = updatedList[index];
      final updatedAttendance = studentAttendance.copyWith(
        attendanceStatus: isPresent ? "Present" : "Absent",
      );
      updatedList[index] = updatedAttendance;

      state = state.copyWith(attendanceList: updatedList);
    }
  }



}



final homeProvider =
    StateNotifierProvider<HomeViewModel, HomeState>(
  (ref) => HomeViewModel(ref.watch(homeRepositoryProvider)),
);