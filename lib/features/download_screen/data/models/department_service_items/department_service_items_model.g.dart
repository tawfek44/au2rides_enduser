// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'department_service_items_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DepartmentServiceItemsModel _$DepartmentServiceItemsModelFromJson(
        Map<String, dynamic> json) =>
    DepartmentServiceItemsModel(
      departmentServiceItemId: json['department_service_item_id'] as int,
      languageId: json['language_id'] as int,
      departmentServiceItemName: json['department_service_item_name'] as String,
      serviceTypeId: json['service_type_id'] as int,
      serviceDepartmentId: json['service_department_id'] as int,
      serviceImageUrl: json['service_image_url'] as String,
    );

Map<String, dynamic> _$DepartmentServiceItemsModelToJson(
        DepartmentServiceItemsModel instance) =>
    <String, dynamic>{
      'department_service_item_id': instance.departmentServiceItemId,
      'language_id': instance.languageId,
      'department_service_item_name': instance.departmentServiceItemName,
      'service_type_id': instance.serviceTypeId,
      'service_department_id': instance.serviceDepartmentId,
      'service_image_url': instance.serviceImageUrl,
    };
