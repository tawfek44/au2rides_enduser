// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_generation_specification_keys_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModelGenerationSpecificationKeysEntity
    _$ModelGenerationSpecificationKeysEntityFromJson(
            Map<String, dynamic> json) =>
        ModelGenerationSpecificationKeysEntity(
          tyreConstructionTypeId: json['tyre_construction_type_id'] as int,
          languageId: json['language_id'] as int,
          tyreConstructionTypeName:
              json['tyre_construction_type_name'] as String,
          tyreConstructionTypeCode:
              json['tyre_construction_type_code'] as String,
        );

Map<String, dynamic> _$ModelGenerationSpecificationKeysEntityToJson(
        ModelGenerationSpecificationKeysEntity instance) =>
    <String, dynamic>{
      'tyre_construction_type_id': instance.tyreConstructionTypeId,
      'language_id': instance.languageId,
      'tyre_construction_type_name': instance.tyreConstructionTypeName,
      'tyre_construction_type_code': instance.tyreConstructionTypeCode,
    };
