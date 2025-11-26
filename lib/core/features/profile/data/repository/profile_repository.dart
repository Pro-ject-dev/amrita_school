import '../source/profile_remote_source.dart';
import '../models/profile_model.dart';
import '../../domain/entities/profile_entity.dart';

class ProfileRepository {
  final ProfileRemoteSource _source = ProfileRemoteSource();

  Future<ProfileEntity> fetchData() async {
    final result = await _source.fetchValue();
    return ProfileModel(value: result).toEntity();
  }
}
