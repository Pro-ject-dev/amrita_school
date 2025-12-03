import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/e_track_entity.dart';

part 'e_track_model.freezed.dart';
part 'e_track_model.g.dart';

@freezed
abstract class ETrackModel with _$ETrackModel {
  const ETrackModel._();
  const factory ETrackModel({
    required String value,
  }) = _ETrackModel;

  factory ETrackModel.fromJson(Map<String, dynamic> json) =>
      _$ETrackModelFromJson(json);

  ETrackEntity toEntity() => ETrackEntity(value: value);
}
