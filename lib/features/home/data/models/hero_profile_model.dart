import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/localization/localized_text.dart';
import 'about_model.dart';
import 'contact_hub_model.dart';
import 'contact_model.dart';

part 'hero_profile_model.freezed.dart';
part 'hero_profile_model.g.dart';

@freezed
class HeroHighlight with _$HeroHighlight {
  const factory HeroHighlight({
    required String icon, // speed / architecture / design ...
    required LocalizedText title,
    required LocalizedText desc,
  }) = _HeroHighlight;

  factory HeroHighlight.fromJson(Map<String, dynamic> json) => _$HeroHighlightFromJson(json);
}

@freezed
class HeroProfileModel with _$HeroProfileModel {
  const factory HeroProfileModel({
    required String name,
    required LocalizedText title,
    required LocalizedText summary,
    required LocalizedText badge,
    required LocalizedText highlightsTitle,
    @Default([]) List<HeroHighlight> highlights,
    required LocalizedText ctaContact,
    required LocalizedText ctaCv,
    required ContactModel contact,
    required ContactHubModel contactHub,
    required AboutModel about

  }) = _HeroProfileModel;

  factory HeroProfileModel.fromJson(Map<String, dynamic> json) => _$HeroProfileModelFromJson(json);
}
