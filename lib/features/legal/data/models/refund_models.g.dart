// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refund_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RefundSectionImpl _$$RefundSectionImplFromJson(Map<String, dynamic> json) =>
    _$RefundSectionImpl(
      title: LocalizedText.fromJson(json['title'] as Map<String, dynamic>),
      bullets:
          (json['bullets'] as List<dynamic>?)
              ?.map((e) => LocalizedText.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$RefundSectionImplToJson(_$RefundSectionImpl instance) =>
    <String, dynamic>{'title': instance.title, 'bullets': instance.bullets};

_$RefundPolicyPageModelImpl _$$RefundPolicyPageModelImplFromJson(
  Map<String, dynamic> json,
) => _$RefundPolicyPageModelImpl(
  title: LocalizedText.fromJson(json['title'] as Map<String, dynamic>),
  subtitle: LocalizedText.fromJson(json['subtitle'] as Map<String, dynamic>),
  sections:
      (json['sections'] as List<dynamic>?)
          ?.map((e) => RefundSection.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$$RefundPolicyPageModelImplToJson(
  _$RefundPolicyPageModelImpl instance,
) => <String, dynamic>{
  'title': instance.title,
  'subtitle': instance.subtitle,
  'sections': instance.sections,
};
