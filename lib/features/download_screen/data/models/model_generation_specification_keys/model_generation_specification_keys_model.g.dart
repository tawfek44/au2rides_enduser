// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_generation_specification_keys_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModelGenerationSpecificationKeysModel
    _$ModelGenerationSpecificationKeysModelFromJson(
            Map<String, dynamic> json) =>
        ModelGenerationSpecificationKeysModel(
          specificationItemId: json['specification_item_id'] as int,
          languageId: json['language_id'] as int,
          specificationItemName: json['specification_item_name'] as String,
          specificationItemImageUrl:
              json['specification_item_image_url'] as String,
        );

Map<String, dynamic> _$ModelGenerationSpecificationKeysModelToJson(
        ModelGenerationSpecificationKeysModel instance) =>
    <String, dynamic>{
      'specification_item_id': instance.specificationItemId,
      'language_id': instance.languageId,
      'specification_item_name': instance.specificationItemName,
      'specification_item_image_url': instance.specificationItemImageUrl,
    };
