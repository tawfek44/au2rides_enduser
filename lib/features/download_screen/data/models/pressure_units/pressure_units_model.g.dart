// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pressure_units_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PressureUnitsModel _$PressureUnitsModelFromJson(Map<String, dynamic> json) =>
    PressureUnitsModel(
      pressureUnitId: json['pressure_unit_id'] as int,
      languageId: json['language_id'] as int,
      pressureUnitName: json['pressure_unit_name'] as String,
      pressureUnitCode: json['pressure_unit_code'] as String,
    );

Map<String, dynamic> _$PressureUnitsModelToJson(PressureUnitsModel instance) =>
    <String, dynamic>{
      'pressure_unit_id': instance.pressureUnitId,
      'language_id': instance.languageId,
      'pressure_unit_name': instance.pressureUnitName,
      'pressure_unit_code': instance.pressureUnitCode,
    };
