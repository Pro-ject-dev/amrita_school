import 'package:freezed_annotation/freezed_annotation.dart';

part 'reports_state.freezed.dart';

@freezed
abstract  class ReportsState with _$ReportsState {
  
  const factory ReportsState({
    required bool isLoading,
    required String data,
    String? error,
  }) = _ReportsState;

  factory ReportsState.initial() => const ReportsState(
        isLoading: false,
        data: "",
      );
}
