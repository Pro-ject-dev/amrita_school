import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/splash_screen_entity.dart';

part 'splash_screen_model.freezed.dart';
part 'splash_screen_model.g.dart';

@freezed
abstract class SplashScreenModel with _$SplashScreenModel {
  const SplashScreenModel._();
  
  const factory SplashScreenModel({
    required String value,
  }) = _SplashScreenModel;
  
  factory SplashScreenModel.fromJson(Map<String, dynamic> json) =>
      _$SplashScreenModelFromJson(json);
  
  SplashScreenEntity toEntity() => SplashScreenEntity(value: value);
}