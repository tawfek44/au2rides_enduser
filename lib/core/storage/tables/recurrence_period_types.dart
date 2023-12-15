class RecurrencePeriodTypesFields {
  static const String recurrencePeriodTypeId = "recurrence_period_type_id";
  static const String languageId = "language_id";
  static const String recurrencePeriodTypeName = "recurrence_period_type_name";
  static const String recurrencePeriodTypeDaysCount =
      "recurrence_period_type_days_count";
}

class RecurrencePeriodTypes {
  final int recurrencePeriodTypeId;
  final int languageId;
  final String recurrencePeriodTypeName;
  final int recurrencePeriodTypeDaysCount;

  RecurrencePeriodTypes({
    required this.recurrencePeriodTypeId,
    required this.languageId,
    required this.recurrencePeriodTypeName,
    required this.recurrencePeriodTypeDaysCount,
  });

  Map<String, Object> toJson() => {
        RecurrencePeriodTypesFields.recurrencePeriodTypeId:
            recurrencePeriodTypeId,
        RecurrencePeriodTypesFields.languageId: languageId,
        RecurrencePeriodTypesFields.recurrencePeriodTypeName: recurrencePeriodTypeName,
        RecurrencePeriodTypesFields.recurrencePeriodTypeDaysCount: recurrencePeriodTypeDaysCount,
      };
}
