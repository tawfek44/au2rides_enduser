// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authorize_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthorizeModel _$AuthorizeModelFromJson(Map<String, dynamic> json) =>
    AuthorizeModel(
      RefreshToken.fromJson(json['refresh_token'] as Map<String, dynamic>),
      AccessToken.fromJson(json['access_token'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AuthorizeModelToJson(AuthorizeModel instance) =>
    <String, dynamic>{
      'refresh_token': instance.refreshToken,
      'access_token': instance.accessToken,
    };
