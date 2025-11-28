import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

// TODO: Replace with your actual provider
final profileProvider = Provider((ref) => null);

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    // final state = ref.watch(profileProvider); // use when you connect API

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
            onPressed: () {
              // TODO: Add logout logic
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 12.h),

            /// Header
            const ProfileHeader(
              name: "Abhijith",
              role: "CO-Founder",
              initials: "AJ",
              status: "Active",
            ),

            SizedBox(height: 20.h),

            /// Profile Information
            InfoSectionCard(
              title: "Profile Information",
              items: const [
                InfoTile(
                  icon: LucideIcons.badgeCheck,
                  label: "Employee ID",
                  value: "HR-EMP-00001",
                ),
                InfoTile(
                  icon: LucideIcons.circleUser,
                  label: "Gender",
                  value: "Male",
                ),
                InfoTile(
                  icon: LucideIcons.cake,
                  label: "Date of Birth",
                  value: "25-11-2005",
                ),
                InfoTile(
                  icon: LucideIcons.calendar,
                  label: "Date of Joining",
                  value: "25-11-2025",
                ),
                InfoTile(
                  icon: LucideIcons.school,
                  label: "School",
                  value: "Test School",
                ),
                InfoTile(
                  icon: LucideIcons.briefcase,
                  label: "Employment Type",
                  value: "Full Time",
                ),
              ],
            ),

            SizedBox(height: 20.h),

            /// Attendance Section
            AttendanceSectionCard(
              title: "Recent Attendance",
              items: const [
                AttendanceTile(
                  date: "2025-11-23",
                  status: "Absent",
                  shift: "Test School",
                  lateEntry: "0 mins",
                  earlyExit: "0 mins",
                  isAbsent: true,
                ),
                AttendanceTile(
                  date: "2025-11-22",
                  status: "Present",
                  shift: "Test School",
                  lateEntry: "2 mins",
                  earlyExit: "0 mins",
                  isAbsent: false,
                ),
              ],
            ),

            SizedBox(height: 24.h),
          ],
        ),
      ),
    );
  }
}

// ---------------- PROFILE HEADER ----------------

class ProfileHeader extends StatelessWidget {
  final String name;
  final String role;
  final String initials;
  final String status;

  const ProfileHeader({
    super.key,
    required this.name,
    required this.role,
    required this.initials,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: EdgeInsets.all(20.sp),
      width: double.infinity,
      color: const Color(0xffF5F7FA),
      child: Row(
        children: [
          CircleAvatar(
            radius: 26.r,
            backgroundColor: Colors.blue.shade100,
            child: Text(
              initials,
              style: theme.textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.blue.shade800,
              ),
            ),
          ),
          SizedBox(width: 16.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: theme.textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: 18.sp,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  role,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    fontSize: 13.sp,
                    color: Colors.grey.shade600,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
            decoration: BoxDecoration(
              color: Colors.green.shade100,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              status,
              style: TextStyle(
                color: Colors.green.shade700,
                fontWeight: FontWeight.w600,
                fontSize: 12.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ---------------- INFO SECTION CARD ----------------

class InfoSectionCard extends StatelessWidget {
  final String title;
  final List<InfoTile> items;

  const InfoSectionCard({
    super.key,
    required this.title,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      padding: EdgeInsets.symmetric(vertical: 14.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Title
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Text(
              title,
              style: theme.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w700,
                fontSize: 17.sp,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 10.h),

          /// Items
          ...items,
        ],
      ),
    );
  }
}

class InfoTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const InfoTile({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(10.sp),
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, size: 20.sp, color: Colors.blue.shade700),
          ),
          SizedBox(width: 14.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: Colors.grey.shade600,
                  ),
                ),
                SizedBox(height: 2.h),
                Text(
                  value,
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
      ),
    );
  }
}

// ---------------- ATTENDANCE SECTION CARD ----------------

class AttendanceSectionCard extends StatelessWidget {
  final String title;
  final List<AttendanceTile> items;

  const AttendanceSectionCard({
    super.key,
    required this.title,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      padding: EdgeInsets.symmetric(vertical: 14.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          /// Header
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: 17.sp,
                    color: Colors.black,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // TODO: navigate to full attendance page
                  },
                  child: Text(
                    "View All",
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

          SizedBox(height: 6.h),

          /// Items
          ...items,
        ],
      ),
    );
  }
}

class AttendanceTile extends StatelessWidget {
  final String date;
  final String status;
  final String shift;
  final String lateEntry;
  final String earlyExit;
  final bool isAbsent;

  const AttendanceTile({
    super.key,
    required this.date,
    required this.status,
    required this.shift,
    required this.lateEntry,
    required this.earlyExit,
    required this.isAbsent,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isRed = isAbsent;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 14.w, vertical: 8.h),
      padding: EdgeInsets.all(16.sp),
      decoration: BoxDecoration(
        color: isRed ? Colors.red.shade50 : Colors.green.shade50,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: isRed ? Colors.red.shade200 : Colors.green.shade200,
        ),
      ),
      child: Column(
        children: [
          /// Date + Status
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    LucideIcons.calendar,
                    size: 18.sp,
                    color: Colors.grey.shade800,
                  ),
                  SizedBox(width: 6.w),
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
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
                decoration: BoxDecoration(
                  color: isRed ? Colors.red.shade100 : Colors.green.shade100,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  status,
                  style: TextStyle(
                    color: isRed ? Colors.red.shade700 : Colors.green.shade700,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),

          SizedBox(height: 14.h),

          /// Details
          _AttendanceDetailRow(
            icon: LucideIcons.building2,
            label: "Shift",
            value: shift,
          ),
          SizedBox(height: 6.h),
          _AttendanceDetailRow(
            icon: LucideIcons.clockAlert,
            label: "Late Entry",
            value: lateEntry,
          ),
          SizedBox(height: 6.h),
          _AttendanceDetailRow(
            icon: LucideIcons.clockArrowUp,
            label: "Early Exit",
            value: earlyExit,
          ),
        ],
      ),
    );
  }
}

class _AttendanceDetailRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const _AttendanceDetailRow({
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 15.sp, color: Colors.grey.shade600),
        SizedBox(width: 6.w),
        Text(
          "$label: ",
          style: TextStyle(
            fontSize: 12.sp,
            color: Colors.grey.shade600,
          ),
        ),
        Expanded(
          child: Text(
            value,
            style: TextStyle(
              fontSize: 13.sp,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
