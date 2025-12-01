import 'package:amrita_vidhyalayam_teacher/core/features/auth/presentation/view/auth_page.dart';
import 'package:amrita_vidhyalayam_teacher/core/features/home/presentation/view/home_page.dart';
import 'package:amrita_vidhyalayam_teacher/core/features/main_scaffold/presentation/view/mainscaffold_page.dart';
import 'package:amrita_vidhyalayam_teacher/core/features/profile/presentation/view/profile_page.dart';
import 'package:amrita_vidhyalayam_teacher/core/features/reports/presentation/view/reports_page.dart';
import 'package:amrita_vidhyalayam_teacher/core/features/splash_screen/presentation/view/splash_screen_page.dart';
import 'package:amrita_vidhyalayam_teacher/core/features/student/presentation/view/student_page.dart';
import 'package:amrita_vidhyalayam_teacher/main.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final routerProvider = Provider<GoRouter>((ref) {

  return GoRouter(
    
    initialLocation: '/',
     navigatorKey: navigatorKey,
    routes: [
       GoRoute(
        path: '/',
        name: 'splashscreen',
        builder: (_, __) => const SplashScreenPage(),
      ),
      
      GoRoute(
       
        path: '/auth',
        name: 'authentication',
        builder: (_, __) => const AuthPage(),
      ),
      GoRoute(
        path: '/home',
        name: 'home',
        builder: (_, __) => const HomePage(),
      ),
      GoRoute(
        path: '/student',
        name: 'student',
        builder: (_, __) =>  StudentPage(),
      ),
      GoRoute(
        path: '/mainScaffold',
        name: 'mainScaffold',
        builder: (_, __) =>  MainScaffold(),
      ),
      GoRoute(
        path: '/reports',
        name: 'reports',
        builder: (_, __) =>  ReportsPage(),
      ),
      GoRoute(
        path: '/profile',
        name: 'profile',
        builder: (_, __) =>  ProfilePage(),
      ),

      
    ],

    observers: [
      NavigatorObserver(),
    ],
  );
});
