import 'package:freezed_annotation/freezed_annotation.dart';

part 'mainscaffold_state.freezed.dart';

@freezed
abstract class MainscaffoldState with _$MainscaffoldState {
  const factory MainscaffoldState({
    required bool isLoading,
    required String data,
    required int currentIndex,
    String? error,
  }) = _MainscaffoldState;

  factory MainscaffoldState.initial() => const MainscaffoldState(
        isLoading: false,
        data: "",
        currentIndex: 0
      );
}
