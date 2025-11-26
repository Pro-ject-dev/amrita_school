import 'package:amrita_vidhyalayam_teacher/core/features/home/presentation/view/home_page.dart';
import 'package:amrita_vidhyalayam_teacher/core/features/home/presentation/viewmodel/home_viewmodel.dart';
import 'package:amrita_vidhyalayam_teacher/core/features/mainscaffold/presentation/viewmodel/mainscaffold_viewmodel.dart';
import 'package:amrita_vidhyalayam_teacher/core/features/profile/presentation/view/profile_page.dart';
import 'package:amrita_vidhyalayam_teacher/core/features/reports/presentation/view/reports_page.dart';
import 'package:amrita_vidhyalayam_teacher/core/features/student/presentation/view/student_page.dart';
import 'package:amrita_vidhyalayam_teacher/core/theme/strings/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:go_router/go_router.dart';

class MainScaffold extends ConsumerWidget {
  const MainScaffold({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final state = ref.watch(mainscaffoldProvider);

    final pages = [
      HomePage(),
      StudentPage(),
      ReportsPage(),
      ProfilePage()
    ];

    return Scaffold(
      body: IndexedStack(
        index: state.currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex:state.currentIndex ,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        backgroundColor: theme.primaryColor,
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
              child: Icon(LucideIcons.users),
            ),
            label: AppStrings.b_nav_2,
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Icon(LucideIcons.notepadText),
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
    );
  }
}
