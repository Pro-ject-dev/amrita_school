import 'package:freezed_annotation/freezed_annotation.dart';


part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

@freezed
abstract class ProfileModel with _$ProfileModel {
      const ProfileModel._(); // 

  const factory ProfileModel({
    required String value,
  }) = _ProfileModel;

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);


}
