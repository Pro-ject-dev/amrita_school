import 'dart:async';
import 'package:amrita_vidhyalayam_teacher/core/features/student/presentation/widgets/student_card.dart';
import 'package:amrita_vidhyalayam_teacher/core/theme/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../viewmodel/student_viewmodel.dart';

class StudentPage extends ConsumerStatefulWidget {
  const StudentPage({super.key});

  @override
  ConsumerState<StudentPage> createState() => _StudentPageState();
}

class _StudentPageState extends ConsumerState<StudentPage> {
  final searchController = TextEditingController();
  Timer? searchDebounce;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(studentProvider.notifier).fetchStudent("");
    });
  }

  @override
  void dispose() {
    searchDebounce?.cancel();
    searchController.dispose();
    super.dispose();
  }

  void _onSearchChanged(String value) {
    searchDebounce?.cancel();
    searchDebounce = Timer(const Duration(milliseconds: 400), () {
      ref.read(studentProvider.notifier).fetchStudent(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(studentProvider);
    final theme = Theme.of(context);

    // Calculate attendance counts
    final presentCount = state.studentList
            ?.where((s) => s.attendanceStatus == "Present")
            .length ??
        0;
    final absentCount = state.studentList
            ?.where((s) => s.attendanceStatus != "Present")
            .length ??
        0;

    return Scaffold(
      // backgroundColor: Colors.white,
      body: Column(
        children: [
          // Header Section with Blue Background
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF0B3160),Color(0xFF0B3160)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(24),
                bottomRight: Radius.circular(24),
              ),
            ),
            child: SafeArea(
              bottom: false,
              child: Column(
                children: [
                  // AppBar
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                    child: Row(
                      children: [
                        Icon(LucideIcons.school300,color: Colors.white,),
                        SizedBox(width: 8.w),
                        Text(
                          "My Class",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
SizedBox(height: 10.h),
                  // Attendance Cards
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Row(
                      crossAxisAlignment: .center,
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(16),
                              // border: Border.all(
                              //   color: Colors.white.withOpacity(0.3),
                              //   width: 1,
                              // ),
                            ),
                            child: Column(
                              mainAxisAlignment: .center,
                              crossAxisAlignment: .start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        color: Colors.green,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Icon(
                                        LucideIcons.circleCheck,
                                        color: Colors.white,
                                        size: 16,
                                      ),
                                    ),
                                    SizedBox(width: 10.w),
                                    Column(
                                      mainAxisAlignment: .start,
                                      crossAxisAlignment: .start,
                                      children: [
                                        Text(
                                          "Present",
                                          style: TextStyle(
                                            color: Colors.white.withOpacity(0.9),
                                            fontSize: 11.sp,
                                          ),
                                        ),
                                         Text(
                                  "$presentCount",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8.h),
                               
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 12.w),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 222, 222, 222).withOpacity(0.1),
                              borderRadius: BorderRadius.circular(16),
                             
                            ),
                            child: Column(
                              mainAxisAlignment: .center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Icon(
                                        LucideIcons.circleX300,
                                        color: Colors.white,
                                        size: 16,
                                      ),
                                    ),
                                    SizedBox(width: 10.w),
                                    Column(
                                      crossAxisAlignment: .start,
                                      children: [
                                        Text(
                                          "Absent",
                                          style: TextStyle(
                                            color: Colors.white.withOpacity(0.9),
                                            fontSize: 11.sp,
                                          ),
                                        ),
                                        Text(
                                  "$absentCount",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8.h),
                                
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 16.h),

                  // Subtitle text
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Text(
                      "Quickly record who is present or absent.",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.9),
                        fontSize: 14.sp,
                      ),
                    ),
                  ),

                  SizedBox(height: 16.h),

                  // Take Attendance Button
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Container(
                      width: double.infinity,
                      height: 50.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 10,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: MaterialButton(
                        onPressed: () {
                          context.push("/attendance");
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          "Take Attendance",
                          style: TextStyle(
                            color: Color(0xff1E3A8A),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 24.h),
                ],
              ),
            ),
          ),

          // Student List Section
          Expanded(
            child: Column(
              children: [
                SizedBox(height: 20.h),

                // Student List Header
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Student List",
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          color: Color(0xffE0E7FF),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          "Student ${state.studentList?.length ?? 0}",
                          style: TextStyle(
                            color: Color(0xff1E3A8A),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 16.h),

                // Search Bar
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TextField(
                      controller: searchController,
                      onChanged: _onSearchChanged,
                      decoration: InputDecoration(
                        hintText: 'Search student',
                        hintStyle: TextStyle(
                          color: Colors.grey.shade400,
                          fontSize: 14.sp,
                        ),
                        prefixIcon: Icon(
                          LucideIcons.search,
                          color: AppColors.primary,
                          size: 20,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 16.h),

                // Student List
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Builder(
                      builder: (_) {
                        // Error state
                        if (state.error != null) {
                          return Center(
                            child: Text(
                              "Error: ${state.error}",
                              style: theme.textTheme.bodyMedium?.copyWith(
                                color: Colors.red,
                              ),
                            ),
                          );
                        }

                        // No students found
                        if (!state.isLoading &&
                            (state.studentList == null ||
                                state.studentList!.isEmpty)) {
                          return Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset('assets/images/new-unscreen.gif'),
                                SizedBox(height: 12.h),
                                Text(
                                  "No students found",
                                  style: theme.textTheme.titleMedium?.copyWith(
                                    color: Colors.grey.shade600,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          );
                        }

                        // List / skeleton state
                        return Skeletonizer(
                          enabled: state.isLoading,
                          child: ListView.builder(
                            padding: EdgeInsets.all(0),
                            physics: const ClampingScrollPhysics(),
                            itemCount: state.isLoading
                                ? 10
                                : (state.studentList?.length ?? 0),
                            itemBuilder: (context, index) {
                              if (state.isLoading) {
                                return const StudentCard(
                                  title: "Student Name",
                                  subtitle: "ID",
                                  isActiveColor: Colors.green,
                                );
                              }

                              final student = state.studentList![index];

                              return StudentCard(
                                title: student.studentName,
                                subtitle: student.student,
                                isActiveColor:
                                    student.attendanceStatus == "Present"
                                        ? Colors.green
                                        : Colors.red,
                              );
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}