import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/localization/localized_text.dart';

part 'checkout_models.freezed.dart';
part 'checkout_models.g.dart';

@freezed
class CheckoutSteps with _$CheckoutSteps {
  const factory CheckoutSteps({
    required LocalizedText briefTitle,
    required LocalizedText summaryTitle,
  }) = _CheckoutSteps;

  factory CheckoutSteps.fromJson(Map<String, dynamic> json) => _$CheckoutStepsFromJson(json);
}

@freezed
class CheckoutCta with _$CheckoutCta {
  const factory CheckoutCta({
    required LocalizedText continueText,
    required LocalizedText proceedText,
    required LocalizedText note,
  }) = _CheckoutCta;

  factory CheckoutCta.fromJson(Map<String, dynamic> json) => _$CheckoutCtaFromJson(json);
}

@freezed
class CheckoutField with _$CheckoutField {
  const factory CheckoutField({
    required String key,
    required LocalizedText label,
    @Default([]) List<LocalizedText> options,
  }) = _CheckoutField;

  factory CheckoutField.fromJson(Map<String, dynamic> json) => _$CheckoutFieldFromJson(json);
}

@freezed
class CheckoutTargets with _$CheckoutTargets {
  const factory CheckoutTargets({
    required String khamsatUrl,
    required String whatsappPhone,
    required LocalizedText whatsappPrefill,
  }) = _CheckoutTargets;

  factory CheckoutTargets.fromJson(Map<String, dynamic> json) => _$CheckoutTargetsFromJson(json);
}

@freezed
class CheckoutPageModel with _$CheckoutPageModel {
  const factory CheckoutPageModel({
    required LocalizedText title,
    required LocalizedText subtitle,
    required CheckoutSteps steps,
    @Default([]) List<CheckoutField> fields,
    required CheckoutCta cta,
    required CheckoutTargets contactTargets,
  }) = _CheckoutPageModel;

  factory CheckoutPageModel.fromJson(Map<String, dynamic> json) => _$CheckoutPageModelFromJson(json);
}
