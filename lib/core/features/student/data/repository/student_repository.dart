import '../source/student_remote_source.dart';
import '../models/student_model.dart';
import '../../domain/entities/student_entity.dart';

class StudentRepository {
  final StudentRemoteSource _source = StudentRemoteSource();

  Future<StudentEntity> fetchData() async {
    final result = await _source.fetchValue();
    return StudentModel(value: result).toEntity();
  }
}
