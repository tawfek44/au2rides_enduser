// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'engine_transmission_types_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EngineTransmissionTypesModel _$EngineTransmissionTypesModelFromJson(
        Map<String, dynamic> json) =>
    EngineTransmissionTypesModel(
      engineTransmissionTypeId: json['engine_transmission_type_id'] as int,
      languageId: json['language_id'] as int,
      engineTransmissionTypeName:
          json['engine_transmission_type_name'] as String,
    );

Map<String, dynamic> _$EngineTransmissionTypesModelToJson(
        EngineTransmissionTypesModel instance) =>
    <String, dynamic>{
      'engine_transmission_type_id': instance.engineTransmissionTypeId,
      'language_id': instance.languageId,
      'engine_transmission_type_name': instance.engineTransmissionTypeName,
    };
