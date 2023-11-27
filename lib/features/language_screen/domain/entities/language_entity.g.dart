// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LanguageEntity _$LanguageEntityFromJson(Map<String, dynamic> json) =>
    LanguageEntity(
      languageId: json['_language_id'] as int,
      languageCode: json['language_code'] as String,
      languageName: json['language_name'] as String,
      directionality: json['directionality'] as String,
    );

Map<String, dynamic> _$LanguageEntityToJson(LanguageEntity instance) =>
    <String, dynamic>{
      '_language_id': instance.languageId,
      'language_code': instance.languageCode,
      'language_name': instance.languageName,
      'directionality': instance.directionality,
    };
