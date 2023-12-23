class DepartmentServiceItemsFields {
  static const String departmentServiceItemId = "department_service_item_id";
  static const String languageId = "language_id";
  static const String departmentServiceItemName = "department_service_item_name";
  static const String serviceTypeId = "service_type_id";
  static const String serviceDepartmentId = "service_department_id";
  static const String serviceImageUrl = "service_image_url";
}

class DepartmentServiceItems {
  final int departmentServiceItemId;
  final int languageId;
  final String departmentServiceItemName;
  final int serviceTypeId;
  final int serviceDepartmentId;
  final String serviceImageUrl;

  DepartmentServiceItems(
      {required this.departmentServiceItemId,
      required this.languageId,
      required this.departmentServiceItemName,
      required this.serviceTypeId,
      required this.serviceDepartmentId,
      required this.serviceImageUrl,
      });

  Map<String, Object> toJson() => {
    DepartmentServiceItemsFields.departmentServiceItemId: departmentServiceItemId,
    DepartmentServiceItemsFields.languageId: languageId,
    DepartmentServiceItemsFields.departmentServiceItemName: departmentServiceItemName,
    DepartmentServiceItemsFields.serviceTypeId: serviceTypeId,
    DepartmentServiceItemsFields.serviceDepartmentId: serviceDepartmentId,
    DepartmentServiceItemsFields.serviceImageUrl: serviceImageUrl,
      };
}
