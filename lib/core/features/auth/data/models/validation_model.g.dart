// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ValidationModel _$ValidationModelFromJson(Map<String, dynamic> json) =>
    _ValidationModel(
      message: Message.fromJson(json['message'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ValidationModelToJson(_ValidationModel instance) =>
    <String, dynamic>{'message': instance.message};

_Message _$MessageFromJson(Map<String, dynamic> json) => _Message(
  isInstructor: json['is_instructor'] as bool,
  classIncharge: json['class_incharge'] as String?,
  classSubject: (json['class_subject'] as List<dynamic>?)
      ?.map((e) => ClassSubject.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$MessageToJson(_Message instance) => <String, dynamic>{
  'is_instructor': instance.isInstructor,
  'class_incharge': instance.classIncharge,
  'class_subject': instance.classSubject,
};

_ClassSubject _$ClassSubjectFromJson(Map<String, dynamic> json) =>
    _ClassSubject(
      studentClass: json['student_class'] as String?,
      subjectName: json['subject_name'] as String?,
    );

Map<String, dynamic> _$ClassSubjectToJson(_ClassSubject instance) =>
    <String, dynamic>{
      'student_class': instance.studentClass,
      'subject_name': instance.subjectName,
    };
