import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/localization/localized_text.dart';

part 'about_model.freezed.dart';
part 'about_model.g.dart';

@freezed
class AboutCardModel with _$AboutCardModel {
  const factory AboutCardModel({
    required String icon, // key from json
    required LocalizedText title,
    required LocalizedText value,
    required LocalizedText subtitle,
  }) = _AboutCardModel;

  factory AboutCardModel.fromJson(Map<String, dynamic> json) => _$AboutCardModelFromJson(json);
}

@freezed
class AboutModel with _$AboutModel {
  const factory AboutModel({
    required LocalizedText title,
    required LocalizedText bio,
    @Default([]) List<String> skills,
    @Default([]) List<AboutCardModel> cards,
  }) = _AboutModel;

  factory AboutModel.fromJson(Map<String, dynamic> json) => _$AboutModelFromJson(json);
}
