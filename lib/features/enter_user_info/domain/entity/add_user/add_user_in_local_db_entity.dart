import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_user_in_local_db_entity.g.dart';

@JsonSerializable()
class UserEntity extends Equatable {
  @JsonKey(name: "user_id")
  final String userId;
  @JsonKey(name: "first_name")
  final String firstName;
  @JsonKey(name: "last_name")
  final String lastName;
  @JsonKey(name: "mobile_number")
  final String mobileNumber;
  @JsonKey(name: "email_address")
  final String emailAddress;
  @JsonKey(name: "is_verified")
  final int isVerified;
  @JsonKey(name: "profile_image_url")
  final String profileImageUrl;
  @JsonKey(name: "profile_qr_code")
  final String profileQrCode;
  @JsonKey(name: "country_id")
  final int countryId;
  @JsonKey(name: "gender_id")
  final int genderId;
  @JsonKey(name: "birth_date")
  final String birthDate;

  const UserEntity(
      {required this.userId,
      required this.firstName,
      required this.lastName,
      required this.emailAddress,
      required this.isVerified,
      required this.profileImageUrl,
      required this.profileQrCode,
      required this.countryId,
      required this.mobileNumber,
      required this.genderId,
      required this.birthDate});

  @override
  List<Object?> get props => [
        userId,
        countryId,
        firstName,
        lastName,
        emailAddress,
        isVerified,
        profileImageUrl,
        profileQrCode,
        countryId,
        birthDate,
        genderId,
        mobileNumber
      ];
}
