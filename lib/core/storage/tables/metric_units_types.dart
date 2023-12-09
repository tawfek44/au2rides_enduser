class MetricUnitsFields {
  static const String metricUnitId = "metric_unit_id";
  static const String languageId = "language_id";
  static const String metricUnitName = "metric_unit_name";
  static const String metricUnitCode = "metric_unit_code";
}

class MetricUnits {
  final int metricUnitId;
  final int languageId;
  final String metricUnitName;
  final String metricUnitCode;

  MetricUnits(
      {required this.metricUnitId,
      required this.languageId,
      required this.metricUnitName,
      required this.metricUnitCode});

  Map<String, Object> toJson() => {
    MetricUnitsFields.metricUnitId: metricUnitId,
    MetricUnitsFields.languageId: languageId,
    MetricUnitsFields.metricUnitName: metricUnitName,
    MetricUnitsFields.metricUnitCode: metricUnitCode,
      };
}
