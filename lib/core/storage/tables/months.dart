class MonthFields {
  static const String monthId = "month_id";
  static const String languageId = "language_id";
  static const String monthName = "month_name";
}

class Month {
  final int monthId;

  final int languageId;

  final String monthName;

  const Month(
      {required this.monthId,
      required this.languageId,
      required this.monthName});

  Map<String, Object> toJson() => {
        MonthFields.monthId: monthId,
        MonthFields.languageId: languageId,
        MonthFields.monthName: monthName,
      };
}
