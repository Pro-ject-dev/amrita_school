import '../source/mainscaffold_remote_source.dart';
import '../models/mainscaffold_model.dart';
import '../../domain/entities/mainscaffold_entity.dart';

class MainscaffoldRepository {
  final MainscaffoldRemoteSource _source = MainscaffoldRemoteSource();

  Future<MainscaffoldEntity> fetchData() async {
    final result = await _source.fetchValue();
    return MainscaffoldModel(value: result).toEntity();
  }
}
