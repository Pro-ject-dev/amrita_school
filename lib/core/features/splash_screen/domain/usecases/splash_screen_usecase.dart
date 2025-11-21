import '../../data/repository/splash_screen_repository.dart';
import '../entities/splash_screen_entity.dart';

class SplashScreenUseCase {
  final SplashScreenRepository _repo = SplashScreenRepository();

  Future<SplashScreenEntity> execute() async {
    return await _repo.fetchData();
  }
}
