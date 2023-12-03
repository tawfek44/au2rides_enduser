class RideTypesFields {
  static const String rideTypeId = "ride_type_id";
  static const String languageId = "language_id";
  static const String rideTypeName = "ride_type_name";
  static const String rideTypeLogoUrl = "ride_type_logo_url";
}

class RideTypes {
  final int rideTypeId;
  final int languageId;
  final String rideTypeName;
  final String rideTypeLogoUrl;

  RideTypes(
      {required this.rideTypeId,
      required this.languageId,
      required this.rideTypeName,
      required this.rideTypeLogoUrl});

  Map<String, Object> toJson() => {
    RideTypesFields.rideTypeId: rideTypeId,
    RideTypesFields.languageId: languageId,
    RideTypesFields.rideTypeName: rideTypeName,
    RideTypesFields.rideTypeLogoUrl: rideTypeLogoUrl,
  };
}
