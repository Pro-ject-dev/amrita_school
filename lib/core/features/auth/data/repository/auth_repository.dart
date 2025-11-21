import '../source/auth_remote_source.dart';
import '../models/auth_model.dart';
import '../../domain/entities/auth_entity.dart';

class AuthRepository {
  final AuthRemoteSource _source = AuthRemoteSource();

  Future<AuthEntity> fetchData() async {
    final result = await _source.fetchValue();
    return AuthModel(value: result).toEntity();
  }
}
