// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pricing_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PricingFaqImpl _$$PricingFaqImplFromJson(Map<String, dynamic> json) =>
    _$PricingFaqImpl(
      q: LocalizedText.fromJson(json['q'] as Map<String, dynamic>),
      a: LocalizedText.fromJson(json['a'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PricingFaqImplToJson(_$PricingFaqImpl instance) =>
    <String, dynamic>{'q': instance.q, 'a': instance.a};

_$PricingPlanImpl _$$PricingPlanImplFromJson(
  Map<String, dynamic> json,
) => _$PricingPlanImpl(
  tag: LocalizedText.fromJson(json['tag'] as Map<String, dynamic>),
  name: LocalizedText.fromJson(json['name'] as Map<String, dynamic>),
  priceText: LocalizedText.fromJson(json['priceText'] as Map<String, dynamic>),
  durationText: LocalizedText.fromJson(
    json['durationText'] as Map<String, dynamic>,
  ),
  highlight: json['highlight'] as bool? ?? false,
  features:
      (json['features'] as List<dynamic>?)
          ?.map((e) => LocalizedText.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  ctaLabel: LocalizedText.fromJson(json['ctaLabel'] as Map<String, dynamic>),
  ctaTarget: json['ctaTarget'] as String,
);

Map<String, dynamic> _$$PricingPlanImplToJson(_$PricingPlanImpl instance) =>
    <String, dynamic>{
      'tag': instance.tag,
      'name': instance.name,
      'priceText': instance.priceText,
      'durationText': instance.durationText,
      'highlight': instance.highlight,
      'features': instance.features,
      'ctaLabel': instance.ctaLabel,
      'ctaTarget': instance.ctaTarget,
    };

_$PricingPageModelImpl _$$PricingPageModelImplFromJson(
  Map<String, dynamic> json,
) => _$PricingPageModelImpl(
  title: LocalizedText.fromJson(json['title'] as Map<String, dynamic>),
  subtitle: LocalizedText.fromJson(json['subtitle'] as Map<String, dynamic>),
  note: LocalizedText.fromJson(json['note'] as Map<String, dynamic>),
  plans:
      (json['plans'] as List<dynamic>?)
          ?.map((e) => PricingPlan.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  faqTitle: LocalizedText.fromJson(json['faqTitle'] as Map<String, dynamic>),
  faq:
      (json['faq'] as List<dynamic>?)
          ?.map((e) => PricingFaq.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$$PricingPageModelImplToJson(
  _$PricingPageModelImpl instance,
) => <String, dynamic>{
  'title': instance.title,
  'subtitle': instance.subtitle,
  'note': instance.note,
  'plans': instance.plans,
  'faqTitle': instance.faqTitle,
  'faq': instance.faq,
};
