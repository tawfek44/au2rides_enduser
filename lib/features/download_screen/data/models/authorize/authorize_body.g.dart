// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authorize_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthorizeBody _$AuthorizeBodyFromJson(Map<String, dynamic> json) =>
    AuthorizeBody(
      json['tenant_id'] as String,
      json['response_type'] as String,
      Client.fromJson(json['client'] as Map<String, dynamic>),
      MobileDevice.fromJson(json['mobile_device'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AuthorizeBodyToJson(AuthorizeBody instance) =>
    <String, dynamic>{
      'tenant_id': instance.tenantId,
      'response_type': instance.responseType,
      'client': instance.client,
      'mobile_device': instance.mobileDeviceInfo,
    };

Client _$ClientFromJson(Map<String, dynamic> json) => Client(
      applicationId: json['application_id'] as String,
      applicationSecret: json['application_secret'] as String,
      applicationPlatform: json['application_platform'] as String,
      applicationIdentifierName: json['application_identifier_name'] as String,
      applicationRedirectUrl: json['application_redirect_url'] as String,
      applicationVersion: json['application_version'] as String,
    );

Map<String, dynamic> _$ClientToJson(Client instance) => <String, dynamic>{
      'application_id': instance.applicationId,
      'application_secret': instance.applicationSecret,
      'application_platform': instance.applicationPlatform,
      'application_identifier_name': instance.applicationIdentifierName,
      'application_redirect_url': instance.applicationRedirectUrl,
      'application_version': instance.applicationVersion,
    };

MobileDevice _$MobileDeviceFromJson(Map<String, dynamic> json) => MobileDevice(
      firebaseId: json['firebase_id'] as String,
      deviceInfo: json['device_info'],
    );

Map<String, dynamic> _$MobileDeviceToJson(MobileDevice instance) =>
    <String, dynamic>{
      'firebase_id': instance.firebaseId,
      'device_info': instance.deviceInfo,
    };
