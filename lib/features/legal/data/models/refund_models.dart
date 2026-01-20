import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/localization/localized_text.dart';

part 'refund_models.freezed.dart';
part 'refund_models.g.dart';

@freezed
class RefundSection with _$RefundSection {
  const factory RefundSection({
    required LocalizedText title,
    @Default([]) List<LocalizedText> bullets,
  }) = _RefundSection;

  factory RefundSection.fromJson(Map<String, dynamic> json) => _$RefundSectionFromJson(json);
}

@freezed
class RefundPolicyPageModel with _$RefundPolicyPageModel {
  const factory RefundPolicyPageModel({
    required LocalizedText title,
    required LocalizedText subtitle,
    @Default([]) List<RefundSection> sections,
  }) = _RefundPolicyPageModel;

  factory RefundPolicyPageModel.fromJson(Map<String, dynamic> json) => _$RefundPolicyPageModelFromJson(json);
}
