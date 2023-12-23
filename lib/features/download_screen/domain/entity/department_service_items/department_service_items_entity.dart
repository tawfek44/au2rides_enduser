import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'department_service_items_entity.g.dart';

@JsonSerializable()
class DepartmentServiceItemsEntity extends Equatable {
  @JsonKey(name: "department_service_item_id")
  final int departmentServiceItemId;
  @JsonKey(name: "language_id")
  final int languageId;
  @JsonKey(name: "department_service_item_name")
  final String departmentServiceItemName;

  @JsonKey(name: "service_type_id")
  final int serviceTypeId;
  @JsonKey(name: "service_department_id")
  final int serviceDepartmentId;
  @JsonKey(name: "service_image_url")
  final String serviceImageUrl;

  const DepartmentServiceItemsEntity({
    required this.departmentServiceItemId,
    required this.languageId,
    required this.departmentServiceItemName,
    required this.serviceTypeId,
    required this.serviceDepartmentId,
    required this.serviceImageUrl,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        departmentServiceItemId,
        languageId,
        departmentServiceItemName,
        serviceTypeId,
        serviceDepartmentId,
        serviceImageUrl
      ];
}
