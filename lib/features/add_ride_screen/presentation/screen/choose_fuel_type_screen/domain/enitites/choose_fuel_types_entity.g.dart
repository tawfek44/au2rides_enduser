// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choose_fuel_types_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChooseFuelTypesEntity _$ChooseFuelTypesEntityFromJson(
        Map<String, dynamic> json) =>
    ChooseFuelTypesEntity(
      engineFuelTypeId: json['engine_fuel_type_id'] as int,
      languageId: json['language_id'] as int,
      engineFuelTypeName: json['engine_fuel_type_name'] as String,
    );

Map<String, dynamic> _$ChooseFuelTypesEntityToJson(
        ChooseFuelTypesEntity instance) =>
    <String, dynamic>{
      'engine_fuel_type_id': instance.engineFuelTypeId,
      'language_id': instance.languageId,
      'engine_fuel_type_name': instance.engineFuelTypeName,
    };
