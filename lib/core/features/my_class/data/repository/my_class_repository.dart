
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../network/dio_client.dart';
import '../../domain/entities/my_class_entity.dart';
import '../models/my_class_model.dart';
import '../source/my_class_remote_source.dart';

class MyClassRepository {
  final MyClassRemoteSource _source = MyClassRemoteSource();

  Future<MyClassEntity> fetchData() async {
    final result = await _source.fetchValue();
    return MyClassModel(value: result).toEntity();
  }
}


