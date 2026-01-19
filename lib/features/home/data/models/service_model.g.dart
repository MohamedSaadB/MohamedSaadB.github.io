// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServiceModelImpl _$$ServiceModelImplFromJson(Map<String, dynamic> json) =>
    _$ServiceModelImpl(
      icon: json['icon'] as String,
      title: LocalizedText.fromJson(json['title'] as Map<String, dynamic>),
      desc: LocalizedText.fromJson(json['desc'] as Map<String, dynamic>),
      bullets:
          (json['bullets'] as List<dynamic>?)
              ?.map((e) => LocalizedText.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ServiceModelImplToJson(_$ServiceModelImpl instance) =>
    <String, dynamic>{
      'icon': instance.icon,
      'title': instance.title,
      'desc': instance.desc,
      'bullets': instance.bullets,
    };
