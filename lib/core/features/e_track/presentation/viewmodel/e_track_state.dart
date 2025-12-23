import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/e_track_entity.dart';

part 'e_track_state.freezed.dart';

@freezed
abstract class ETrackState with _$ETrackState {
  const factory ETrackState({
    required bool isLoading,
    ETrackEntity? data,
    String? error,
  }) = _ETrackState;

  factory ETrackState.initial() => const ETrackState(
        isLoading: false,
        data: null,
      );
}
