import 'package:flutter_riverpod/legacy.dart';
import 'home_state.dart';
import '../../domain/usecases/home_usecase.dart';

class HomeViewModel extends StateNotifier<HomeState> {
  final HomeUseCase _useCase = HomeUseCase();

  HomeViewModel() : super(HomeState.initial());

}

final homeProvider =
    StateNotifierProvider<HomeViewModel, HomeState>(
  (ref) => HomeViewModel(),
);
