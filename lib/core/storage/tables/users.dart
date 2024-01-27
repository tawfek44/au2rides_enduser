class UsersFields {
  static const String userId = "user_id";
  static const String firstName = "first_name";
  static const String lastName = "last_name";
  static const String emailAddress = "email_address";
  static const String isVerified = "is_verified";
  static const String profileImageUrl = "profile_image_url";
  static const String profileQrCode = "profile_qr_code";
  static const String mobileNumber = "mobile_number";
  static const String countryId = "country_id";
  static const String genderId = "gender_id";
  static const String birthDate = "birth_date";
}

class User {
  final String userId;
  final String firstName;
  final String lastName;
  final String emailAddress;
  final bool isVerified;
  final String profileImageUrl;
  final String profileQrCode;
  final String mobileNumber;
  final int countryId;
  final int genderId;
  final String birthDate;

  User(
      {required this.userId,
      required this.firstName,
      required this.lastName,
      required this.emailAddress,
      required this.isVerified,
      required this.profileImageUrl,
      required this.profileQrCode,
      required this.mobileNumber,
      required this.countryId,
      required this.genderId,
      required this.birthDate});

  Map<String, Object> toJson() => {
    UsersFields.userId: userId,
    UsersFields.firstName: firstName,
    UsersFields.lastName: lastName,
    UsersFields.emailAddress: emailAddress,
    UsersFields.isVerified: isVerified,
    UsersFields.profileImageUrl: profileImageUrl,
    UsersFields.profileQrCode: profileQrCode,
    UsersFields.mobileNumber: mobileNumber,
    UsersFields.countryId: countryId,
    UsersFields.genderId: genderId,
    UsersFields.birthDate: birthDate,
      };
}
