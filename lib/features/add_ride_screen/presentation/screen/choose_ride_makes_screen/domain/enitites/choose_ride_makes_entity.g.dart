// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choose_ride_makes_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChooseRideMakesEntity _$ChooseRideMakesEntityFromJson(
        Map<String, dynamic> json) =>
    ChooseRideMakesEntity(
      makeId: json['make_id'] as String,
      makeName: json['make_name'] as String,
      makeLogoUrl: json['make_logo_url'] as String,
    );

Map<String, dynamic> _$ChooseRideMakesEntityToJson(
        ChooseRideMakesEntity instance) =>
    <String, dynamic>{
      'make_id': instance.makeId,
      'make_name': instance.makeName,
      'make_logo_url': instance.makeLogoUrl,
    };
