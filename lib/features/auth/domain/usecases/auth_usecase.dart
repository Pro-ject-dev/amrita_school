import '../../data/repository/auth_repository.dart';
import '../entities/auth_entity.dart';

class AuthUseCase {
  final AuthRepository _repo = AuthRepository();

  Future<AuthEntity> execute() async {
    return await _repo.fetchData();
  }
}
