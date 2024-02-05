// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_network_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserNetworkModel _$UserNetworkModelFromJson(Map<String, dynamic> json) =>
    UserNetworkModel(
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
      birthDate: json['birth_date'] as String?,
      mobileNumber: json['mobile_number'] as String?,
    );

Map<String, dynamic> _$UserNetworkModelToJson(UserNetworkModel instance) =>
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
