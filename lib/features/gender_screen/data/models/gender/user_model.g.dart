// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenderModel _$GenderModelFromJson(Map<String, dynamic> json) => GenderModel(
      genderId: json['gender_id'] as int,
      languaeId: json['language_id'] as int,
      genderName: json['gender_name'] as String,
    );

Map<String, dynamic> _$GenderModelToJson(GenderModel instance) =>
    <String, dynamic>{
      'gender_id': instance.genderId,
      'language_id': instance.languaeId,
      'gender_name': instance.genderName,
    };