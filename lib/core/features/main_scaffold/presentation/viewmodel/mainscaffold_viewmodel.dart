import 'dart:developer';

import 'package:amrita_vidhyalayam_teacher/core/providers/common_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'mainscaffold_state.dart';
import '../../domain/usecases/mainscaffold_usecase.dart';

 class MainscaffoldViewModel extends StateNotifier<MainscaffoldState> {
  final MainscaffoldUseCase _useCase = MainscaffoldUseCase();
  final Ref ref;

  MainscaffoldViewModel(this.ref) : super(MainscaffoldState.initial()) {
  }

  Future<void> checkClassTeacherStatus() async {
     try {
       final classValue = await ref.read(storageServiceProvider).read("class");
       log(classValue.toString());
       final isTeacher = classValue != 'null';
       state = state.copyWith(isClassTeacher: isTeacher);
     } catch (e) {
       state = state.copyWith(isClassTeacher: false);
     }
  }

  Future<void> load() async {
    state = state.copyWith(isLoading: true);

    try {
      final result = await _useCase.execute();
      state = state.copyWith(isLoading: false, data: result.value);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<void> changeIndex(int index)async{
    state = state.copyWith(currentIndex: index);

  }
}

final mainscaffoldProvider =
    StateNotifierProvider<MainscaffoldViewModel, MainscaffoldState>(
  (ref) => MainscaffoldViewModel(ref),
);
