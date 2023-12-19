class ServiceDepartmentsFields {
  static const String serviceDepartmentId = "service_department_id";
  static const String languageId = "language_id";
  static const String serviceDepartmentName = "service_department_name";
}

class ServiceDepartments {
  final int serviceDepartmentId;
  final int languageId;
  final String serviceDepartmentName;

  ServiceDepartments(
      {required this.serviceDepartmentId,
      required this.languageId,
      required this.serviceDepartmentName});

  Map<String, Object> toJson() => {
        ServiceDepartmentsFields.serviceDepartmentId: serviceDepartmentId,
        ServiceDepartmentsFields.languageId: languageId,
        ServiceDepartmentsFields.serviceDepartmentName: serviceDepartmentName,
      };
}
