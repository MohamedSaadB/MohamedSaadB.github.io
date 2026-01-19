import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/localization/localized_text.dart';

part 'project_model.freezed.dart';
part 'project_model.g.dart';

@freezed
class ProjectModel with _$ProjectModel {
  const factory ProjectModel({
    required String slug,
    required LocalizedText title,
    required LocalizedText summary,
    LocalizedText? role,
    @Default([]) List<String> tech,
    required String thumbnail,
    @Default([]) List<String> gallery,
    String? liveUrlPlay,
    String? liveUrlIos,
    String? repoUrl,
  }) = _ProjectModel;

  factory ProjectModel.fromJson(Map<String, dynamic> json) => _$ProjectModelFromJson(json);
}
