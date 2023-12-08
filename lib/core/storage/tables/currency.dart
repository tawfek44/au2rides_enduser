class CurrencyFields {
  static const String currencyId = "currency_id";
  static const String languageId = "language_id";
  static const String currencyName = "currency_name";
  static const String currencyCode = "currency_code";
  static const String currencyImageUrl = "image_url";
}

class Currency {
  final int languageId;
  final int currencyId;
  final String currencyName;
  final String currencyCode;
  final String currencyImageUrl;

  Currency(
      {required this.languageId,
        required this.currencyCode,
        required this.currencyId,
        required this.currencyImageUrl,
        required this.currencyName});

  Map<String, Object> toJson() => {
    CurrencyFields.currencyId: currencyId,
    CurrencyFields.languageId: languageId,
    CurrencyFields.currencyCode: currencyCode,
    CurrencyFields.currencyName: currencyName,
    CurrencyFields.currencyImageUrl:currencyImageUrl
  };
}
