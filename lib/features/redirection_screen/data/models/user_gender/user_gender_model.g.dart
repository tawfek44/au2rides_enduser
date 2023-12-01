// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_gender_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserGenderModel _$UserGenderModelFromJson(Map<String, dynamic> json) =>
    UserGenderModel(
      genderId: json['gender_id'] as int,
      languaeId: json['language_id'] as int,
      genderName: json['gender_name'] as String,
    );

Map<String, dynamic> _$UserGenderModelToJson(UserGenderModel instance) =>
    <String, dynamic>{
      'gender_id': instance.genderId,
      'language_id': instance.languaeId,
      'gender_name': instance.genderName,
    };
