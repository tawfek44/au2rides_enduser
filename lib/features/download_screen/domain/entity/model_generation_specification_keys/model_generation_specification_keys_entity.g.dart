// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_generation_specification_keys_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModelGenerationSpecificationKeysEntity
    _$ModelGenerationSpecificationKeysEntityFromJson(
            Map<String, dynamic> json) =>
        ModelGenerationSpecificationKeysEntity(
          tyreConstructionTypeId: json['tire_construction_type_id'] as int,
          languageId: json['language_id'] as int,
          tyreConstructionTypeName:
              json['tire_construction_type_name'] as String,
          tyreConstructionTypeCode:
              json['tire_construction_type_code'] as String,
        );

Map<String, dynamic> _$ModelGenerationSpecificationKeysEntityToJson(
        ModelGenerationSpecificationKeysEntity instance) =>
    <String, dynamic>{
      'tire_construction_type_id': instance.tyreConstructionTypeId,
      'language_id': instance.languageId,
      'tire_construction_type_name': instance.tyreConstructionTypeName,
      'tire_construction_type_code': instance.tyreConstructionTypeCode,
    };
