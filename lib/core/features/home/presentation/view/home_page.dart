import 'package:amrita_vidhyalayam_teacher/core/theme/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

import '../../../../providers/common_providers.dart';
import '../../../attendance/presentation/widgets/confirmationDialog.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  ConsumerState<HomePage> createState() => HomePageState();
}

class HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarIconBrightness: Brightness.light),
    );
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg-test2.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.2),
              BlendMode.darken,
            ),
          ),
        ),
        child: Stack(
          children: [
            SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const HeaderSection(),
                  SizedBox(height: 5.h),
                  OverviewHeader(),
                  SizedBox(height: 55.h),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.r),
                          topRight: Radius.circular(30.r),
                        ),
                      ),
                      child: const RecentActivitiesSection(),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 220.h,
              left: 20.w,
              right: 20.w,
              child: Row(
                children: [
                  Expanded(child: CheckInCard()),
                  SizedBox(width: 12.w),
                  Expanded(child: CheckOutCard()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HeaderSection extends ConsumerStatefulWidget {
  const HeaderSection({Key? key}) : super(key: key);

  @override
  ConsumerState<HeaderSection> createState() => HeaderSectionState();
}

class HeaderSectionState extends ConsumerState<HeaderSection> {
  @override
  Widget build(BuildContext context) {
    final theme =   Theme.of(context);
    return Padding(
      padding: EdgeInsets.all(20.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/images/app_logo.png',
                height: 23.h,
                width: 100.w,
              ),
              InkWell(
                onTap: (){
                   confirmationDialog(
                            theme,
                            context,
                            "Log Out",
                            "Are you sure you want to log out of your account ?",
                            () {
                              ref.read(authViewModelProvider.notifier).logout();
                              context.go("/auth");
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    "Logged Out",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  behavior: SnackBarBehavior.floating,
                                  backgroundColor: const Color.fromARGB(
                                    255,
                                    112,
                                    112,
                                    112,
                                  ),
                                  duration: Duration(seconds: 3),
                                ),
                              );
                            },
                          );
                },
                child: Container(
                  padding: EdgeInsets.all(8.w),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    LucideIcons.logOut,
                    color: Colors.white,
                    size: 20.sp,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          Text(
            'Good Morning !',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 6.h),
          Text(
            'Time to do what you do best',
            style: TextStyle(color: Colors.white70, fontSize: 13.33.sp),
          ),
        ],
      ),
    );
  }
}

class OverviewHeader extends ConsumerStatefulWidget {
  const OverviewHeader({Key? key}) : super(key: key);

  @override
  ConsumerState<OverviewHeader> createState() => OverviewHeaderState();
}

class OverviewHeaderState extends ConsumerState<OverviewHeader> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Overview',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 8.h),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Row(
              children: [
                Icon(LucideIcons.calendarDays, size: 14.sp, color: AppColors.primary),
                SizedBox(width: 6.w),
                Text(
                  'Wed, Jul 22 2024',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
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

class CheckInCard extends ConsumerStatefulWidget {
  const CheckInCard({Key? key}) : super(key: key);

  @override
  ConsumerState<CheckInCard> createState() => CheckInCardState();
}

class CheckInCardState extends ConsumerState<CheckInCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      padding: EdgeInsets.all(8.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            spreadRadius: 0,
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 14.r,
                      backgroundColor: Color(0xffF4F6F8),
                      child: CircleAvatar(
                        radius: 10.r,
                        backgroundColor: Color(0xffB2B5E7),
                        child: Icon(
                          LucideIcons.arrowDownLeft300,
                          color: AppColors.primary,
                          size: 14.sp,
                        ),
                      ),
                    ),
                    SizedBox(width: 8.w),
                    Text(
                      'Check in',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: const Color(0xffF6F6F6)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(3.0.w),
                    child: Icon(
                      LucideIcons.ellipsisVertical300,
                      size: 15.sp,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.h),
          Container(
            decoration: BoxDecoration(
              color: Color(0xffFAFAFA),
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Padding(
              padding: EdgeInsets.all(4.0.w),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 6.w),
                    child: Text(
                      '9:10',
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  SizedBox(width: 2.w),
                  Text(
                    'AM',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(width: 8.w),
                  Container(
                    height: 16.h,
                    width: 1.w,
                    color: const Color(0xffC4C4C4),
                  ),
                  SizedBox(width: 8.w),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 6.w,
                      vertical: 3.h,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFF4CAF50),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Text(
                      'On time',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 12.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
            child: Text(
              'Checked in success',
              style: TextStyle(color: Color(0xff7C8489), fontSize: 13.sp),
            ),
          ),
        ],
      ),
    );
  }
}

class CheckOutCard extends ConsumerStatefulWidget {
  const CheckOutCard({Key? key}) : super(key: key);

  @override
  ConsumerState<CheckOutCard> createState() => CheckOutCardState();
}

class CheckOutCardState extends ConsumerState<CheckOutCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      padding: EdgeInsets.all(8.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            spreadRadius: 0,
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 14.r,
                      backgroundColor: Color(0xffF4F6F8),
                      child: CircleAvatar(
                        radius: 10.r,
                        backgroundColor: Color(0xffB2B5E7),
                        child: Icon(
                          LucideIcons.arrowUpRight300,
                          color: AppColors.primary,
                          size: 14.sp,
                        ),
                      ),
                    ),
                    SizedBox(width: 8.w),
                    Text(
                      'Check out',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: const Color(0xffF6F6F6)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(3.0.w),
                    child: Icon(
                      LucideIcons.ellipsisVertical300,
                      size: 15.sp,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.h),
          Container(
            decoration: BoxDecoration(
              color: Color(0xffFAFAFA),
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Padding(
              padding: EdgeInsets.all(4.0.w),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 6.w),
                    child: Text(
                      '-- : --',
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  SizedBox(width: 8.w),
                  Container(
                    height: 16.h,
                    width: 1.w,
                    color: const Color(0xffC4C4C4),
                  ),
                  SizedBox(width: 8.w),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffC4C4C4)),
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 6.w,
                        vertical: 2.h,
                      ),
                      child: Text(
                        'n/a',
                        style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 12.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
            child: Text(
              "It's not time yet",
              style: TextStyle(color: Color(0xff7C8489), fontSize: 13.sp),
            ),
          ),
        ],
      ),
    );
  }
}

class RecentActivitiesSection extends ConsumerStatefulWidget {
  const RecentActivitiesSection({Key? key}) : super(key: key);

  @override
  ConsumerState<RecentActivitiesSection> createState() =>
      RecentActivitiesSectionState();
}

class RecentActivitiesSectionState
    extends ConsumerState<RecentActivitiesSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 80.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recent Activities',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'View all day',
                  style: TextStyle(
                    color: AppColors.primary,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h),

          Expanded(
            child: ListView.separated(itemCount: 5, 
            separatorBuilder: (context, index) {
              return SizedBox(height: 20.h);
            },
            shrinkWrap: true,
            itemBuilder: (BuildContext context,int index){
              
              return ActivityItem(
              date: '22 Nov 2025',
              shift: 'Shift : Morning',
              status: 'Absent',
            );
            }),
          )
          
        ],
      ),
    );
  }
}

class ActivityItem extends ConsumerStatefulWidget {
  final String date;
  final String shift;
  final String status;

  const ActivityItem({
    Key? key,
    required this.date,
    required this.shift,
    required this.status,
  }) : super(key: key);

  @override
  ConsumerState<ActivityItem> createState() => ActivityItemState();
}

class ActivityItemState extends ConsumerState<ActivityItem> {
  @override
  Widget build(BuildContext context) {
    final bool isAbsent = widget.status == 'Absent';

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: Colors.grey.withOpacity(0.15), width: 1),
      ),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.w),
            child: Row(
              children: [
                Card(
                  elevation: 0.3,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(8.0.w),
                    child: Icon(
                      LucideIcons.clockFading,
                      color: Color(0xff737373),
                      size: 15.sp,
                    ),
                  ),
                ),
                SizedBox(width: 14.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.date,
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        widget.shift,
                        style: TextStyle(
                          fontSize: 13.sp,
                          color: Color(0xff7C8489),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 3.h),
              decoration: BoxDecoration(
                gradient: !isAbsent
                    ? LinearGradient(
                        colors: [Color(0xff4CAF50), Color(0xff204921)],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      )
                    : LinearGradient(
                        colors: [Color(0xffE53935), Color(0xff7F201D)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16.r),
                  bottomLeft: Radius.circular(12.r),
                ),
              ),
              child: Text(
                isAbsent ? "Absent" : "Present",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}