import 'package:amrita_vidhyalayam_teacher/features/splash_screen/presentation/viewmodel/splash_screen_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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

    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
