import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

import '../../../../theme/colors/app_colors.dart';

Widget successBottomSheet(
  BuildContext context,
  int presentCount,
  int absentCount,
  String message,
) {
  return Container(
    width: double.infinity,
    height: 280.h,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
    ),
    child: Column(
      children: [
        LottieBuilder.asset(
          'assets/images/success.json',
          repeat: false,
          width: 100,
        ),
        Text(
          message,
          textAlign: TextAlign.center,
          style:TextStyle(
            fontSize: 20.sp,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 20.h),
        presentCount != 0
            ? Text(
                '$presentCount Student present',
                style: TextStyle(
                  color: Color(0xFF347936),
                  fontWeight: FontWeight.w600,
                ),
              )
            : SizedBox.shrink(),
        absentCount != 0
            ? Padding(
                padding: EdgeInsets.only(top: 5.h),
                child: Text(
                  '$absentCount Student absent',
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              )
            : SizedBox.shrink(),
        SizedBox(height: 20.h),
        InkWell(
          onTap: () => context.pop(),
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 32.w),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              color: AppColors.primary,
            ),
            child: Text(
              'Done',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
