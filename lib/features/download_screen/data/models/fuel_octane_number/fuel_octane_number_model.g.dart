// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fuel_octane_number_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FuelOctaneNumberModel _$FuelOctaneNumberModelFromJson(
        Map<String, dynamic> json) =>
    FuelOctaneNumberModel(
      fuelOctaneNumberId: json['fuel_octane_number_id'] as int,
      languageId: json['language_id'] as int,
      fuelOctaneNumber: json['fuel_octane_number'] as String,
    );

Map<String, dynamic> _$FuelOctaneNumberModelToJson(
        FuelOctaneNumberModel instance) =>
    <String, dynamic>{
      'fuel_octane_number_id': instance.fuelOctaneNumberId,
      'language_id': instance.languageId,
      'fuel_octane_number': instance.fuelOctaneNumber,
    };
