import 'dart:developer';
import 'package:amrita_vidhyalayam_teacher/core/features/e_track/presentation/view/e_track_page.dart';
import 'package:amrita_vidhyalayam_teacher/core/features/home/presentation/view/home_page.dart';
import 'package:amrita_vidhyalayam_teacher/core/features/main_scaffold/presentation/viewmodel/mainscaffold_viewmodel.dart';
import 'package:amrita_vidhyalayam_teacher/core/features/profile/presentation/view/profile_page.dart';
import 'package:amrita_vidhyalayam_teacher/core/features/my_class/presentation/view/my_class_page.dart';
import 'package:amrita_vidhyalayam_teacher/core/theme/strings/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class MainScaffold extends ConsumerStatefulWidget {
  const MainScaffold({super.key});

  @override
  ConsumerState<MainScaffold> createState() => _MainScaffoldState();
}

class _MainScaffoldState extends ConsumerState<MainScaffold> {
  @override
  void initState() {
    ref.read(mainscaffoldProvider.notifier).checkClassTeacherStatus();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final state = ref.watch(mainscaffoldProvider);

    log(state.isClassTeacher.toString());

    final pages = [
      const HomePage(),
      if (state.isClassTeacher) const MyClassPage(),
      const ETrackPage(),
      const ProfilePage(),
    ];

    final effectiveIndex = state.currentIndex >= pages.length ? 0 : state.currentIndex;

    return Scaffold(
      body: IndexedStack(
        index: effectiveIndex,
        children: pages,
      ),
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
            currentIndex: effectiveIndex,
            backgroundColor: Colors.transparent,
            elevation: 0,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white70,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            onTap: (index) {
              ref
                  .read(mainscaffoldProvider.notifier)
                  .changeIndex(index);
            },
            items: [
              BottomNavigationBarItem(
                icon: const Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: Icon(LucideIcons.house),
                ),
                label: AppStrings.b_nav_1,
              ),
              if (state.isClassTeacher)
                BottomNavigationBarItem(
                  icon: const Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Icon(LucideIcons.school),
                  ),
                  label: AppStrings.b_nav_2,
                ),
              BottomNavigationBarItem(
                icon: const Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: Icon(LucideIcons.calendarClock),
                ),
                label: AppStrings.b_nav_3,
              ),
              BottomNavigationBarItem(
                icon: const Padding(
                  padding: EdgeInsets.only(top: 8),
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
