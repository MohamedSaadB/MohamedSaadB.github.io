import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/localization/localized_text.dart';

part 'contact_model.freezed.dart';
part 'contact_model.g.dart';

@freezed
class ContactModel with _$ContactModel {
  const factory ContactModel({
    required LocalizedText title,
    required LocalizedText subtitle,

    required LocalizedText emailLabel,
    required LocalizedText locationLabel,

    required String email,
    required LocalizedText location,

    required LocalizedText nameLabel,
    required LocalizedText nameHint,
    required LocalizedText emailFieldLabel,
    required LocalizedText emailHint,
    required LocalizedText messageLabel,
    required LocalizedText messageHint,

    required LocalizedText send,
    required LocalizedText sent,
    required LocalizedText subject,
  }) = _ContactModel;

  factory ContactModel.fromJson(Map<String, dynamic> json) => _$ContactModelFromJson(json);
}
