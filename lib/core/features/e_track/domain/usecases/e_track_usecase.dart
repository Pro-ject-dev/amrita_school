import '../../data/repository/e_track_repository.dart';
import '../entities/e_track_entity.dart';

class ETrackUseCase {
  final ETrackRepository _repo = ETrackRepository();

  Future<ETrackEntity> execute() async {
    return await _repo.fetchData();
  }
}
