import '../source/e_track_remote_source.dart';
import '../models/e_track_model.dart';
import '../../domain/entities/e_track_entity.dart';

 class ETrackRepository {
  final ETrackRemoteSource _source = ETrackRemoteSource();

  Future<ETrackEntity> fetchData() async {
    final result = await _source.fetchValue();
    return ETrackModel(value: result).toEntity();
  }
}
