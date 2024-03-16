// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choose_fuel_units_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChooseFuelUnitsEntity _$ChooseFuelUnitsEntityFromJson(
        Map<String, dynamic> json) =>
    ChooseFuelUnitsEntity(
      fuelUnitId: json['fuel_unit_id'] as int,
      languageId: json['language_id'] as int,
      fuelUnitName: json['fuel_unit_name'] as String,
      fuelUnitCode: json['fuel_unit_code'] as String,
    );

Map<String, dynamic> _$ChooseFuelUnitsEntityToJson(
        ChooseFuelUnitsEntity instance) =>
    <String, dynamic>{
      'fuel_unit_id': instance.fuelUnitId,
      'language_id': instance.languageId,
      'fuel_unit_name': instance.fuelUnitName,
      'fuel_unit_code': instance.fuelUnitCode,
    };
