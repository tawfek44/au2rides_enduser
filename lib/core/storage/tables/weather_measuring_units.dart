class WeatherMeasuringUnitsFields {
  static const String measuringUnitId = "measuring_unit_id";
  static const String languageId = "language_id";
  static const String measuringUnitCode = "measuring_unit_code";
  static const String measuringUnitName = "measuring_unit_name";
}

class WeatherMeasuringUnits {
  final int measuringUnitId;
  final int languageId;
  final String measuringUnitCode;
  final String measuringUnitName;

  WeatherMeasuringUnits(
      {required this.measuringUnitId,
      required this.languageId,
      required this.measuringUnitCode,
      required this.measuringUnitName});

  Map<String, Object> toJson() => {
    WeatherMeasuringUnitsFields.measuringUnitId: measuringUnitId,
    WeatherMeasuringUnitsFields.languageId: languageId,
    WeatherMeasuringUnitsFields.measuringUnitCode: measuringUnitCode,
    WeatherMeasuringUnitsFields.measuringUnitName: measuringUnitName,
      };
}
