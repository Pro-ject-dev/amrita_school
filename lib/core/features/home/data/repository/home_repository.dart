import 'package:amrita_vidhyalayam_teacher/core/features/home/data/models/home_model.dart';
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

  Future<HomeModel> getPunchDetails({
    required String mail,
  }) async {
    try {
      final response = await _dio.post(
        "/get_employee",
        data: {
          "user": mail,
        },
      );

      return HomeModel.fromJson(response.data);
    } catch (ex, st) {
      throw Exception("HomeRepository Error: $ex");
    }
  }
}
