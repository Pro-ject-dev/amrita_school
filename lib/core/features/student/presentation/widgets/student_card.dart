import 'package:amrita_vidhyalayam_teacher/core/theme/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class StudentCard extends StatelessWidget {
  const StudentCard({super.key, required this.title, required this.subtitle, required this.isActiveColor});
  final String title;
  final String subtitle;
  final Color isActiveColor;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      margin: EdgeInsets.only(bottom: 10.h),
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        // border: Border.all(color: Colors.grey.shade300),
        color: Colors.white,
      ),
      child: Row(
        children: [
          /// Student Image
          Stack(
            alignment: AlignmentGeometry.bottomRight,
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 2, color: AppColors.primary),
                ),
                child: CircleAvatar(
                  radius: 22.r,
                  child: Text(
                    'AJ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  // child: Image.asset("assets/images/student.gif"),
                ),
              ),
              Positioned(
                right: 2,
                bottom: 1,
                child: CircleAvatar(radius: 7, backgroundColor: isActiveColor),
              ),
            ],
          ),

          SizedBox(width: 12.w),

          /// Name & ID (static)
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  subtitle,
                  style: TextStyle(fontSize: 13, color: Colors.grey),
                ),
              ],
            ),
          ),

          /// Right-side Lucide Chevron
          Icon(LucideIcons.chevronRight, color: Colors.grey),
        ],
      ),
    );
  }
}
