import 'package:amrita_vidhyalayam_teacher/core/features/auth/presentation/view/auth_page.dart';
import 'package:amrita_vidhyalayam_teacher/core/features/attendance/presentation/view/attendance_page.dart';
import 'package:amrita_vidhyalayam_teacher/core/features/e_track/presentation/view/e_track_page.dart';
import 'package:amrita_vidhyalayam_teacher/core/features/main_scaffold/presentation/view/mainscaffold_page.dart';
import 'package:amrita_vidhyalayam_teacher/core/features/profile/presentation/view/profile_page.dart';
import 'package:amrita_vidhyalayam_teacher/core/features/splash_screen/presentation/view/splash_screen_page.dart';
import 'package:amrita_vidhyalayam_teacher/core/features/my_class/presentation/view/my_class_page.dart';
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
        builder: (_, __) => const AttendancePage(),
      ),
      GoRoute(
        path: '/myClassPage',
        name: 'myClassPage',
        builder: (_, __) =>  MyClassPage(),
      ),
      GoRoute(
        path: '/mainScaffold',
        name: 'mainScaffold',
        builder: (_, __) =>  MainScaffold(),
      ),
      GoRoute(
        path: '/e_track',
        name: 'e_track',
        builder: (_, __) =>  ETrackPage(),
      ),
      GoRoute(
        path: '/profile',
        name: 'profile',
        builder: (_, __) =>  ProfilePage(),
      ),
       GoRoute(
        path: '/attendance',
        name: 'attendance',
        builder: (_, __) =>  AttendancePage(),
      ),
      

      
    ],

    observers: [
      NavigatorObserver(),
    ],
  );
});
