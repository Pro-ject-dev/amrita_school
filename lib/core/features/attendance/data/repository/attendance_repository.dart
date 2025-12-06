import 'package:amrita_vidhyalayam_teacher/core/shared/models/student_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../network/dio_client.dart';
import '../models/post_attendance_model.dart';

part 'attendance_repository.g.dart';

@riverpod
AttendanceRepository attendanceRepository(Ref ref) {
  return AttendanceRepository(ref.watch(dioProvider));
}

 class AttendanceRepository {
  final Dio _dio;

  AttendanceRepository(this._dio);


  Future<AttendanceUpdateResponse> postClassAttendance({
    required String sclass,
    required String date,
    required List<Map<String,String>> absent_list,
    required List<Map<String,String>> present_list,

  }) async {
    try {
      final response = await _dio.post(
        '/shikshak.utils.api.mark_attendance',
        data: {
          "student_class": sclass,
          "date": date,
          "present_students": present_list,
          "absent_students": absent_list,
        },
      );
     await Future.delayed(const Duration(milliseconds: 150));
      return AttendanceUpdateResponse.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

}
