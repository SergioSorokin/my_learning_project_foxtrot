import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:discounter/data/repository/app_config_repository.dart';

part 'home_screen_state.dart';

class HomeScreenCubit extends Cubit<HomeScreenState> {
  final AppConfigRepository repository;

  HomeScreenCubit(this.repository) : super(HomeScreenInitial()) {
    load();
  }

  Future<void> load() async {
    bool isAppRequireUpdate = await repository.requiresUpdate();
    emit(HomeScreenLoaded(isAppRequireUpdate));
  }
}
