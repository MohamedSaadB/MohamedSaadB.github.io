// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'about_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AboutCardModelImpl _$$AboutCardModelImplFromJson(Map<String, dynamic> json) =>
    _$AboutCardModelImpl(
      icon: json['icon'] as String,
      title: LocalizedText.fromJson(json['title'] as Map<String, dynamic>),
      value: LocalizedText.fromJson(json['value'] as Map<String, dynamic>),
      subtitle: LocalizedText.fromJson(
        json['subtitle'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$$AboutCardModelImplToJson(
  _$AboutCardModelImpl instance,
) => <String, dynamic>{
  'icon': instance.icon,
  'title': instance.title,
  'value': instance.value,
  'subtitle': instance.subtitle,
};

_$AboutModelImpl _$$AboutModelImplFromJson(Map<String, dynamic> json) =>
    _$AboutModelImpl(
      title: LocalizedText.fromJson(json['title'] as Map<String, dynamic>),
      bio: LocalizedText.fromJson(json['bio'] as Map<String, dynamic>),
      skills:
          (json['skills'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      cards:
          (json['cards'] as List<dynamic>?)
              ?.map((e) => AboutCardModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$AboutModelImplToJson(_$AboutModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'bio': instance.bio,
      'skills': instance.skills,
      'cards': instance.cards,
    };
