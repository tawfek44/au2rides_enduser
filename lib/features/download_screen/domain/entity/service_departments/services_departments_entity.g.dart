// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'services_departments_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServiceDepartmentsEntity _$ServiceDepartmentsEntityFromJson(
        Map<String, dynamic> json) =>
    ServiceDepartmentsEntity(
      serviceDepartmentId: json['service_department_id'] as int,
      languageId: json['language_id'] as int,
      serviceDepartmentName: json['service_department_name'] as String,
    );

Map<String, dynamic> _$ServiceDepartmentsEntityToJson(
        ServiceDepartmentsEntity instance) =>
    <String, dynamic>{
      'service_department_id': instance.serviceDepartmentId,
      'language_id': instance.languageId,
      'service_department_name': instance.serviceDepartmentName,
    };
