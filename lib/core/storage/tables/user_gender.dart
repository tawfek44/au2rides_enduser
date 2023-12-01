class GenderFields {
  static const String genderId = "gender_id";
  static const String languageId = "language_id";
  static const String genderName = "gender_name";
}
class Gender {
  final int genderId ;
  final int languageId ;
  final String genderName ;


  Gender({required this.genderId, required this.languageId, required this.genderName});

  Map<String, Object> toJson() => {
    GenderFields.genderId: genderId,
    GenderFields.languageId: languageId,
    GenderFields.genderName: genderName,
  };
}
