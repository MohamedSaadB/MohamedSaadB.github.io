// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CheckoutStepsImpl _$$CheckoutStepsImplFromJson(Map<String, dynamic> json) =>
    _$CheckoutStepsImpl(
      briefTitle: LocalizedText.fromJson(
        json['briefTitle'] as Map<String, dynamic>,
      ),
      summaryTitle: LocalizedText.fromJson(
        json['summaryTitle'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$$CheckoutStepsImplToJson(_$CheckoutStepsImpl instance) =>
    <String, dynamic>{
      'briefTitle': instance.briefTitle,
      'summaryTitle': instance.summaryTitle,
    };

_$CheckoutCtaImpl _$$CheckoutCtaImplFromJson(Map<String, dynamic> json) =>
    _$CheckoutCtaImpl(
      continueText: LocalizedText.fromJson(
        json['continueText'] as Map<String, dynamic>,
      ),
      proceedText: LocalizedText.fromJson(
        json['proceedText'] as Map<String, dynamic>,
      ),
      note: LocalizedText.fromJson(json['note'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CheckoutCtaImplToJson(_$CheckoutCtaImpl instance) =>
    <String, dynamic>{
      'continueText': instance.continueText,
      'proceedText': instance.proceedText,
      'note': instance.note,
    };

_$CheckoutFieldImpl _$$CheckoutFieldImplFromJson(Map<String, dynamic> json) =>
    _$CheckoutFieldImpl(
      key: json['key'] as String,
      label: LocalizedText.fromJson(json['label'] as Map<String, dynamic>),
      options:
          (json['options'] as List<dynamic>?)
              ?.map((e) => LocalizedText.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CheckoutFieldImplToJson(_$CheckoutFieldImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'label': instance.label,
      'options': instance.options,
    };

_$CheckoutTargetsImpl _$$CheckoutTargetsImplFromJson(
  Map<String, dynamic> json,
) => _$CheckoutTargetsImpl(
  khamsatUrl: json['khamsatUrl'] as String,
  whatsappPhone: json['whatsappPhone'] as String,
  whatsappPrefill: LocalizedText.fromJson(
    json['whatsappPrefill'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$$CheckoutTargetsImplToJson(
  _$CheckoutTargetsImpl instance,
) => <String, dynamic>{
  'khamsatUrl': instance.khamsatUrl,
  'whatsappPhone': instance.whatsappPhone,
  'whatsappPrefill': instance.whatsappPrefill,
};

_$CheckoutPageModelImpl _$$CheckoutPageModelImplFromJson(
  Map<String, dynamic> json,
) => _$CheckoutPageModelImpl(
  title: LocalizedText.fromJson(json['title'] as Map<String, dynamic>),
  subtitle: LocalizedText.fromJson(json['subtitle'] as Map<String, dynamic>),
  steps: CheckoutSteps.fromJson(json['steps'] as Map<String, dynamic>),
  fields:
      (json['fields'] as List<dynamic>?)
          ?.map((e) => CheckoutField.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  cta: CheckoutCta.fromJson(json['cta'] as Map<String, dynamic>),
  contactTargets: CheckoutTargets.fromJson(
    json['contactTargets'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$$CheckoutPageModelImplToJson(
  _$CheckoutPageModelImpl instance,
) => <String, dynamic>{
  'title': instance.title,
  'subtitle': instance.subtitle,
  'steps': instance.steps,
  'fields': instance.fields,
  'cta': instance.cta,
  'contactTargets': instance.contactTargets,
};
