// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gender_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenderEntity _$GenderEntityFromJson(Map<String, dynamic> json) => GenderEntity(
      genderId: json['gender_id'] as int,
      languageId: json['language_id'] as int,
      genderName: json['gender_name'] as String,
    );

Map<String, dynamic> _$GenderEntityToJson(GenderEntity instance) =>
    <String, dynamic>{
      'gender_id': instance.genderId,
      'language_id': instance.languageId,
      'gender_name': instance.genderName,
    };