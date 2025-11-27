import 'package:amrita_vidhyalayam_teacher/core/theme/colors/app_colors.dart';
import 'package:amrita_vidhyalayam_teacher/core/theme/strings/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import '../viewmodel/profile_viewmodel.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(profileProvider);
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: const Color(0xffF5F7FA),
      appBar: AppBar(
        elevation: 0,

        backgroundColor: const Color(0xffF5F7FA),
        title: Text(
          "Profile",
          style: theme.textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w600,
            fontSize: 20.sp,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(LucideIcons.logOut, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header Card with Avatar and Basic Info
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xffF5F7FA),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 22.r,
                    child: Text(
                      'AJ',
                      style: theme.textTheme.headlineSmall?.copyWith(
                        fontSize: 16.sp,
                        // color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(width: 16.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Abhijith',
                          style: theme.textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: 18.sp,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 4.h),
                        Text(
                          'CO-Founder',
                          style: theme.textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 13.sp,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 12.w,
                      vertical: 5.h,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.green.shade50,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.green.shade200),
                    ),
                    child: Text(
                      'Active',
                      style: TextStyle(
                        color: Colors.green.shade700,
                        fontWeight: FontWeight.w600,
                        fontSize: 11.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 16.h),

            // Profile Information Card
            _buildInfoCard(
              context: context,
              theme: theme,
              title: 'Profile Information',
              items: [
                _InfoItem(
                  icon: LucideIcons.badgeCheck,
                  label: 'Employee ID',
                  value: 'HR-EMP-00001',
                  iconColor: Colors.blue,
                ),

                _InfoItem(
                  icon: LucideIcons.circleUser,
                  label: 'Gender',
                  value: 'Male',
                  iconColor: Colors.orange,
                ),
                _InfoItem(
                  icon: LucideIcons.cake,
                  label: 'Date of Birth',
                  value: '25-11-2005',
                  iconColor: Colors.pink,
                ),
                _InfoItem(
                  icon: LucideIcons.calendar,
                  label: 'Date of Joining',
                  value: '25-11-2025',
                  iconColor: Colors.green,
                ),
                _InfoItem(
                  icon: LucideIcons.school,
                  label: 'School',
                  value: 'Test Schools',
                  iconColor: Colors.indigo,
                ),
                _InfoItem(
                  icon: LucideIcons.briefcase,
                  label: 'Employment Type',
                  value: 'Full Time',
                  iconColor: Colors.teal,
                ),
                
              ],
            ),
           
            SizedBox(height: 16.h),

            // Attendance History Card
            _buildAttendanceCard(context: context, theme: theme),

            SizedBox(height: 24.h),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard({
    required BuildContext context,
    required ThemeData theme,
    required String title,
    required List<_InfoItem> items,
  }) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(20.sp),
            child: Text(
              title,
              style: theme.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w700,
                fontSize: 18.sp,
                color: Colors.black,
              ),
            ),
          ),
          const Divider(height: 1),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.all(16.sp),
            itemCount: items.length,
            separatorBuilder: (context, index) => SizedBox(height: 16.h),
            itemBuilder: (context, index) {
              final item = items[index];
              return Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10.sp),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(62, 105, 105, 105),
                          blurRadius: 4,
                          offset: Offset(0, 0),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Icon(
                      item.icon,
                      size: 20.sp,
                      // color: Colors.white,
                      color: AppColors.primary,
                    ),
                  ),
                  SizedBox(width: 16.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.label,
                          style: theme.textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                            color: Colors.grey.shade600,
                          ),
                        ),
                        SizedBox(height: 2.h),
                        Text(
                          item.value,
                          style: theme.textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 15.sp,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildAttendanceCard({
    required BuildContext context,
    required ThemeData theme,
  }) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(20.sp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recent Attendance',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: 18.sp,
                    color: Colors.black,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'View All',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(height: 1),
          ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.all(16.sp),
            children: [
              _buildAttendanceItem(
                theme: theme,
                date: '2025-11-23',
                status: 'Absent',
                shift: 'Test Schools',
                lateEntry: '0 mins',
                earlyExit: '0 mins',
                isAbsent: true,
              ),
              SizedBox(height: 12.h),
              _buildAttendanceItem(
                theme: theme,
                date: '2025-11-22',
                status: 'Absent',
                shift: 'Test Schools',
                lateEntry: '0 mins',
                earlyExit: '0 mins',
                isAbsent: true,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildAttendanceItem({
    required ThemeData theme,
    required String date,
    required String status,
    required String shift,
    required String lateEntry,
    required String earlyExit,
    bool isAbsent = false,
  }) {
    return Container(
      padding: EdgeInsets.all(16.sp),
      decoration: BoxDecoration(
        color: isAbsent ? Colors.red.shade50 : Colors.green.shade50,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: isAbsent ? Colors.red.shade200 : Colors.green.shade200,
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    LucideIcons.calendar,
                    size: 18.sp,
                    color: Colors.grey.shade700,
                  ),
                  SizedBox(width: 8.w),
                  Text(
                    date,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 15.sp,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
                decoration: BoxDecoration(
                  color: isAbsent ? Colors.red.shade100 : Colors.green.shade100,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  status,
                  style: TextStyle(
                    color: isAbsent
                        ? Colors.red.shade700
                        : Colors.green.shade700,
                    fontWeight: FontWeight.w700,
                    fontSize: 12.sp,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Row(
            children: [
              Expanded(
                child: _buildAttendanceDetail(
                  theme: theme,
                  icon: LucideIcons.building2,
                  label: 'Shift',
                  value: shift,
                ),
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Row(
            children: [
              Expanded(
                child: _buildAttendanceDetail(
                  theme: theme,
                  icon: LucideIcons.clockAlert,
                  label: 'Late Entry',
                  value: lateEntry,
                ),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: _buildAttendanceDetail(
                  theme: theme,
                  icon: LucideIcons.clockArrowUp,
                  label: 'Early Exit',
                  value: earlyExit,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildAttendanceDetail({
    required ThemeData theme,
    required IconData icon,
    required String label,
    required String value,
  }) {
    return Row(
      children: [
        Icon(icon, size: 14.sp, color: Colors.grey.shade600),
        SizedBox(width: 6.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: theme.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w400,
                fontSize: 11.sp,
                color: Colors.grey.shade600,
              ),
            ),
            Text(
              value,
              style: theme.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 13.sp,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _InfoItem {
  final IconData icon;
  final String label;
  final String value;
  final Color iconColor;

  _InfoItem({
    required this.icon,
    required this.label,
    required this.value,
    required this.iconColor,
  });
}
