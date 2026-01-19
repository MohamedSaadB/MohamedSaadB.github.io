import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/reposatories/portfolio_repository.dart';
import 'home_content_state.dart';

class HomeContentCubit extends Cubit<HomeContentState> {
  HomeContentCubit(this._repo) : super(const HomeContentState.initial());

  final PortfolioRepository _repo;

  Future<void> load() async {
    emit(const HomeContentState.loading());
    try {
      final profile = await _repo.loadProfile();
      final services = await _repo.loadServices();
      final projects = await _repo.loadProjects();
      emit(HomeContentState.loaded(profile: profile, services: services, projects: projects));
    } catch (e) {
      emit(HomeContentState.error(e.toString()));
    }
  }
}
