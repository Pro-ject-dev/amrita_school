import '../../data/repository/student_repository.dart';
import '../entities/student_entity.dart';

class StudentUseCase {
  final StudentRepository _repo = StudentRepository();

  Future<StudentEntity> execute() async {
    return await _repo.fetchData();
  }
}
