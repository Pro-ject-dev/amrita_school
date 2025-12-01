import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/mainscaffold_entity.dart';

part 'mainscaffold_model.freezed.dart';
part 'mainscaffold_model.g.dart';

@freezed
abstract class MainscaffoldModel with _$MainscaffoldModel {
  const MainscaffoldModel._();
  const factory MainscaffoldModel({
    required String value,
  }) = _MainscaffoldModel;

  factory MainscaffoldModel.fromJson(Map<String, dynamic> json) =>
      _$MainscaffoldModelFromJson(json);

  MainscaffoldEntity toEntity() => MainscaffoldEntity(value: value);
}
