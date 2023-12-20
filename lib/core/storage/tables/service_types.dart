class ServiceTypesFields {
  static const String serviceTypeId = "service_type_id";
  static const String languageId = "language_id";
  static const String serviceTypeName = "service_type_name";
}

class ServiceTypes {
  final int serviceTypeId;
  final int languageId;
  final String serviceTypeName;

  ServiceTypes(
      {required this.serviceTypeId,
      required this.languageId,
      required this.serviceTypeName});

  Map<String, Object> toJson() => {
        ServiceTypesFields.serviceTypeId: serviceTypeId,
        ServiceTypesFields.languageId: languageId,
        ServiceTypesFields.serviceTypeName: serviceTypeName,
      };
}
