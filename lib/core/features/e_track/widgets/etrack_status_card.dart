import 'package:amrita_vidhyalayam_teacher/core/theme/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class EtrackStatusCard extends StatelessWidget {
  const EtrackStatusCard({
    super.key,
    required this.title,
    required this.count,
    required this.isPresent,
  });

  final String title;
  final String count;
  final bool isPresent;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Row(
        children: [
          /// ICON CONTAINER
          Container(
            padding: EdgeInsets.all(8.w),
            decoration: BoxDecoration(
              color: isPresent ? AppColors.secondary : Colors.red,
              borderRadius: BorderRadius.circular(32.r),
            ),
            child: Icon(
              isPresent
                  ? LucideIcons.circleCheck
                  : LucideIcons.circleX,
              color: Colors.white,
              size: 20.sp,
            ),
          ),

          SizedBox(width: 12.w),

          /// TEXT CONTENT
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: const Color(0xff98aaba),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),

              SizedBox(height: 4.h),

              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    count,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 4.w),
                  Text(
                    'Days',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
