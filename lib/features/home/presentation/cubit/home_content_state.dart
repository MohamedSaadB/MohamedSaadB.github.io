import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/hero_profile_model.dart';
import '../../data/models/profile_model.dart';
import '../../data/models/project_model.dart';
import '../../data/models/service_model.dart';


part 'home_content_state.freezed.dart';

@freezed
class HomeContentState with _$HomeContentState {
  const factory HomeContentState.initial() = _Initial;
  const factory HomeContentState.loading() = _Loading;
  const factory HomeContentState.loaded({
    required HeroProfileModel profile,
    required List<ServiceModel> services,
    required List<ProjectModel> projects,
  }) = _Loaded;
  const factory HomeContentState.error(String message) = _Error;
}
