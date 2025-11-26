import '../../data/repository/profile_repository.dart';
import '../entities/profile_entity.dart';

class ProfileUseCase {
  final ProfileRepository _repo = ProfileRepository();

  Future<ProfileEntity> execute() async {
    return await _repo.fetchData();
  }
}
