// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'engine_transmission_types_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EngineTransmissionTypesEntity _$EngineTransmissionTypesEntityFromJson(
        Map<String, dynamic> json) =>
    EngineTransmissionTypesEntity(
      engineTransmissionTypeId: json['engine_transmission_type_id'] as int,
      languageId: json['language_id'] as int,
      engineTransmissionTypeName:
          json['engine_transmission_type_name'] as String,
    );

Map<String, dynamic> _$EngineTransmissionTypesEntityToJson(
        EngineTransmissionTypesEntity instance) =>
    <String, dynamic>{
      'engine_transmission_type_id': instance.engineTransmissionTypeId,
      'language_id': instance.languageId,
      'engine_transmission_type_name': instance.engineTransmissionTypeName,
    };
