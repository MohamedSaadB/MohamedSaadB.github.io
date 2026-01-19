import 'package:freezed_annotation/freezed_annotation.dart';

part 'localized_text.freezed.dart';
part 'localized_text.g.dart';

@freezed
class LocalizedText with _$LocalizedText {
  const factory LocalizedText({
    required String ar,
    required String en,
  }) = _LocalizedText;

  factory LocalizedText.fromJson(Map<String, dynamic> json) => _$LocalizedTextFromJson(json);
}
