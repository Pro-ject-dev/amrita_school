import 'package:amrita_vidhyalayam_teacher/core/shared/models/student_model.dart';
import 'package:dio/dio.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../network/dio_client.dart';
part 'student_repository.g.dart';



@riverpod
StudentRepository studentRepository(Ref ref) {
  return StudentRepository(ref.watch(dioProvider));
}

 class StudentRepository {
  final Dio _dio;

  StudentRepository(this._dio);

  Future<StudentModel> getStudentDetails({
    required String sclass,
    required String attendanceOn,
    required String? searchQuery,
  }) async {
    try {
      final response = await _dio.post(
        '/get_classattendance',
        data: {
          "sclass": sclass,
          "attendance_on": attendanceOn,
          "student":searchQuery
        },
      );
     await Future.delayed(const Duration(milliseconds: 150));
      return StudentModel.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }
 }