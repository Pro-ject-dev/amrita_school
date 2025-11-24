import 'package:amrita_vidhyalayam_teacher/core/theme/colors/app_colors.dart';
import 'package:amrita_vidhyalayam_teacher/core/theme/icons/app_icons.dart';
import 'package:amrita_vidhyalayam_teacher/core/theme/images/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import '../viewmodel/auth_viewmodel.dart';
import 'package:lottie/lottie.dart';

class AuthPage extends ConsumerWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(authProvider);
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarIconBrightness: Brightness.light),
    );
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 500.h,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(32),
                bottomRight: Radius.circular(32),
              ),
              gradient: LinearGradient(
                begin: Alignment(0.50, -0.00),
                end: Alignment(0.50, 1.00),
                colors: [const Color(0xFF0B3160), const Color(0xFF1665C6)],
              ),
            ),
            child: SafeArea(
              maintainBottomViewPadding: true,
              minimum: EdgeInsets.symmetric(horizontal: 16.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: .spaceBetween,
                children: [
                  Image.asset(AppImages.app_logo, width: 100),
                  SizedBox(height: 20.h),
                  Column(
                    crossAxisAlignment: .start,
                    children: [
                      Text(
                        'Welcome Back',
                        style: TextStyle(fontSize: 20.sp, color: Colors.white),
                      ),
                      Text(
                        'Sign in and start managing your classroom.',
                        style: TextStyle(fontSize: 11.sp, color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(height: 15.h),
                  Center(
                    child: LottieBuilder.asset(
                      'assets/images/Abhifree.json',
                      width: 300,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 30.h),
          Padding(
  padding: EdgeInsets.symmetric(horizontal: 16.w), // was Container margin
  child: ElevatedButton(
    onPressed: () {
      context.go('/home');
    },
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.white,
      elevation: 0,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32),
        side: BorderSide(color: AppColors.grey300),
      ),
    ),
    child: Row(
      spacing: 20,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/Microsoft.png', width: 20.w),
        Text(
          'Sign in with Microsoft',
          style: TextStyle(
            fontSize: 15.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.grey900,
          ),
        ),
      ],
    ),
  ),
)
,
          SizedBox(height: 10.h),
          Text(
            'Contact support for account access.',
            style: TextStyle(
              fontSize: 10.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.grey500,
            ),
          ),
        ],
      ),
    );
  }
}
