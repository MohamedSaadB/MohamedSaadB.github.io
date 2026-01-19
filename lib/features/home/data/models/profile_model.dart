import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/localization/localized_text.dart';

part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

@freezed
class SocialLink with _$SocialLink {
  const factory SocialLink({
    required String label,
    required String url,
  }) = _SocialLink;

  factory SocialLink.fromJson(Map<String, dynamic> json) => _$SocialLinkFromJson(json);
}
