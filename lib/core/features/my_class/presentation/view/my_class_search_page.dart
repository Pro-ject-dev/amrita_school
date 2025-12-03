import 'dart:async';
import 'package:amrita_vidhyalayam_teacher/core/features/my_class/presentation/widgets/student_card.dart';
import 'package:amrita_vidhyalayam_teacher/core/theme/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../viewmodel/my_class_viewmodel.dart';

class MyClassSearchPage extends ConsumerStatefulWidget {
  const MyClassSearchPage({super.key});

  @override
  ConsumerState<MyClassSearchPage> createState() => _MyClassSearchPageState();
}

class _MyClassSearchPageState extends ConsumerState<MyClassSearchPage> {
  final searchController = TextEditingController();
  final searchFocus = FocusNode();
  Timer? searchDebounce;

  @override
  void initState() {
   
     searchFocus.requestFocus();
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
    final presentCount =
        state.studentList
            ?.where((s) => s.attendanceStatus == "Present")
            .length ??
        0;
    final absentCount =
        state.studentList
            ?.where((s) => s.attendanceStatus == "Absent")
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
                colors: [Color(0xFF0B3160), Color(0xFF0B3160)],
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
              child:  Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 20.h),
                  child: Row(
                    crossAxisAlignment: .center,
                    children: [
                      InkWell(
                        onTap: (){
                             context.pop();
                        },
                        child: Container(
                          height: 45.h,
                          width: 45.w,
                          decoration: BoxDecoration(shape: BoxShape.rectangle,   color:Colors.white,borderRadius: BorderRadius.circular(12.sp)),
                                            
                          child:Icon( LucideIcons.circleArrowLeft300,color: AppColors.primary)),
                      ),
                        SizedBox(width: 10.w,),
                      Flexible(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 16.w),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            border: Border.all(color: Colors.grey.shade300),
                            color: Colors.grey.shade100,
                          ),
                          child: TextField(
                            controller: searchController,
                           onChanged: ((val)=>  _onSearchChanged(val)),
                           focusNode: searchFocus,
                           
                            decoration: InputDecoration(
                              hintText: "Search student",
                              hintStyle: TextStyle(
                                color: Color.fromARGB(255, 202, 202, 202),
                                fontSize: 13.sp,
                                fontWeight: FontWeight.bold,
                              ),
                              border: InputBorder.none,
                              icon:Icon( LucideIcons.search300)
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
            ),
          ),

          // Student List Section
          Expanded(
            child: Column(
              children: [
               
                SizedBox(height: 20.h),
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
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
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
