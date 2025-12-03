import 'package:amrita_vidhyalayam_teacher/core/features/attendance/presentation/view/attendance_page.dart';
import 'package:amrita_vidhyalayam_teacher/core/features/e_track/presentation/view/e_track_page.dart';
import 'package:amrita_vidhyalayam_teacher/core/features/home/presentation/view/home_page.dart';
import 'package:amrita_vidhyalayam_teacher/core/features/main_scaffold/presentation/viewmodel/mainscaffold_viewmodel.dart';
import 'package:amrita_vidhyalayam_teacher/core/features/profile/presentation/view/profile_page.dart';
import 'package:amrita_vidhyalayam_teacher/core/features/my_class/presentation/view/my_class_page.dart';
import 'package:amrita_vidhyalayam_teacher/core/theme/strings/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class MainScaffold extends ConsumerWidget {
  const MainScaffold({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final state = ref.watch(mainscaffoldProvider);

    final pages = [HomePage(), MyClassPage(), ETrackPage(), ProfilePage()];

    return Scaffold(
      body: IndexedStack(index: state.currentIndex, children: pages),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: theme.primaryColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: state.currentIndex,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white70,
            onTap: (index) {
              ref.read(mainscaffoldProvider.notifier).changeIndex(index);
            },
            items: [
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Icon(LucideIcons.house),
                ),
                label: AppStrings.b_nav_1,
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  // child: SvgPicture.asset(
                  //   'assets/images/myClass.svg',
                  //   width: state.currentIndex == 1 ? 22 : 20,
                  //   height: state.currentIndex == 1 ? 22 : 20,
                  //   color: state.currentIndex == 1
                  //       ? Colors.white
                  //       : Colors.white70,
                  // ),
                  child: Icon(LucideIcons.school),
                ),
                label: AppStrings.b_nav_2,
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Icon(LucideIcons.calendarClock),
                ),
                label: AppStrings.b_nav_3,
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Icon(LucideIcons.user),
                ),
                label: AppStrings.b_nav_4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
