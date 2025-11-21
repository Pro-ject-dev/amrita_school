import '../../data/repository/home_repository.dart';
import '../entities/home_entity.dart';

class HomeUseCase {
  final HomeRepository _repo = HomeRepository();

  Future<HomeEntity> execute() async {
    return await _repo.fetchData();
  }
}
