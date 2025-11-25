import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../network/dio_client.dart';
import '../models/attendance_model.dart';

part 'home_repository.g.dart';

@riverpod
HomeRepository homeRepository(Ref ref) {
  return HomeRepository(ref.watch(dioProvider));
}

 class HomeRepository {
  final Dio _dio;

  HomeRepository(this._dio);

  Future<AttendanceModel> getClassAttendance({
    required String sclass,
    required String attendanceOn,
  }) async {
    try {
      final response = await _dio.post(
        '/get_classattendance',
        data: {
          "sclass": sclass,
          "attendance_on": attendanceOn,
        },
      );
     
      return AttendanceModel.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }
}
