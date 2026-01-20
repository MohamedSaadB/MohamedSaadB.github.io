import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/localization/localized_text.dart';

part 'pricing_models.freezed.dart';
part 'pricing_models.g.dart';

@freezed
class PricingFaq with _$PricingFaq {
  const factory PricingFaq({
    required LocalizedText q,
    required LocalizedText a,
  }) = _PricingFaq;

  factory PricingFaq.fromJson(Map<String, dynamic> json) => _$PricingFaqFromJson(json);
}

@freezed
class PricingPlan with _$PricingPlan {
  const factory PricingPlan({
    required LocalizedText tag,
    required LocalizedText name,
    required LocalizedText priceText,
    required LocalizedText durationText,
    @Default(false) bool highlight,
    @Default([]) List<LocalizedText> features,
    required LocalizedText ctaLabel,
    required String ctaTarget, // "checkout"
  }) = _PricingPlan;

  factory PricingPlan.fromJson(Map<String, dynamic> json) => _$PricingPlanFromJson(json);
}

@freezed
class PricingPageModel with _$PricingPageModel {
  const factory PricingPageModel({
    required LocalizedText title,
    required LocalizedText subtitle,
    required LocalizedText note,
    @Default([]) List<PricingPlan> plans,
    required LocalizedText faqTitle,
    @Default([]) List<PricingFaq> faq,
  }) = _PricingPageModel;

  factory PricingPageModel.fromJson(Map<String, dynamic> json) => _$PricingPageModelFromJson(json);
}
