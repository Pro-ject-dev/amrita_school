import 'package:amrita_vidhyalayam_teacher/core/features/student/presentation/widgets/student_card.dart';
import 'package:amrita_vidhyalayam_teacher/core/theme/colors/app_colors.dart';
import 'package:amrita_vidhyalayam_teacher/core/theme/strings/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import '../viewmodel/student_viewmodel.dart';

class StudentPage extends ConsumerWidget {
  StudentPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(studentProvider);
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: Color(0xffF5F7FA),
      appBar: AppBar(
        elevation: 0,
        surfaceTintColor: Color(0xffF5F7FA),
        backgroundColor: Color(0xffF5F7FA),
        leading: Icon(LucideIcons.chevronLeft),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.w),
            child: Icon(LucideIcons.ellipsisVertical),
          ),
        ],
        title: const Text("Student Page"),
      ),
      body: Column(
        children: [
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search student',
                  // hint: Text('data'),
                  icon: Icon(LucideIcons.search, color: AppColors.grey500),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ListView.builder(
                // shrinkWrap: BouncingScrollPhysics.,
                // padding: EdgeInsets.all(0),
                itemCount: 50,
                itemBuilder: (BuildContext context, int index) {
                  return StudentCard();
                },
              ),
            ),
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      //   currentIndex: 0,
      //   showSelectedLabels: true,
      //   showUnselectedLabels: true,
      //   backgroundColor: theme.primaryColor,
      //   selectedItemColor: Colors.white,
      //   unselectedItemColor: Colors.white70,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Padding(
      //         padding: const EdgeInsets.only(top: 8),
      //         child: InkWell(
      //           onTap: () {
      //             context.go('/home');
      //           },
      //           child: Icon(LucideIcons.house, color: Colors.white),
      //         ),
      //       ),
      //       label: AppStrings.b_nav_1,
      //     ),
      //     BottomNavigationBarItem(
      //       icon: InkWell(
      //         onTap: () {
      //           context.go('/student');
      //         },
      //         child: Icon(LucideIcons.users, color: Colors.white),
      //       ),

      //       label: AppStrings.b_nav_2,
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(LucideIcons.notepadText, color: Colors.white),
      //       label: AppStrings.b_nav_3,
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(LucideIcons.user, color: Colors.white),
      //       label: AppStrings.b_nav_4,
      //     ),
      //   ],
      // ),
    );
  }
}
