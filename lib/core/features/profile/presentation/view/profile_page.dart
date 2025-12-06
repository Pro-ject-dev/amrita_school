import 'package:amrita_vidhyalayam_teacher/core/features/profile/presentation/viewmodel/profile_viewmodel.dart';
import 'package:amrita_vidhyalayam_teacher/core/theme/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

import '../../../../providers/common_providers.dart';
import '../../../attendance/presentation/widgets/confirmationDialog.dart';


class ProfilePage extends ConsumerStatefulWidget {
const ProfilePage({Key? key}) : super(key: key);

  @override
  ConsumerState<ProfilePage> createState() => ProfilePageState();
}

class ProfilePageState extends ConsumerState<ProfilePage> {

  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(profileProvider.notifier).getProfile();
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    final theme = Theme.of(context);
     final state = ref.watch(profileProvider);
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            shape: ContinuousRectangleBorder(
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30))),
            expandedHeight: 260.h,
            pinned: true,
            backgroundColor: AppColors.primary,
            automaticallyImplyLeading: false,
            elevation: 0,
            actions: [
              IconButton(
                icon: const Icon(LucideIcons.logOut, color: Colors.white),
                onPressed: () {
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
              ),
            ],
            flexibleSpace: LayoutBuilder(
              builder: (context, constraints) {
                final top = constraints.biggest.height;
                final double collapsedHeight = kToolbarHeight + MediaQuery.of(context).padding.top;
                final double expandedHeight = 280.h;
                final scrollPercentage = ((top - collapsedHeight) /
                        (expandedHeight - collapsedHeight))
                    .clamp(0.0, 1.0);
                return FlexibleSpaceBar(
                  centerTitle: true,
                  expandedTitleScale: 1.0,
                  titlePadding: const EdgeInsets.only(bottom: 16),
                  title: Opacity(
                    opacity: scrollPercentage < 0.2 ? 1.0 - (scrollPercentage * 5) : 0.0,
                    child: Text(
                      "Profile",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),

                  background: ClipRRect(
                     borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30.r),bottomRight: Radius.circular(80.r)),
                    child: Container(
                      decoration: BoxDecoration(
                           color: AppColors.primary,
                    

                      ),
                                 
                      child: SafeArea(
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                    
                            /// EXPANDED HEADER CONTENT (show only when expanded)
                            if (scrollPercentage > 0.15)
                              Opacity(
                                opacity: scrollPercentage,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 20.h),
                                    CircleAvatar(
                                      radius: 45.r,
                                      backgroundColor: Colors.white,
                                      child: Text(
                                       state.data?.empData?.employeeName?[0]??"N/A",
                                        style: TextStyle(
                                          fontSize: 32.sp,
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.primary,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 12.h),
                                    Text(
                                      state.data?.empData?.employeeName ??"Not Found",
                                      style: TextStyle(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(height: 4.h),
                                    Text(
                                     state.data?.empData?.designation ??"Not Found",
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        color: Colors.white70,
                                      ),
                                    ),
                                    SizedBox(height: 10.h),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 16.w, vertical: 6.h),
                                      decoration: BoxDecoration(
                                        color:state.data?.empData?.status=="Active"? Colors.green:Colors.red,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(Icons.circle,
                                              size: 8.sp, color: Colors.white),
                                          SizedBox(width: 6.w),
                                          Text(
                                            state.data?.empData?.status ??"Not Found",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12.sp,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

          /// CONTENT
          SliverPadding(
            padding: EdgeInsets.only(top: 36.h, bottom: 30.h),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                MaterialCard(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SectionHeader(
                        title: "Profile Information",
                        icon: LucideIcons.user,
                      ),
                      SizedBox(height: 16.h),
                      InfoRow(
                        icon: LucideIcons.badgeCheck,
                        label: "Employee ID",
                        value:state.data?.empData?.empId??"Not Found" ,
                      ),
                      _Divider(),
                      SizedBox(height: 16.h),
                      InfoRow(
                        icon: LucideIcons.mail,
                        label: "Employee mail",
                        value: state.mail.toString() 
                      ),
                      _Divider(),
                      InfoRow(
                        icon: LucideIcons.circleUser,
                        label: "Gender",
                        value: state.data?.empData?.empId??"Not Found" ,
                      ),
                      _Divider(),
                      InfoRow(
                        icon: LucideIcons.cake,
                        label: "Date of Birth",
                        value: state.data?.empData?.dateOfBirth??"Not Found" ,
                      ),
                      _Divider(),
                      InfoRow(
                        icon: LucideIcons.calendar,
                        label: "Date of Joining",
                        value: state.data?.empData?.dateOfJoining??"Not Found" ,
                      ),
                      _Divider(),
                      InfoRow(
                        icon: LucideIcons.school,
                        label: "School",
                        value: state.data?.empData?.school??"Not Found" ,
                      ),
                      _Divider(),
                      InfoRow(
                        icon: LucideIcons.briefcase,
                        label: "Employment Type",
                        value: state.data?.empData?.employmentType??"Not Found" ,
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}

// ---------------- CARD ----------------

class MaterialCard extends StatelessWidget {
  final Widget child;
  const MaterialCard({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      child: Material(
        elevation: 2,
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: EdgeInsets.all(16.sp),
          child: child,
        ),
      ),
    );
  }
}

// ---------------- SECTION HEADER ----------------

class SectionHeader extends StatelessWidget {
  final String title;
  final IconData icon;
  const SectionHeader({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(8.sp),
          decoration: BoxDecoration(
            color: AppColors.primary.withOpacity(0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, size: 20.sp, color: AppColors.primary),
        ),
        SizedBox(width: 12.w),
        Text(
          title,
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

// ---------------- INFO ROW ----------------

class InfoRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  const InfoRow({required this.icon, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.h),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(8.sp),
            decoration: BoxDecoration(
              color: AppColors.primary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(icon, size: 18.sp, color: AppColors.primary),
          ),
          SizedBox(width: 16.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.grey.shade600,
                  ),
                ),
                SizedBox(height: 2.h),
                Text(
                  value,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
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

// ---------------- DIVIDER ----------------

class _Divider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Divider(height: 1, color: Colors.grey.shade200);
  }
}
