const String languageTableName = 'language';

class LanguageFields {
  static const String languageId = "_language_id";
  static const String languageCode = "language_code";
  static const String languageName = "language_name";
  static const String directionality = "directionality";
}

class Language {
  final int languageId;
  final String languageCode;
  final String languageName;
  final String directionality;

  Language(
      {required this.languageId,
      required this.languageCode,
      required this.languageName,
      required this.directionality});

  Map<String,Object>toJson()=>{
    LanguageFields.languageId:languageId,
    LanguageFields.languageName:languageName,
    LanguageFields.languageCode:languageCode,
    LanguageFields.directionality:directionality,

  };
}
