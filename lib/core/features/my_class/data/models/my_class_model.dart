import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/my_class_entity.dart';

part 'my_class_model.freezed.dart';
part 'my_class_model.g.dart';

@freezed
abstract class MyClassModel with _$MyClassModel {
  const MyClassModel._(); // <-- REQUIRED for custom methods

  const factory MyClassModel({
    required String value,
  }) = _MyClassModel;

  factory MyClassModel.fromJson(Map<String, dynamic> json) =>
      _$MyClassModelFromJson(json);

  // Custom method now works
  MyClassEntity toEntity() => MyClassEntity(value: value);
}
