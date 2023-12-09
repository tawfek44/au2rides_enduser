// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'acquisition_types_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AcquisitionTypesModel _$AcquisitionTypesModelFromJson(
        Map<String, dynamic> json) =>
    AcquisitionTypesModel(
      acquisitionTypeId: json['acquisition_type_id'] as int,
      languageId: json['language_id'] as int,
      acquisitionTypeName: json['acquisition_type_name'] as String,
    );

Map<String, dynamic> _$AcquisitionTypesModelToJson(
        AcquisitionTypesModel instance) =>
    <String, dynamic>{
      'acquisition_type_id': instance.acquisitionTypeId,
      'language_id': instance.languageId,
      'acquisition_type_name': instance.acquisitionTypeName,
    };
