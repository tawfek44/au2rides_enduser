// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_user_body_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserBodyEntity _$UserBodyEntityFromJson(Map<String, dynamic> json) =>
    UserBodyEntity(
      registeredUserId: json['registered_user_id'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      emailAddress: json['email_address'] as String,
      profileImageUrl: json['profile_image_url'] as String,
      genderId: json['gender_id'] as int,
      birthDate: json['birth_date'] as String,
    );

Map<String, dynamic> _$UserBodyEntityToJson(UserBodyEntity instance) =>
    <String, dynamic>{
      'registered_user_id': instance.registeredUserId,
      'profile_image_url': instance.profileImageUrl,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email_address': instance.emailAddress,
      'gender_id': instance.genderId,
      'birth_date': instance.birthDate,
    };