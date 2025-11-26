import '../source/reports_remote_source.dart';
import '../models/reports_model.dart';
import '../../domain/entities/reports_entity.dart';

class ReportsRepository {
  final ReportsRemoteSource _source = ReportsRemoteSource();

  Future<ReportsEntity> fetchData() async {
    final result = await _source.fetchValue();
    return ReportsModel(value: result).toEntity();
  }
}
