import 'package:freezed_annotation/freezed_annotation.dart';

part 'validation_model.freezed.dart';
part 'validation_model.g.dart';

@freezed
abstract class ValidationModel with _$ValidationModel {
  const factory ValidationModel({
    required Message message,
  }) = _ValidationModel;

  factory ValidationModel.fromJson(Map<String, dynamic> json) =>
      _$ValidationModelFromJson(json);
}

@freezed
abstract class Message with _$Message {
  const factory Message({
    @JsonKey(name: 'is_instructor') required bool isInstructor,
    @JsonKey(name: 'class_incharge')  String? classIncharge,
    @JsonKey(name: 'class_subject') List<ClassSubject>? classSubject,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}

@freezed
abstract class ClassSubject with _$ClassSubject {
  const factory ClassSubject({
    @JsonKey(name: 'student_class')  String? studentClass,
    @JsonKey(name: 'subject_name')  String? subjectName,
  }) = _ClassSubject;

  factory ClassSubject.fromJson(Map<String, dynamic> json) =>
      _$ClassSubjectFromJson(json);
}
