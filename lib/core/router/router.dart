import 'package:amrita_vidhyalayam_teacher/core/features/auth/presentation/view/auth_page.dart';
import 'package:amrita_vidhyalayam_teacher/core/features/attendance/presentation/view/attendance_page.dart';
import 'package:amrita_vidhyalayam_teacher/core/features/e_track/presentation/view/e_track_page.dart';
import 'package:amrita_vidhyalayam_teacher/core/features/main_scaffold/presentation/view/mainscaffold_page.dart';
import 'package:amrita_vidhyalayam_teacher/core/features/my_class/presentation/view/my_class_search_page.dart';
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
GoRoute(
  path: '/class_search',
  name: 'class_search',
  pageBuilder: (context, state) {
    return CustomTransitionPage(
      key: state.pageKey,
      child: const MyClassSearchPage(),
      transitionDuration: const Duration(milliseconds: 800),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final enterFade = Tween<double>(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: animation,
            curve: const Interval(0.4, 1.0, curve: Curves.easeIn),
          ),
        );
        
        final enterScale = Tween<double>(begin: 0.96, end: 1.0).animate(
          CurvedAnimation(
            parent: animation,
            curve: const Interval(0.4, 1.0, curve: Curves.easeOutCubic),
          ),
        );
        
        final exitFade = Tween<double>(begin: 1.0, end: 0.0).animate(
          CurvedAnimation(
            parent: secondaryAnimation,
            curve: const Interval(0.0, 0.6, curve: Curves.easeOut),
          ),
        );
        
        return FadeTransition(
          opacity: exitFade,
          child: ScaleTransition(
            scale: enterScale,
            child: FadeTransition(opacity: enterFade, child: child),
          ),
        );
      },
    );
  },
),

    ],

    observers: [
      NavigatorObserver(),
    ],
  );
});
