// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ride_types_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RideTypesModel _$RideTypesModelFromJson(Map<String, dynamic> json) =>
    RideTypesModel(
      rideTypeId: json['ride_type_id'] as int?,
      languageId: json['language_id'] as int?,
      rideTypeName: json['ride_type_name'] as String?,
      rideTypeLogoUrl: json['ride_type_logo_url'] as String?,
    );

Map<String, dynamic> _$RideTypesModelToJson(RideTypesModel instance) =>
    <String, dynamic>{
      'ride_type_id': instance.rideTypeId,
      'language_id': instance.languageId,
      'ride_type_name': instance.rideTypeName,
      'ride_type_logo_url': instance.rideTypeLogoUrl,
    };
