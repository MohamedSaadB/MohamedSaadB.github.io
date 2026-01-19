// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_hub_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContactCtaImpl _$$ContactCtaImplFromJson(Map<String, dynamic> json) =>
    _$ContactCtaImpl(
      label: LocalizedText.fromJson(json['label'] as Map<String, dynamic>),
      hint: LocalizedText.fromJson(json['hint'] as Map<String, dynamic>),
      phone: json['phone'] as String,
      prefill: LocalizedText.fromJson(json['prefill'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ContactCtaImplToJson(_$ContactCtaImpl instance) =>
    <String, dynamic>{
      'label': instance.label,
      'hint': instance.hint,
      'phone': instance.phone,
      'prefill': instance.prefill,
    };

_$ContactCardModelImpl _$$ContactCardModelImplFromJson(
  Map<String, dynamic> json,
) => _$ContactCardModelImpl(
  type: json['type'] as String,
  title: LocalizedText.fromJson(json['title'] as Map<String, dynamic>),
  value: json['value'] as String,
  url: json['url'] as String,
);

Map<String, dynamic> _$$ContactCardModelImplToJson(
  _$ContactCardModelImpl instance,
) => <String, dynamic>{
  'type': instance.type,
  'title': instance.title,
  'value': instance.value,
  'url': instance.url,
};

_$ContactHubModelImpl _$$ContactHubModelImplFromJson(
  Map<String, dynamic> json,
) => _$ContactHubModelImpl(
  title: LocalizedText.fromJson(json['title'] as Map<String, dynamic>),
  subtitle: LocalizedText.fromJson(json['subtitle'] as Map<String, dynamic>),
  primaryCta: ContactCta.fromJson(json['primaryCta'] as Map<String, dynamic>),
  cards:
      (json['cards'] as List<dynamic>?)
          ?.map((e) => ContactCardModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$$ContactHubModelImplToJson(
  _$ContactHubModelImpl instance,
) => <String, dynamic>{
  'title': instance.title,
  'subtitle': instance.subtitle,
  'primaryCta': instance.primaryCta,
  'cards': instance.cards,
};
