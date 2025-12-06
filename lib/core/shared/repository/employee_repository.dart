import 'package:amrita_vidhyalayam_teacher/core/shared/models/employee_model.dart';
import 'package:amrita_vidhyalayam_teacher/core/network/dio_client.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'employee_repository.g.dart';

@riverpod
EmployeeRepository employeeRepository(Ref ref) {
  return EmployeeRepository(ref.watch(dioProvider));
}

class EmployeeRepository {
  final Dio _dio;

  EmployeeRepository(this._dio);

  Future<EmployeeModel> getEmployeeDetails({required String mail}) async {
    try {
      final response = await _dio.post("/get_employee", data: {"user": mail});
      await Future.delayed(const Duration(milliseconds: 300));
      return EmployeeModel.fromJson(response.data);
    } catch (ex) {
      throw Exception("EmployeeRepository Error: $ex");
    }
  }
}
