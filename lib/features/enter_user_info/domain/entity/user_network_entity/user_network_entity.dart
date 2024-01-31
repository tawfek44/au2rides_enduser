import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_network_entity.g.dart';

@JsonSerializable()
class UserNetworkEntity extends Equatable {
  @JsonKey(name: "registered_user_id")
  final String? userId;
  @JsonKey(name: "first_name")
  final String? firstName;
  @JsonKey(name: "last_name")
  final String? lastName;
  @JsonKey(name: "email")
  final Email? email;
  @JsonKey(name: "profile_image_url")
  final String? profileImageUrl;
  @JsonKey(name: "profile_qr_code")
  final String? profileQrCode;
  @JsonKey(name: "country")
  final Country? country;
  @JsonKey(name: "gender")
  final Gender? gender;
  @JsonKey(name: "birth_date")
  final String? birthDate;

  const UserNetworkEntity(
      {required this.userId,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.profileImageUrl,
      required this.profileQrCode,
      required this.country,
      required this.gender,
      required this.birthDate});
  factory UserNetworkEntity.fromJson(final Map<String, dynamic> json) {
    return _$UserNetworkEntityFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserNetworkEntityToJson(this);
  @override
  List<Object?> get props => [
        userId,
        country,
        firstName,
        lastName,
        profileImageUrl,
        profileQrCode,
        birthDate,
        gender
      ];
}

@JsonSerializable()
class Email extends Equatable {
  @JsonKey(name: "email_address")
  final String emailAddress;
  @JsonKey(name: "is_verified")
  final bool isVerified;

  const Email({
    required this.emailAddress,
    required this.isVerified,
  });
  factory Email.fromJson(final Map<String, dynamic> json) {
    return _$EmailFromJson(json);
  }

  Map<String, dynamic> toJson() => _$EmailToJson(this);
  @override
  List<Object?> get props => [
        emailAddress,
        isVerified,
      ];
}

@JsonSerializable()
class Country extends Equatable {
  @JsonKey(name: "country_id")
  final int countryId;
  @JsonKey(name: "country_name")
  final String countryName;

  const Country({
    required this.countryId,
    required this.countryName,
  });
  factory Country.fromJson(final Map<String, dynamic> json) {
    return _$CountryFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CountryToJson(this);
  @override
  List<Object?> get props => [
        countryId,
        countryName,
      ];
}

@JsonSerializable()
class Gender extends Equatable {
  @JsonKey(name: "gender_id")
  final int genderId;
  @JsonKey(name: "gender_name")
  final String genderName;

  const Gender({
    required this.genderId,
    required this.genderName,
  });
  factory Gender.fromJson(final Map<String, dynamic> json) {
    return _$GenderFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GenderToJson(this);
  @override
  List<Object?> get props => [
    genderId,
    genderName,
  ];
}
