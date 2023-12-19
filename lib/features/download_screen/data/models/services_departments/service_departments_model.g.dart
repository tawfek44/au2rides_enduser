// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_departments_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServiceDepartmentsModel _$ServiceDepartmentsModelFromJson(
        Map<String, dynamic> json) =>
    ServiceDepartmentsModel(
      serviceDepartmentId: json['service_department_id'] as int,
      languageId: json['language_id'] as int,
      serviceDepartmentName: json['service_department_name'] as String,
    );

Map<String, dynamic> _$ServiceDepartmentsModelToJson(
        ServiceDepartmentsModel instance) =>
    <String, dynamic>{
      'service_department_id': instance.serviceDepartmentId,
      'language_id': instance.languageId,
      'service_department_name': instance.serviceDepartmentName,
    };
