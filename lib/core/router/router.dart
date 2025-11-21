import 'package:amrita_vidhyalayam_teacher/core/features/auth/presentation/view/auth_page.dart';
import 'package:amrita_vidhyalayam_teacher/core/features/splash_screen/presentation/view/splash_screen_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';



final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/',
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
      // GoRoute(
      //   path: '/home',
      //   name: 'home',
      //   builder: (_, __) => const HomePage(),
      // ),

      
    ],

    observers: [
      NavigatorObserver(),
    ],
  );
});
