import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_screen_state.freezed.dart';

@freezed
abstract class SplashScreenState with _$SplashScreenState {
  const factory SplashScreenState({
    required bool isLoading,
    required String data,
    String? error,
    @Default(false) bool isFinished,
  }) = _SplashScreenState;

  factory SplashScreenState.initial() => const SplashScreenState(
        isLoading: false,
        data: "",
      );
}