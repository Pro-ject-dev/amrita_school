import 'package:riverpod/legacy.dart';
import 'mainscaffold_state.dart';
import '../../domain/usecases/mainscaffold_usecase.dart';

 class MainscaffoldViewModel extends StateNotifier<MainscaffoldState> {
  final MainscaffoldUseCase _useCase = MainscaffoldUseCase();

  MainscaffoldViewModel() : super(MainscaffoldState.initial());

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
  (ref) => MainscaffoldViewModel(),
);
