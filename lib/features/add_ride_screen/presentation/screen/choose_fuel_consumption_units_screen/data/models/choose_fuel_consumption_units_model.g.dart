// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choose_fuel_consumption_units_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FuelConsumptionUnitsModel _$FuelConsumptionUnitsModelFromJson(
        Map<String, dynamic> json) =>
    FuelConsumptionUnitsModel(
      fuelConsumptionUnitTypeId: json['fuel_consumption_unit_type_id'] as int,
      languageId: json['language_id'] as int,
      fuelConsumptionUnitTypeName:
          json['fuel_consumption_unit_type_name'] as String,
    );

Map<String, dynamic> _$FuelConsumptionUnitsModelToJson(
        FuelConsumptionUnitsModel instance) =>
    <String, dynamic>{
      'fuel_consumption_unit_type_id': instance.fuelConsumptionUnitTypeId,
      'language_id': instance.languageId,
      'fuel_consumption_unit_type_name': instance.fuelConsumptionUnitTypeName,
    };
