const String countryTableName = 'countries';

class CountryFields {
  static const String countryId = "country_id";
  static const String countryName = "count_name";
  static const String countryCode = "country_key_code";
  static const String callingCode = "international_calling_code";
  static const String countryFlagImage = "flag_image_url";
}
class Country {
  final int countryId;
  final String countryName;
  final String countryKeyCode;
  final String countryCallingCode;
  final String countryFlagImage;


  Country({required this.countryId,required this.countryName,required this.countryKeyCode,
    required this.countryCallingCode, required this.countryFlagImage});

  Map<String,Object>toJson()=>{
    CountryFields.callingCode:countryCallingCode,
    CountryFields.countryFlagImage:countryFlagImage,
    CountryFields.countryCode:countryKeyCode,
    CountryFields.countryName:countryName,
    CountryFields.countryId:countryId,

  };
}
