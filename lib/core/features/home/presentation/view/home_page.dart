import 'package:amrita_vidhyalayam_teacher/core/features/home/presentation/widgets/student_card.dart';
import 'package:amrita_vidhyalayam_teacher/core/theme/colors/app_colors.dart';
import 'package:amrita_vidhyalayam_teacher/core/theme/icons/app_icons.dart';
import 'package:amrita_vidhyalayam_teacher/core/theme/images/app_images.dart';
import 'package:amrita_vidhyalayam_teacher/core/theme/strings/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../data/models/attendance_model.dart';
import '../viewmodel/home_viewmodel.dart';
import  'package:lucide_icons_flutter/lucide_icons.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(homeProvider.notifier).fetchAttendance();
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final homeState = ref.watch(homeProvider);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                // ===== TOP BLUE AREA =====
                Container(
                  height: 220.h,
                  width: double.infinity,
                  color: theme.primaryColor,
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 40.h),

                      // Top Row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(AppImages.app_logo, width: 100.w),
                          SvgPicture.asset(
                            AppIcons.user,
                            width: 20.w,
                            height: 20.h,
                          ),
                        ],
                      ),

                      SizedBox(height: 22.h),

                      Text(
                        AppStrings.welcome_title,
                        style: theme.textTheme.headlineSmall?.copyWith(
                          fontSize: 20.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 8.h),

                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          color: Color(0xff254671),
                        ),
                        child: Text(
                          AppStrings.class_txt,
                          style: theme.textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 12.sp,
                            color: Colors.white,
                          ),
                        ),
                      ),

                      SizedBox(height: 10.h),

                      Divider(color: Colors.white30, thickness: 0..h),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: SvgPicture.asset(
                                    AppIcons.calendar_left,
                                    width: 20.w,
                                    height: 20.h,
                                  ),
                                ),

                                Text(
                                  "Today, Nov 20",
                                  style: theme.textTheme.bodyMedium?.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                    fontSize: 13.67.sp,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: SvgPicture.asset(
                                    AppIcons.calendar_right,
                                    width: 20.w,
                                    height: 20.h,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(
                            height: 30.h,
                            child: VerticalDivider(
                              thickness: 1,
                              color: Colors.white30,
                            ),
                          ),

                          // SizedBox(width: 5.w),
                          IconButton(
                            onPressed: () {
                              // Show calendar picker
                              showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2020),
                                lastDate: DateTime(2030),
                                builder: (context, child) {
                                  return Theme(
                                    data: Theme.of(context).copyWith(
                                      colorScheme: const ColorScheme.light(
                                        primary: AppColors.primary,
                                      ),
                                      textButtonTheme: TextButtonThemeData(
                                        style: TextButton.styleFrom(
                                          foregroundColor: AppColors.primary,
                                        ),
                                      ),
                                    ),
                                    child: child!,
                                  );
                                },
                              );
                            },
                            icon: SvgPicture.asset(
                              AppIcons.calendar,
                              width: 20.w,
                              height: 20.h,
                            ),
                          ),
                          SizedBox(width: 2.w),
                        ],
                      ),
                    ],
                  ),
                ),
                // ===== BOTTOM WHITE ROUNDED CONTAINER =====
                Container(
                  margin: EdgeInsets.only(top: 200.h),
                  padding: EdgeInsets.only(top: 16.w, left: 16.w, right: 16.w),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: theme.scaffoldBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24.r),
                      topRight: Radius.circular(24.r),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10.h),
                      Text(
                        "Student List (${homeState.attendanceList?.length ?? 0})",
                        style: theme.textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 20.sp,
                        ),
                      ),

                      SizedBox(height: 10.h),

                      Container(
                        // margin: EdgeInsets.only(bottom: 14.h),
                      //  padding: EdgeInsets.all(10.w),
                      //   decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(16.r),
                      //     border: Border.all(color: Colors.grey.shade300),
                      //     color: Colors.white,
                      //   ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MaterialButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.r),
                              ),
                              color: theme.primaryColor,
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Mark All Present",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 20.w),
                            MaterialButton(
                              onPressed: () {},
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.r),
                              ),
                              color: Colors.red,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Mark All Absent",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 15.h),

                      // Search box
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(color: Colors.grey.shade300),
                          color: Colors.grey.shade100,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search student",
                            hintStyle: TextStyle(
                              color: const Color.fromARGB(255, 202, 202, 202),
                              fontSize: 13.sp,
                              fontWeight: FontWeight.bold,
                            ),
                            border: InputBorder.none,
                            icon: SvgPicture.asset(
                              AppIcons.search,
                              width: 18.w,
                              height: 18.h,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 15.h),
                      if (homeState.error != null)
                        Center(child: Text("Error: ${homeState.error}"))
                      else
                        Skeletonizer(
                          enabled: homeState.isLoading,
                          child: SizedBox(
                            height: 370.h,
                            child: ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              padding: EdgeInsets.all(0),
                              itemCount: homeState.isLoading
                                  ? 10
                                  : (homeState.attendanceList?.length ?? 0),
                              itemBuilder: (_, i) {
                                final student = homeState.isLoading
                                    ? const StudentAttendance(
                                        student: "Student Name",
                                        attendanceStatus: "Present",
                                        attendanceOn: "2024-01-01",
                                      )
                                    : homeState.attendanceList![i];
                                return StudentCard(
                                  name: student.student,
                                  id: student.student,
                                  imageUrl:
                                      "https://i.pravatar.cc/150?img=${i + 1}",
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
          ],
        ),
      ),

      // ===== BOTTOM NAV BAR =====
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        backgroundColor: theme.primaryColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.home, width: 20.w, height: 20.h),
            label: AppStrings.b_nav_1,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppIcons.students,
              width: 20.w,
              height: 20.h,
            ),
            label: AppStrings.b_nav_2,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.reports, width: 20.w, height: 20.h),
            label: AppStrings.b_nav_3,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.profile, width: 20.w, height: 20.h),
            label: AppStrings.b_nav_4,
          ),
        ],
      ),
    );
  }
}
