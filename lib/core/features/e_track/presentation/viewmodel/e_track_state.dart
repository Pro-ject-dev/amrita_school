import 'package:freezed_annotation/freezed_annotation.dart';

part 'e_track_state.freezed.dart';

@freezed
abstract class ETrackState with _$ETrackState {
  const factory ETrackState({
    required bool isLoading,
    required String data,
    String? error,
  }) = _ETrackState;

  factory ETrackState.initial() => const ETrackState(
        isLoading: false,
        data: "",
      );
}
