import 'package:amrita_vidhyalayam_teacher/core/theme/icons/app_icons.dart';
import 'package:amrita_vidhyalayam_teacher/core/theme/images/app_images.dart';
import 'package:amrita_vidhyalayam_teacher/core/theme/strings/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarIconBrightness: Brightness.light),
    );

    return Scaffold(
      body: Column(
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
                        fontSize: 17.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 8.h),

                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                      color: Color(0xff254671)
                      ),
                      child: Text(
                        AppStrings.welcome_subtitle,
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
                              SvgPicture.asset(
                                AppIcons.calendar_left,
                                width: 20.w,
                                height: 20.h,
                              ),
                              Text(
                                "Today, Nov 20",
                                style: theme.textTheme.bodyMedium?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                              SvgPicture.asset(
                                AppIcons.calendar_right,
                                width: 20.w,
                                height: 20.h,
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
                        SizedBox(width: 15.w),

                        SvgPicture.asset(
                          AppIcons.calendar,
                          width: 20.w,
                          height: 20.h,
                        ),
                        SizedBox(width: 15.w),
                      ],
                    ),
                  ],
                ),
              ),
              // ===== BOTTOM WHITE ROUNDED CONTAINER =====
              Container(
                margin: EdgeInsets.only(top: 185.h),
                padding: EdgeInsets.all(16.w),
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
                      "Student List (50)",
                      style: theme.textTheme.headlineMedium?.copyWith(
                        fontWeight: FontWeight.w800,
                      ),
                    ),

                    SizedBox(height: 10.h),

                    // Search box
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        border: Border.all(color: Colors.grey.shade300),
                        color: Colors.grey.shade100,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search student",
                          hintStyle: TextStyle(
                            color: const Color.fromARGB(255, 202, 202, 202),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          ),
                          border: InputBorder.none,
                          icon: SvgPicture.asset(
                            AppIcons.search,
                            width: 20,
                            height: 20,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 15.h),
                    SizedBox(
                      height: 275.h,
                      child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        padding: EdgeInsets.all(0),
                        itemCount: 10,
                        itemBuilder: (_, i) {
                          return StudentCard(
                            name: "Abhijith J",
                            id: "123456789",
                            imageUrl: "https://i.pravatar.cc/150?img=${i + 1}",
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: .center,

            children: [
              MaterialButton(
                color: theme.primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 13.0,
                    horizontal: 30.0,
                  ),
                  child: Text(
                    "Mark Attendance ",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ],
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
            icon: SvgPicture.asset(AppIcons.home, width: 20.w),
            label: AppStrings.b_nav_1,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.students, width: 20.w),
            label: AppStrings.b_nav_2,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.reports, width: 20.w),
            label: AppStrings.b_nav_3,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.profile, width: 20.w),
            label: AppStrings.b_nav_4,
          ),
        ],
      ),
    );
  }
}

class StudentCard extends StatefulWidget {
  final String name;
  final String id;
  final String imageUrl;

  const StudentCard({
    super.key,
    required this.name,
    required this.id,
    required this.imageUrl,
  });

  @override
  State<StudentCard> createState() => _StudentCardState();
}

class _StudentCardState extends State<StudentCard> {
  bool isPresent = false;
  bool isAbsent = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      margin: EdgeInsets.only(bottom: 14.h),
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: Colors.grey.shade300),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Checkbox(
            value: isPresent || isAbsent,
            onChanged: (_) {},
            fillColor: WidgetStateProperty.resolveWith((states) {
              return Colors.white;
            }),
            side: WidgetStateBorderSide.resolveWith((states) {
              return BorderSide(color: theme.primaryColor, width: 1);
            }),
            checkColor: theme.primaryColor,
            visualDensity: VisualDensity.comfortable,

            materialTapTargetSize: MaterialTapTargetSize.padded,
          ),

          CircleAvatar(
            radius: 22.r,
            backgroundImage: NetworkImage(widget.imageUrl),
          ),

          SizedBox(width: 12.w),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  widget.id,
                  style: TextStyle(color: Colors.grey.shade700, fontSize: 13),
                ),
              ],
            ),
          ),

          GestureDetector(
            onTap: () {
              setState(() {
                isPresent = true;
                isAbsent = false;
              });
            },
            child: CircleAvatar(
              radius: 20.r,
              backgroundColor: isPresent
                  ? Colors.green.withOpacity(0.15)
                  : Colors.grey.shade200,
              child: Icon(
                Icons.check_circle,
                color: isPresent ? Colors.green : Colors.grey,
              ),
            ),
          ),

          SizedBox(width: 10.w),

          GestureDetector(
            onTap: () {
              setState(() {
                isAbsent = true;
                isPresent = false;
              });
            },
            child: CircleAvatar(
              radius: 20.r,
              backgroundColor: isAbsent
                  ? Colors.red.withOpacity(0.15)
                  : Colors.grey.shade200,
              child: Icon(
                Icons.cancel,
                color: isAbsent ? Colors.red : Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
