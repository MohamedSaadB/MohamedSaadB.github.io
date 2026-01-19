// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContactModelImpl _$$ContactModelImplFromJson(
  Map<String, dynamic> json,
) => _$ContactModelImpl(
  title: LocalizedText.fromJson(json['title'] as Map<String, dynamic>),
  subtitle: LocalizedText.fromJson(json['subtitle'] as Map<String, dynamic>),
  emailLabel: LocalizedText.fromJson(
    json['emailLabel'] as Map<String, dynamic>,
  ),
  locationLabel: LocalizedText.fromJson(
    json['locationLabel'] as Map<String, dynamic>,
  ),
  email: json['email'] as String,
  location: LocalizedText.fromJson(json['location'] as Map<String, dynamic>),
  nameLabel: LocalizedText.fromJson(json['nameLabel'] as Map<String, dynamic>),
  nameHint: LocalizedText.fromJson(json['nameHint'] as Map<String, dynamic>),
  emailFieldLabel: LocalizedText.fromJson(
    json['emailFieldLabel'] as Map<String, dynamic>,
  ),
  emailHint: LocalizedText.fromJson(json['emailHint'] as Map<String, dynamic>),
  messageLabel: LocalizedText.fromJson(
    json['messageLabel'] as Map<String, dynamic>,
  ),
  messageHint: LocalizedText.fromJson(
    json['messageHint'] as Map<String, dynamic>,
  ),
  send: LocalizedText.fromJson(json['send'] as Map<String, dynamic>),
  sent: LocalizedText.fromJson(json['sent'] as Map<String, dynamic>),
  subject: LocalizedText.fromJson(json['subject'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$ContactModelImplToJson(_$ContactModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'subtitle': instance.subtitle,
      'emailLabel': instance.emailLabel,
      'locationLabel': instance.locationLabel,
      'email': instance.email,
      'location': instance.location,
      'nameLabel': instance.nameLabel,
      'nameHint': instance.nameHint,
      'emailFieldLabel': instance.emailFieldLabel,
      'emailHint': instance.emailHint,
      'messageLabel': instance.messageLabel,
      'messageHint': instance.messageHint,
      'send': instance.send,
      'sent': instance.sent,
      'subject': instance.subject,
    };
