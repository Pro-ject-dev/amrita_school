import '../../data/repository/reports_repository.dart';
import '../entities/reports_entity.dart';

class ReportsUseCase {
  final ReportsRepository _repo = ReportsRepository();

  Future<ReportsEntity> execute() async {
    return await _repo.fetchData();
  }
}
