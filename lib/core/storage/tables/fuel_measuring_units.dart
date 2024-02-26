class FuelMeasuringUnitsFields {
  static const String fuelUnitId = "fuel_unit_id";
  static const String languageId = "language_id";
  static const String fuelUnitName = "fuel_unit_name";
  static const String fuelUnitCode = "fuel_unit_code";
}

class FuelMeasuringUnits {
  final int fuelUnitId;
  final int languageId;
  final String fuelUnitName;
  final String fuelUnitCode;

  FuelMeasuringUnits({
    required this.fuelUnitId,
    required this.languageId,
    required this.fuelUnitName,
    required this.fuelUnitCode,
  });

  Map<String, Object> toJson() => {
        FuelMeasuringUnitsFields.fuelUnitId: fuelUnitId,
        FuelMeasuringUnitsFields.languageId: languageId,
        FuelMeasuringUnitsFields.fuelUnitName: fuelUnitName,
        FuelMeasuringUnitsFields.fuelUnitCode: fuelUnitCode,
      };
}
