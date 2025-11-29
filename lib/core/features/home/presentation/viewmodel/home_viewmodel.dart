import 'dart:async';
import 'dart:developer';
import 'package:amrita_vidhyalayam_teacher/core/features/home/data/models/post_attendance_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:riverpod/legacy.dart';
import '../../data/models/attendance_model.dart';
import '../../data/repository/home_repository.dart';
import 'home_state.dart';

class HomeViewModel extends StateNotifier<HomeState> {
  final HomeRepository _repository;

  HomeViewModel(this._repository) : super(HomeState.initial());

  static const String standardFormat = 'yyyy-MM-dd';
  static const String displayFormat = 'MMM dd';
  

  final PageController pageController = PageController();

  void changePage(int index) {
    final updatedAttendanceList = state.attendanceList
        ?.map((e) => e.copyWith(isChecked: false))
        .toList();

    state = state.copyWith(
      attendanceList: updatedAttendanceList,
      isIndividual: index != 0,
      isCheckedSelectAll: false,
      isChecked: false,
      selectedIds: {},
      isInvidualChecked: false
      
    );
    state = index == 0
        ? state.copyWith(isIndividual: false,attendanceList: state.originalAttendanceList)
        : state.copyWith(isIndividual: true,attendanceList: state.originalAttendanceList);
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  Future<void> fetchAttendance(String searchTxt, String date) async {
    state = state.copyWith(isLoading: true);

    // Convert display format to standard format if needed
    String formattedDate = date;
    if (date.startsWith("Today")) {
      formattedDate = DateFormat(standardFormat).format(DateTime.now());
    }
    
    try {
      final result = await _repository.getClassAttendance(
        sclass: "TS 25 CLASS 2 A",
        attendanceOn: formattedDate,
        searchQuery: searchTxt,
      );

      final newSelectedIds = state.selectedIds;
      final syncedList = syncListWithSelection(
        result.attendanceList,
        newSelectedIds,
      );
      state = state.copyWith(
        isLoading: false,
        attendanceList: syncedList,
        originalAttendanceList: result.attendanceList,
        filteredAttendanceList: null,
        selectedIds: newSelectedIds,
        isChecked:false,
        isCheckedSelectAll: false,
        isInvidualChecked: false

      );
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  List<StudentAttendance> syncListWithSelection(
    List<StudentAttendance> list,
    Set<String> selectedIds,
  ) {
    return list.map((student) {
      return student.copyWith(isChecked: selectedIds.contains(student.student));
    }).toList();
  }

  void toggleSelection(String studentId) {
    final currentSelectedIds = Set<String>.from(state.selectedIds);
    if (currentSelectedIds.contains(studentId)) {
      currentSelectedIds.remove(studentId);
      state=state.copyWith(isCheckedSelectAll: false);
    } else {
      currentSelectedIds.add(studentId);
      final unMarkedStudentIds = state.originalAttendanceList!.where((e)=>e.attendanceStatus=="").map((e)=>e.student).toSet();
      if(currentSelectedIds.containsAll(unMarkedStudentIds)){
         state=state.copyWith(isCheckedSelectAll: true);
      }
    }

    final updatedAttendanceList = state.attendanceList != null
        ? syncListWithSelection(state.attendanceList!, currentSelectedIds)
        : null;

    final updatedFilteredList = state.filteredAttendanceList != null
        ? syncListWithSelection(
            state.filteredAttendanceList!,
            currentSelectedIds,
          )
        : null;

    final anyChecked = currentSelectedIds.isNotEmpty;

    state = state.copyWith(
      selectedIds: currentSelectedIds,
      attendanceList: updatedAttendanceList,
      filteredAttendanceList: updatedFilteredList,
      isChecked: anyChecked,
    );
  }

  void searchStudent(String query) {
    if (state.attendanceList == null || state.attendanceList!.isEmpty) return;

    final filteredList = query.isEmpty
        ? null
        : state.attendanceList!
              .where(
                (e) =>
                    e.studentName.toLowerCase().contains(query.toLowerCase()),
              )
              .toList();

    state = state.copyWith(filteredAttendanceList: filteredList);
  }

  Future<void> toggleAttendance(int index, bool isPresent) async {
    if (state.attendanceList != null) {
      final targetList = state.filteredAttendanceList ?? state.attendanceList!;
      if (index >= targetList.length) return;

      final student = targetList[index];
      final updatedStudent = student.copyWith(
        attendanceStatus: isPresent ? "Present" : "Absent",
      );

      final mainList = List<StudentAttendance>.from(state.attendanceList!);
      final mainIndex = mainList.indexWhere(
        (s) => s.student == student.student,
      );
      if (mainIndex != -1) {
        mainList[mainIndex] = updatedStudent;
      }

      List<StudentAttendance>? newFilteredList;
      if (state.filteredAttendanceList != null) {
        newFilteredList = List<StudentAttendance>.from(
          state.filteredAttendanceList!,
        );
        newFilteredList[index] = updatedStudent;
      }

      state = state.copyWith(
        attendanceList: mainList,
        filteredAttendanceList: newFilteredList,
        isInvidualChecked: true
      );
    }
  }

  Future<void> getDate(String date) async {
    final dateFormat = DateFormat(standardFormat);
    final todayDate = dateFormat.format(DateTime.now());

    state = state.copyWith(
      date: date == todayDate
          ? "Today, ${DateFormat(displayFormat).format(DateTime.now())}"
          : date,
      selectedIds: {},
      isChecked: false,
      isCheckedSelectAll: false,
    );
  }

  Future<void> nextDate() async {
    await navigateDate(1);
  }

  Future<void> previousDate() async {
    await navigateDate(-1);
  }

  Future<void> navigateDate(int days) async {
    final currentDate = parseCurrentDate();
    final newDate = currentDate.add(Duration(days: days));
    final formattedDate = DateFormat(standardFormat).format(newDate);

    await getDate(formattedDate);
    await fetchAttendance("", formattedDate);
  }

  DateTime parseCurrentDate() {
    final todayText = "Today, ${DateFormat(displayFormat).format(DateTime.now())}";
    
    if (state.date.startsWith("Today")) {
      return DateTime.now();
    }
    
    // Parse the date in standard format
    return DateFormat(standardFormat).parse(state.date);
  }

  Future<void> toggleSelectAll(bool isSelected) async {
    if (state.attendanceList != null) {
      final targetList = state.filteredAttendanceList ?? state.attendanceList!;
      final targetIds = targetList.map((e) => e.student).toSet();
      final newSelectedIds = Set<String>.from(state.selectedIds);
      if (isSelected) {
        newSelectedIds.addAll(targetIds);
      } else {
        newSelectedIds.removeAll(targetIds);
      }

      final updatedAttendanceList = syncListWithSelection(
        state.attendanceList!,
        newSelectedIds,
      );
      final updatedFilteredList = state.filteredAttendanceList != null
          ? syncListWithSelection(
              state.filteredAttendanceList!,
              newSelectedIds,
            )
          : null;

      state = state.copyWith(
        attendanceList: updatedAttendanceList,
        filteredAttendanceList: updatedFilteredList,
        isCheckedSelectAll: isSelected,
        isChecked: newSelectedIds.isNotEmpty,
        selectedIds: newSelectedIds,
      );
    }
  }

  // Helper method to get actual date in standard format
  String _getActualDate() {
    if (state.date.startsWith("Today")) {
      return DateFormat(standardFormat).format(DateTime.now());
    }
    // Date is already in standard format
    return state.date;
  }

  Future<void> updatedAttendanceList(bool isMarkPresent) async {
    try {
      final actualDate = _getActualDate();
      
      print("Posting attendance for date: $actualDate");
      
      final AttendanceUpdateResponse result = await _repository.postClassAttendance(
        sclass: "TS 25 CLASS 2 A",
        date: actualDate,
        absent_list: !isMarkPresent
            ? state.attendanceList!
                .where((student) =>
                    state.selectedIds.contains(student.student) &&
                    state.originalAttendanceList!.any((original) =>
                        original.student == student.student &&
                        original.attendanceStatus == ""))
                .map((student) => {
                      "student_id": student.student,
                      "student_name": student.studentName
                    })
                .toList()
            : [],
        present_list: isMarkPresent
            ? state.attendanceList!
                .where((student) =>
                    state.selectedIds.contains(student.student) &&
                    state.originalAttendanceList!.any((original) =>
                        original.student == student.student &&
                        original.attendanceStatus == ""))
                .map((student) => {
                      "student_id": student.student,
                      "student_name": student.studentName
                    })
                .toList()
            : [],
      );

      print("Attendance Update Response: ${result.message.message}");
      state = state.copyWith(isChecked: false);

      await fetchAttendance("", actualDate);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<void> individualUpdatedAttendanceList() async {
    state = state.copyWith(isLoading: true);
    try {
      final actualDate = _getActualDate();
      
      print("Posting individual attendance for date: $actualDate");
      
      final AttendanceUpdateResponse result = await _repository.postClassAttendance(
        sclass: "TS 25 CLASS 2 A",
        date: actualDate,
        absent_list: state.attendanceList!
            .where((student) => student.attendanceStatus == "Absent")
            .map((student) => {
                  "student_id": student.student,
                  "student_name": student.studentName
                })
            .toList(),
        present_list: state.attendanceList!
            .where((student) => student.attendanceStatus == "Present")
            .map((student) => {
                  "student_id": student.student,
                  "student_name": student.studentName
                })
            .toList(),
      );

      print("Attendance Update Response: ${result.message.message}");
      
      await fetchAttendance("", actualDate);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  bool isSelectAll() {
    final bool status = state.attendanceList != null &&
        state.attendanceList!.any((e) => e.attendanceStatus == "");
    return status;
  }

  greeting() {

   final currentTime = DateTime.now();
   final hour = currentTime.hour;
   String greeting = '';

   if(hour <12){
    greeting =  'Good Morning';
   }else if(hour < 17 ){
    greeting = 'Good Afternoon';
   }else {
    greeting =  'Good Evening';
   }

   state = state.copyWith(greetingText: greeting);
   
  }


}

final homeProvider = StateNotifierProvider<HomeViewModel, HomeState>(
  (ref) => HomeViewModel(ref.watch(homeRepositoryProvider)),
);

