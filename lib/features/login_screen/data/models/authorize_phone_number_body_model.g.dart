// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authorize_phone_number_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthorizeMobileNumberBodyModel _$AuthorizeMobileNumberBodyModelFromJson(
        Map<String, dynamic> json) =>
    AuthorizeMobileNumberBodyModel(
      userPhoneNumber: json['user_phone_number'] as String,
      countryId: json['country_id'] as int,
      languageId: json['language_id'] as int,
      identityProvider: json['identity_provider'] as String,
      behaviour: json['behaviour'] as String,
    );

Map<String, dynamic> _$AuthorizeMobileNumberBodyModelToJson(
        AuthorizeMobileNumberBodyModel instance) =>
    <String, dynamic>{
      'user_phone_number': instance.userPhoneNumber,
      'country_id': instance.countryId,
      'identity_provider': instance.identityProvider,
      'language_id': instance.languageId,
      'behaviour': instance.behaviour,
    };