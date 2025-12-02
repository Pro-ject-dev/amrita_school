
import 'package:intl/intl.dart';
import 'package:riverpod/legacy.dart';
import '../../../attendance/data/repository/attendance_repository.dart';
import 'student_state.dart';


class StudentViewModel extends StateNotifier<StudentState> {
  final AttendanceRepository _repository;

  StudentViewModel(this._repository) : super(StudentState.initial());


  Future<void> fetchStudent(String searchTxt) async{
    state = state.copyWith(isLoading: true);
    final today = DateFormat("yyyy-MM-dd").format(DateTime.now());
    print(today);
    final studentsList = await _repository.getClassAttendance(sclass: "TS 25 CLASS 2 A", attendanceOn:today , searchQuery: searchTxt);
    state = state.copyWith(studentList:studentsList.attendanceList,isLoading: false);

  }


}

  final studentProvider =
    StateNotifierProvider<StudentViewModel, StudentState>(
  (ref) => StudentViewModel(ref.watch(attendanceRepositoryProvider)));



   



