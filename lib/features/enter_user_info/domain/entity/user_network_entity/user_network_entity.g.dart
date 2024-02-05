// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_network_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserNetworkEntity _$UserNetworkEntityFromJson(Map<String, dynamic> json) =>
    UserNetworkEntity(
      userId: json['registered_user_id'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      email: json['email'] == null
          ? null
          : Email.fromJson(json['email'] as Map<String, dynamic>),
      profileImageUrl: json['profile_image_url'] as String?,
      profileQrCode: json['profile_qr_code'] as String?,
      country: json['country'] == null
          ? null
          : Country.fromJson(json['country'] as Map<String, dynamic>),
      gender: json['gender'] == null
          ? null
          : Gender.fromJson(json['gender'] as Map<String, dynamic>),
      mobileNumber: json['mobile_number'] as String?,
      birthDate: json['birth_date'] as String?,
    );

Map<String, dynamic> _$UserNetworkEntityToJson(UserNetworkEntity instance) =>
    <String, dynamic>{
      'registered_user_id': instance.userId,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'mobile_number': instance.mobileNumber,
      'email': instance.email,
      'profile_image_url': instance.profileImageUrl,
      'profile_qr_code': instance.profileQrCode,
      'country': instance.country,
      'gender': instance.gender,
      'birth_date': instance.birthDate,
    };

Email _$EmailFromJson(Map<String, dynamic> json) => Email(
      emailAddress: json['email_address'] as String,
      isVerified: json['is_verified'] as bool,
    );

Map<String, dynamic> _$EmailToJson(Email instance) => <String, dynamic>{
      'email_address': instance.emailAddress,
      'is_verified': instance.isVerified,
    };

Country _$CountryFromJson(Map<String, dynamic> json) => Country(
      countryId: json['country_id'] as int,
      countryName: json['country_name'] as String,
    );

Map<String, dynamic> _$CountryToJson(Country instance) => <String, dynamic>{
      'country_id': instance.countryId,
      'country_name': instance.countryName,
    };

Gender _$GenderFromJson(Map<String, dynamic> json) => Gender(
      genderId: json['gender_id'] as int,
      genderName: json['gender_name'] as String,
    );

Map<String, dynamic> _$GenderToJson(Gender instance) => <String, dynamic>{
      'gender_id': instance.genderId,
      'gender_name': instance.genderName,
    };
