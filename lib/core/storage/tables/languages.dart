class LanguageFields {
  static const String languageId = "language_id";
  static const String languageCode = "language_code";
  static const String languageName = "language_name";
  static const String directionality = "directionality";
  static const String isDownloaded = "is_downloaded";
}

class Language {
  final int languageId;
  final String languageCode;
  final String languageName;
  final String directionality;
  final bool isDownloaded;

  Language(
      {required this.languageId,
      required this.languageCode,
      required this.languageName,
      required this.directionality,
      required this.isDownloaded});

  Map<String, Object> toJson() => {
        LanguageFields.languageId: languageId,
        LanguageFields.languageName: languageName,
        LanguageFields.languageCode: languageCode,
        LanguageFields.directionality: directionality,
        LanguageFields.isDownloaded:isDownloaded
      };
}
