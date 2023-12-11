class EngineFuelTypesFields {
  static const String engineFuelTypeId = "engine_fuel_type_id";
  static const String languageId = "language_id";
  static const String engineFuelTypeName = "engine_fuel_type_name";
}

class EngineFuelTypes {
  final String engineFuelTypeId;
  final String languageId;
  final String engineFuelTypeName;

  EngineFuelTypes(
      {required this.languageId,
        required this.engineFuelTypeId,
        required this.engineFuelTypeName,});

  Map<String, Object> toJson() => {
    EngineFuelTypesFields.engineFuelTypeId: engineFuelTypeId,
    EngineFuelTypesFields.languageId: languageId,
    EngineFuelTypesFields.engineFuelTypeName: engineFuelTypeName,
  };
}
