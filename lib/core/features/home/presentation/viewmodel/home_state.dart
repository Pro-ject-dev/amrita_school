import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    required bool isLoading,
    required String data,
    String? error,
  }) = _HomeState;

  factory HomeState.initial() => const HomeState(
        isLoading: false,
        data: "",
      );
}
