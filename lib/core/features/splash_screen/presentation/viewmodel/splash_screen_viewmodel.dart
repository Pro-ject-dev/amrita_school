import 'dart:async';
import 'dart:developer';

import 'package:flutter_riverpod/legacy.dart';
import 'splash_screen_state.dart';
import '../../domain/usecases/splash_screen_usecase.dart';

class SplashScreenViewModel extends StateNotifier<SplashScreenState> {
  final SplashScreenUseCase _useCase = SplashScreenUseCase();

  SplashScreenViewModel() : super(SplashScreenState.initial()) {
    load();
  }

  Future<void> load() async {
    log('Splash screen loading started');
    state = state.copyWith(isLoading: true);
    try {
      final result = await _useCase.execute();
      state = state.copyWith(isLoading: false, data: result.value);
      await Future.delayed(const Duration(seconds: 0));
      log('5-second delay finished, navigating to login screen');
      state = state.copyWith(isFinished: true);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }
}

final splashScreenProvider =
    StateNotifierProvider<SplashScreenViewModel, SplashScreenState>(
  (ref) => SplashScreenViewModel(),
);
