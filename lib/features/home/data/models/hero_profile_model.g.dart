// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hero_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HeroHighlightImpl _$$HeroHighlightImplFromJson(Map<String, dynamic> json) =>
    _$HeroHighlightImpl(
      icon: json['icon'] as String,
      title: LocalizedText.fromJson(json['title'] as Map<String, dynamic>),
      desc: LocalizedText.fromJson(json['desc'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HeroHighlightImplToJson(_$HeroHighlightImpl instance) =>
    <String, dynamic>{
      'icon': instance.icon,
      'title': instance.title,
      'desc': instance.desc,
    };

_$HeroProfileModelImpl _$$HeroProfileModelImplFromJson(
  Map<String, dynamic> json,
) => _$HeroProfileModelImpl(
  name: json['name'] as String,
  title: LocalizedText.fromJson(json['title'] as Map<String, dynamic>),
  summary: LocalizedText.fromJson(json['summary'] as Map<String, dynamic>),
  badge: LocalizedText.fromJson(json['badge'] as Map<String, dynamic>),
  highlightsTitle: LocalizedText.fromJson(
    json['highlightsTitle'] as Map<String, dynamic>,
  ),
  highlights:
      (json['highlights'] as List<dynamic>?)
          ?.map((e) => HeroHighlight.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  ctaContact: LocalizedText.fromJson(
    json['ctaContact'] as Map<String, dynamic>,
  ),
  ctaCv: LocalizedText.fromJson(json['ctaCv'] as Map<String, dynamic>),
  contact: ContactModel.fromJson(json['contact'] as Map<String, dynamic>),
  contactHub: ContactHubModel.fromJson(
    json['contactHub'] as Map<String, dynamic>,
  ),
  about: AboutModel.fromJson(json['about'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$HeroProfileModelImplToJson(
  _$HeroProfileModelImpl instance,
) => <String, dynamic>{
  'name': instance.name,
  'title': instance.title,
  'summary': instance.summary,
  'badge': instance.badge,
  'highlightsTitle': instance.highlightsTitle,
  'highlights': instance.highlights,
  'ctaContact': instance.ctaContact,
  'ctaCv': instance.ctaCv,
  'contact': instance.contact,
  'contactHub': instance.contactHub,
  'about': instance.about,
};
