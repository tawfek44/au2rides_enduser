// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_types_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServiceTypesEntity _$ServiceTypesEntityFromJson(Map<String, dynamic> json) =>
    ServiceTypesEntity(
      serviceTypeId: json['service_type_id'] as int,
      languageId: json['language_id'] as int,
      serviceTypeName: json['service_type_name'] as String,
    );

Map<String, dynamic> _$ServiceTypesEntityToJson(ServiceTypesEntity instance) =>
    <String, dynamic>{
      'service_type_id': instance.serviceTypeId,
      'language_id': instance.languageId,
      'service_type_name': instance.serviceTypeName,
    };
