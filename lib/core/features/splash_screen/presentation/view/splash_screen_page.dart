import 'package:amrita_vidhyalayam_teacher/core/features/splash_screen/presentation/viewmodel/splash_screen_state.dart';
import 'package:amrita_vidhyalayam_teacher/core/theme/images/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../viewmodel/splash_screen_viewmodel.dart';

class SplashScreenPage extends ConsumerWidget {
  const SplashScreenPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<SplashScreenState>(splashScreenProvider, (previous, next) {
      if (next.isFinished) {
        context.go('/auth');
      }
    });

    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(AppImages.app_logo_primary, width: 200.w),
            SizedBox(height: 10.h),
            Text(
              'Powered by My Amrita',
              style: TextStyle(fontSize: 12.sp, color: Colors.grey.shade500,fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
