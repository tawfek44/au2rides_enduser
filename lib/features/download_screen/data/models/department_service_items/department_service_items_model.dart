import 'package:au2rides/features/download_screen/domain/entity/acquisition_types/acquisition_types_entity.dart';
import 'package:au2rides/features/download_screen/domain/entity/department_service_items/department_service_items_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'department_service_items_model.g.dart';

@JsonSerializable()
class DepartmentServiceItemsModel extends DepartmentServiceItemsEntity {
  const DepartmentServiceItemsModel(
      {required super.departmentServiceItemId,
      required super.languageId,
      required super.departmentServiceItemName,
      required super.serviceTypeId,
      required super.serviceDepartmentId,
      required super.serviceImageUrl});

  factory DepartmentServiceItemsModel.fromJson(
      final Map<String, dynamic> json) {
    return _$DepartmentServiceItemsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DepartmentServiceItemsModelToJson(this);
}
