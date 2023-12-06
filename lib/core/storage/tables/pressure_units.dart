class PressureUnitsFields {
  static const String pressureUnitId = "pressure_unit_id";
  static const String languageId = "language_id";
  static const String pressureUnitName = "pressure_unit_name";
  static const String pressureUnitCode = "pressure_unit_code";
}

class PressureUnits {
  final int pressureUnitId;
  final int languageId;
  final String pressureUnitName;
  final String pressureUnitCode;

  PressureUnits(
      {required this.pressureUnitId,
      required this.languageId,
      required this.pressureUnitName,
      required this.pressureUnitCode});

  Map<String, Object> toJson() => {
        PressureUnitsFields.pressureUnitId: pressureUnitId,
        PressureUnitsFields.languageId: languageId,
        PressureUnitsFields.pressureUnitName: pressureUnitName,
        PressureUnitsFields.pressureUnitCode: pressureUnitCode,
      };
}
