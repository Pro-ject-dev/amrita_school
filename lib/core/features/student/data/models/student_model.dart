import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/student_entity.dart';

part 'student_model.freezed.dart';
part 'student_model.g.dart';

@freezed
abstract class StudentModel with _$StudentModel {
  const StudentModel._(); // <-- REQUIRED for custom methods

  const factory StudentModel({
    required String value,
  }) = _StudentModel;

  factory StudentModel.fromJson(Map<String, dynamic> json) =>
      _$StudentModelFromJson(json);

  // Custom method now works
  StudentEntity toEntity() => StudentEntity(value: value);
}
