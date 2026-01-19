// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectModelImpl _$$ProjectModelImplFromJson(Map<String, dynamic> json) =>
    _$ProjectModelImpl(
      slug: json['slug'] as String,
      title: LocalizedText.fromJson(json['title'] as Map<String, dynamic>),
      summary: LocalizedText.fromJson(json['summary'] as Map<String, dynamic>),
      role:
          json['role'] == null
              ? null
              : LocalizedText.fromJson(json['role'] as Map<String, dynamic>),
      tech:
          (json['tech'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const [],
      thumbnail: json['thumbnail'] as String,
      gallery:
          (json['gallery'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      liveUrlPlay: json['liveUrlPlay'] as String?,
      liveUrlIos: json['liveUrlIos'] as String?,
      repoUrl: json['repoUrl'] as String?,
    );

Map<String, dynamic> _$$ProjectModelImplToJson(_$ProjectModelImpl instance) =>
    <String, dynamic>{
      'slug': instance.slug,
      'title': instance.title,
      'summary': instance.summary,
      'role': instance.role,
      'tech': instance.tech,
      'thumbnail': instance.thumbnail,
      'gallery': instance.gallery,
      'liveUrlPlay': instance.liveUrlPlay,
      'liveUrlIos': instance.liveUrlIos,
      'repoUrl': instance.repoUrl,
    };
