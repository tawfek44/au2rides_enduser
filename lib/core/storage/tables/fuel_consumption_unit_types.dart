class FuelConsumptionUnitTypesFields {
  static const String fuelConsumptionUnitTypeId =
      "fuel_consumption_unit_type_id";
  static const String languageId = "language_id";
  static const String fuelConsumptionUnitTypeName =
      "fuel_consumption_unit_type_name";
}

class FuelConsumptionUnitTypes {
  final int fuelConsumptionUnitTypeId;
  final int languageId;
  final String fuelConsumptionUnitTypeName;

  FuelConsumptionUnitTypes(
      {required this.fuelConsumptionUnitTypeId,
      required this.languageId,
      required this.fuelConsumptionUnitTypeName});

  Map<String, Object> toJson() => {
        FuelConsumptionUnitTypesFields.fuelConsumptionUnitTypeId:
            fuelConsumptionUnitTypeId,
        FuelConsumptionUnitTypesFields.languageId: languageId,
        FuelConsumptionUnitTypesFields.fuelConsumptionUnitTypeName:
            fuelConsumptionUnitTypeName,
      };
}
