// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choose_fuel_consumption_units_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FuelConsumptionUnitsEntity _$FuelConsumptionUnitsEntityFromJson(
        Map<String, dynamic> json) =>
    FuelConsumptionUnitsEntity(
      fuelConsumptionUnitTypeId: json['fuel_consumption_unit_type_id'] as int,
      languageId: json['language_id'] as int,
      fuelConsumptionUnitTypeName:
          json['fuel_consumption_unit_type_name'] as String,
    );

Map<String, dynamic> _$FuelConsumptionUnitsEntityToJson(
        FuelConsumptionUnitsEntity instance) =>
    <String, dynamic>{
      'fuel_consumption_unit_type_id': instance.fuelConsumptionUnitTypeId,
      'language_id': instance.languageId,
      'fuel_consumption_unit_type_name': instance.fuelConsumptionUnitTypeName,
    };