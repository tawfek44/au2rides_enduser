// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choose_ride_type_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChooseRideTypeEntity _$ChooseRideTypeEntityFromJson(
        Map<String, dynamic> json) =>
    ChooseRideTypeEntity(
      rideTypeId: json['ride_type_id'] as int,
      languageId: json['language_id'] as int,
      rideTypeName: json['ride_type_name'] as String,
      rideTypeLogoUrl: json['ride_type_logo_url'] as String,
    );

Map<String, dynamic> _$ChooseRideTypeEntityToJson(
        ChooseRideTypeEntity instance) =>
    <String, dynamic>{
      'ride_type_id': instance.rideTypeId,
      'language_id': instance.languageId,
      'ride_type_name': instance.rideTypeName,
      'ride_type_logo_url': instance.rideTypeLogoUrl,
    };