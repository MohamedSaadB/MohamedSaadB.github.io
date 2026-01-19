import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/localization/localized_text.dart';

part 'contact_hub_model.freezed.dart';
part 'contact_hub_model.g.dart';

@freezed
class ContactCta with _$ContactCta {
  const factory ContactCta({
    required LocalizedText label,
    required LocalizedText hint,
    required String phone,
    required LocalizedText prefill,
  }) = _ContactCta;

  factory ContactCta.fromJson(Map<String, dynamic> json) => _$ContactCtaFromJson(json);
}

@freezed
class ContactCardModel with _$ContactCardModel {
  const factory ContactCardModel({
    required String type, // email, github, linkedin, ...
    required LocalizedText title,
    required String value,
    required String url,
  }) = _ContactCardModel;

  factory ContactCardModel.fromJson(Map<String, dynamic> json) => _$ContactCardModelFromJson(json);
}

@freezed
class ContactHubModel with _$ContactHubModel {
  const factory ContactHubModel({
    required LocalizedText title,
    required LocalizedText subtitle,
    required ContactCta primaryCta,
    @Default([]) List<ContactCardModel> cards,
  }) = _ContactHubModel;

  factory ContactHubModel.fromJson(Map<String, dynamic> json) => _$ContactHubModelFromJson(json);
}
