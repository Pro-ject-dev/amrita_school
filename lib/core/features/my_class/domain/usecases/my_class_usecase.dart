import 'package:amrita_vidhyalayam_teacher/core/network/dio_client.dart';

import '../../data/repository/my_class_repository.dart';
import '../entities/my_class_entity.dart';

class StudentUseCase {
  final MyClassRepository _repo = MyClassRepository();

  Future<MyClassEntity> execute() async {
    return await _repo.fetchData();
  }
}
