
import 'package:amrita_vidhyalayam_teacher/core/providers/common_providers.dart';
import 'package:amrita_vidhyalayam_teacher/core/shared/repository/student_repository.dart';
import 'package:intl/intl.dart';
import 'package:riverpod/legacy.dart';
import 'package:riverpod/riverpod.dart';
import 'my_class_state.dart';


class MyClassViewodel extends StateNotifier<MyClassState> {
  final StudentRepository _repository;
  final Ref ref;

  MyClassViewodel(this._repository, this.ref) : super(MyClassState.initial());


  Future<void> fetchStudent(String searchTxt) async{
    state = state.copyWith(isLoading: true);
    final today = DateFormat("yyyy-MM-dd").format(DateTime.now());
    print(today);
    final sclass = await ref.read(storageServiceProvider).read("class");
    final studentsList = await _repository.getStudentDetails(sclass: sclass ?? "", attendanceOn:today , searchQuery: searchTxt);
    state = state.copyWith(studentList:studentsList.attendanceList,isLoading: false,orginalStudentList:studentsList.attendanceList);

  }


}

  final studentProvider =
    StateNotifierProvider<MyClassViewodel, MyClassState>(
  (ref) => MyClassViewodel(ref.watch(studentRepositoryProvider), ref));



   



