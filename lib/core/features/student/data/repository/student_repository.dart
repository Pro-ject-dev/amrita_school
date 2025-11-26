
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../network/dio_client.dart';
import '../../domain/entities/student_entity.dart';
import '../models/student_model.dart';
import '../source/student_remote_source.dart';

class StudentRepository {
  final StudentRemoteSource _source = StudentRemoteSource();

  Future<StudentEntity> fetchData() async {
    final result = await _source.fetchValue();
    return StudentModel(value: result).toEntity();
  }
}


