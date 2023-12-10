class EngineTransmissionTypesFields {
  static const String engineTransmissionTypeId = "engine_transmission_type_id";
  static const String languageId = "language_id";
  static const String engineTransmissionTypeName =
      "engine_transmission_type_name";
}

class EngineTransmissionTypes {
  final String engineTransmissionTypeId;
  final String languageId;
  final String engineTransmissionTypeName;

  EngineTransmissionTypes(
      {required this.engineTransmissionTypeId,
      required this.languageId,
      required this.engineTransmissionTypeName});

  Map<String, Object> toJson() => {
      EngineTransmissionTypesFields.engineTransmissionTypeId: engineTransmissionTypeId,
      EngineTransmissionTypesFields.languageId: languageId,
      EngineTransmissionTypesFields.engineTransmissionTypeName: engineTransmissionTypeName,
      };
}
