// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      userId: json['user_id'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      emailAddress: json['email_address'] as String?,
      isVerified: json['is_verified'] as int?,
      profileImageUrl: json['profile_image_url'] as String?,
      profileQrCode: json['profile_qr_code'] as String?,
      countryId: json['country_id'] as int?,
      genderId: json['gender_id'] as int?,
      birthDate: json['birth_date'] as String?,
      mobileNumber: json['mobile_number'] as String?,
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'user_id': instance.userId,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'mobile_number': instance.mobileNumber,
      'email_address': instance.emailAddress,
      'is_verified': instance.isVerified,
      'profile_image_url': instance.profileImageUrl,
      'profile_qr_code': instance.profileQrCode,
      'country_id': instance.countryId,
      'gender_id': instance.genderId,
      'birth_date': instance.birthDate,
    };
