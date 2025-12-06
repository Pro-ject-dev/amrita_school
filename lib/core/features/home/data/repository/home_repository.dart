import 'package:amrita_vidhyalayam_teacher/core/network/dio_client.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_repository.g.dart';

@riverpod
HomeRepository homeRepository(Ref ref) {
  return HomeRepository(ref.watch(dioProvider));
}

class HomeRepository {
  final Dio _dio;

  HomeRepository(this._dio);


}
