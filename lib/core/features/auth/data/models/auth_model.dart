import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/auth_entity.dart';

part 'auth_model.freezed.dart';
part 'auth_model.g.dart';

@freezed
abstract class AuthModel with _$AuthModel {
  const AuthModel._(); 
  const factory AuthModel({
    required String value,
  }) = _AuthModel;

  factory AuthModel.fromJson(Map<String, dynamic> json) =>
      _$AuthModelFromJson(json);

  AuthEntity toEntity() => AuthEntity(value: value);
}
