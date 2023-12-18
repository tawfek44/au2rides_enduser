// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fuel_consumption_unit_types_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FuelConsumptionUnitTypesModel _$FuelConsumptionUnitTypesModelFromJson(
        Map<String, dynamic> json) =>
    FuelConsumptionUnitTypesModel(
      fuelConsumptionUnitTypeId: json['fuel_consumption_unit_type_id'] as int,
      languageId: json['language_id'] as int,
      fuelConsumptionUnitTypeName:
          json['fuel_consumption_unit_type_name'] as String,
    );

Map<String, dynamic> _$FuelConsumptionUnitTypesModelToJson(
        FuelConsumptionUnitTypesModel instance) =>
    <String, dynamic>{
      'fuel_consumption_unit_type_id': instance.fuelConsumptionUnitTypeId,
      'language_id': instance.languageId,
      'fuel_consumption_unit_type_name': instance.fuelConsumptionUnitTypeName,
    };
