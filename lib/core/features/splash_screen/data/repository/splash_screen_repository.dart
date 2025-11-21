import '../source/splash_screen_remote_source.dart';
import '../models/splash_screen_model.dart';
import '../../domain/entities/splash_screen_entity.dart';

class SplashScreenRepository {
  final SplashScreenRemoteSource _source = SplashScreenRemoteSource();

  Future<SplashScreenEntity> fetchData() async {
    final result = await _source.fetchValue();
    return SplashScreenModel(value: result).toEntity();
  }
}
