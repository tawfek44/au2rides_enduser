// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'acquisition_types_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AcquisitionTypesEntity _$AcquisitionTypesEntityFromJson(
        Map<String, dynamic> json) =>
    AcquisitionTypesEntity(
      acquisitionTypeId: json['acquisition_type_id'] as int,
      languageId: json['language_id'] as int,
      acquisitionTypeName: json['acquisition_type_name'] as String,
    );

Map<String, dynamic> _$AcquisitionTypesEntityToJson(
        AcquisitionTypesEntity instance) =>
    <String, dynamic>{
      'acquisition_type_id': instance.acquisitionTypeId,
      'language_id': instance.languageId,
      'acquisition_type_name': instance.acquisitionTypeName,
    };
