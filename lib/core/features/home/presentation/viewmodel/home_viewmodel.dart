import 'dart:developer';
import 'dart:ui';
import 'package:amrita_vidhyalayam_teacher/core/features/home/data/models/today_puch_model.dart';
import 'package:amrita_vidhyalayam_teacher/core/features/home/data/repository/home_repository.dart';
import 'package:amrita_vidhyalayam_teacher/core/providers/common_providers.dart';
import 'package:amrita_vidhyalayam_teacher/core/shared/repository/employee_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:intl/intl.dart';
import 'package:riverpod/riverpod.dart';
import '../../../../shared/models/employee_model.dart' show PunchModel;
import 'home_state.dart';

class HomeViewModel extends StateNotifier<HomeState> {
  final EmployeeRepository repository;
  final Ref ref;

  HomeViewModel(this.repository, this.ref) : super(HomeState.initial());

  Future<void> getPunchDetails() async {
    state = state.copyWith(isLoading: true);

    var mail = await ref.read(storageServiceProvider).read("mail");
    log("mail id: $mail");

    if (mail == null || mail.isEmpty) {
      state = state.copyWith(
        isLoading: false,
        error: "Email not found. Please login again.",
      );
      return;
    }

    try {
      final data = await repository.getEmployeeDetails(mail: mail.toString());
      state = state.copyWith(punchData: data);

      final todayPunchData = await getTodayPunchDetail();
      state = state.copyWith(
        isLoading: false,
        error: null,
        todayData: todayPunchData,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: "Failed to fetch punch details: $e",
      );
    }
  }

  Future<TodayPuchModel> getTodayPunchDetail() async {
    final todayDate = DateFormat("yyyy-MM-dd")
    .format(DateTime(2025, 12, 1));

    // final todayDate = DateFormat("yyyy-MM-dd").format(DateTime.now());
    // log("Today: $todayDate");

    // final todayPunch = state.punchData?.punchList?.firstWhere(
    //   (e) => e.dateOfPunch =="2025-12-02",


    
    //   orElse: () => PunchModel(),
    // );

    final todayPunch = state.punchData?.punchList?.firstWhere(
      (e) => e.dateOfPunch ==todayDate,
      orElse: () => PunchModel(),
    );

    if (todayPunch == null) {
      return TodayPuchModel(
        checkInTime: "-- : --",
        checkInTimeStatus: "n/a",
        checkInStatus: "Not checked in",
        checkOutTime: "-- : --",
        checkOutTimeStatus: "n/a",
        checkOutStatus: "Not checked out",
      );
    }

    String formattedCheckIn = todayPunch.firstPunch != null
        ? convertTo12HourFromDate(DateTime.parse(todayPunch.firstPunch!))
        : "-- : --";

    String formattedCheckOut = todayPunch.lastPunch != null
        ? convertTo12HourFromDate(DateTime.parse(todayPunch.lastPunch!))
        : "-- : --";

    return TodayPuchModel(
      checkInTime: formattedCheckIn,
      checkInTimeStatus: todayPunch.inTimeStatus ?? "n/a",
      checkInStatus: todayPunch.firstPunch != null
          ? "Checked In"
          : "Not Checked In",

      checkOutTime: formattedCheckOut,
      checkOutTimeStatus: todayPunch.outTimeStatus ?? "n/a",
      checkOutStatus: todayPunch.lastPunch != null
          ? "Checked Out"
          : "Not Checked Out",
    );
  }

  greeting() {
    final currentTime = DateTime.now();
    final hour = currentTime.hour;
    String greeting = '';

    if (hour < 12) {
      greeting = 'Good Morning 👋!';
    } else if (hour < 17) {
      greeting = 'Good Afternoon 👋!';
    } else {
      greeting = 'Good Evening 👋!';
    }

    state = state.copyWith(greetingText: greeting);
  }
}

String convertTo12HourFromDate(DateTime time) {
  return DateFormat("hh:mm a").format(time);
}

  


Color getStatusColor(String? status) {
  switch (status?.toLowerCase()) {
    case "late":
      return Colors.red;
    case "early":
      return Colors.orange;  
    case "on time":
      return const Color(0xFF4CAF50); 
    default:
      return const Color.fromARGB(255, 204, 204, 204); 
  }
}

final homeProvider =
    StateNotifierProvider<HomeViewModel, HomeState>((ref) {
  final repository = ref.watch(employeeRepositoryProvider);
  return HomeViewModel(repository, ref);
});
