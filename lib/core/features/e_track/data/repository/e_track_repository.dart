import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../network/dio_client.dart';
import '../models/e_track_model.dart';
import '../../domain/entities/e_track_entity.dart';

final eTrackRepositoryProvider = Provider<ETrackRepository>((ref) {
  return ETrackRepository(ref.watch(dioProvider));
});

class ETrackRepository {
  final Dio _dio;

  ETrackRepository(this._dio);

  Future<ETrackEntity> fetchETrackDetails({
    required String year,
    required String month,
    required String empId,
  }) async {
    try {
      final response = await _dio.post(
        'get_etrack_details',
        data: {
          "year": year,
          "month": month,
         "employee": empId,
        },
      );

      if (response.statusCode == 200 && response.data != null) {
         final data = response.data['message'] ?? response.data;
         return ETrackModel.fromJson(data).toEntity();
      } else {
        throw Exception("Failed to fetch ETrack details");
      }
    } catch (e) {
      rethrow;
    }
  }
}
