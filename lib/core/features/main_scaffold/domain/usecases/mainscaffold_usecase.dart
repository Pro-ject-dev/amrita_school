import '../../data/repository/mainscaffold_repository.dart';
import '../entities/mainscaffold_entity.dart';

class MainscaffoldUseCase {
  final MainscaffoldRepository _repo = MainscaffoldRepository();

  Future<MainscaffoldEntity> execute() async {
    return await _repo.fetchData();
  }
}
