// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fuel_measuring_units_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FuelMeasuringUnitsModel _$FuelMeasuringUnitsModelFromJson(
        Map<String, dynamic> json) =>
    FuelMeasuringUnitsModel(
      fuelUnitId: json['fuel_unit_id'] as int,
      languageId: json['language_id'] as int,
      fuelUnitName: json['fuel_unit_name'] as String,
      fuelUnitCode: json['fuel_unit_code'] as String,
    );

Map<String, dynamic> _$FuelMeasuringUnitsModelToJson(
        FuelMeasuringUnitsModel instance) =>
    <String, dynamic>{
      'fuel_unit_id': instance.fuelUnitId,
      'language_id': instance.languageId,
      'fuel_unit_name': instance.fuelUnitName,
      'fuel_unit_code': instance.fuelUnitCode,
    };
