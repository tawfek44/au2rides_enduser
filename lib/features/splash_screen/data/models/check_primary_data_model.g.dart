// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_primary_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckPrimaryDataModel _$CheckPrimaryDataModelFromJson(
        Map<String, dynamic> json) =>
    CheckPrimaryDataModel(
      collectionItemId: json['collection_item_id'] as int,
      collectionItemDataVersion: json['collection_item_data_version'] as String,
      collectionItemSchemaVersion:
          json['collection_item_schema_version'] as String,
      collectionItemName: json['collection_item_name'] as String,
    );

Map<String, dynamic> _$CheckPrimaryDataModelToJson(
        CheckPrimaryDataModel instance) =>
    <String, dynamic>{
      'collection_item_id': instance.collectionItemId,
      'collection_item_schema_version': instance.collectionItemSchemaVersion,
      'collection_item_name': instance.collectionItemName,
      'collection_item_data_version': instance.collectionItemDataVersion,
    };
