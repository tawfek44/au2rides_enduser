// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_units_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherUnitsEntity _$WeatherUnitsEntityFromJson(Map<String, dynamic> json) =>
    WeatherUnitsEntity(
      measuringUnitId: json['measuring_unit_id'] as int,
      languageId: json['language_id'] as int,
      measuringUnitCode: json['measuring_unit_code'] as String,
      measuringUnitName: json['measuring_unit_name'] as String,
    );

Map<String, dynamic> _$WeatherUnitsEntityToJson(WeatherUnitsEntity instance) =>
    <String, dynamic>{
      'measuring_unit_id': instance.measuringUnitId,
      'language_id': instance.languageId,
      'measuring_unit_code': instance.measuringUnitCode,
      'measuring_unit_name': instance.measuringUnitName,
    };
