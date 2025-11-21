import '../source/home_remote_source.dart';
import '../models/home_model.dart';
import '../../domain/entities/home_entity.dart';

class HomeRepository {
  final HomeRemoteSource _source = HomeRemoteSource();

  Future<HomeEntity> fetchData() async {
    final result = await _source.fetchValue();
    return HomeModel(value: result).toEntity();
  }
}
