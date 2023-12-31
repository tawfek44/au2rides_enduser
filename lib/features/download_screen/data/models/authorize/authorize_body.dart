import 'package:freezed_annotation/freezed_annotation.dart';
part 'authorize_body.g.dart';
@JsonSerializable()
class AuthorizeBody {
  @JsonKey(name: "tenant_id")
  String tenantId;
  @JsonKey(name: "response_type")
  String responseType;
  @JsonKey(name: "client")
  Client client;
  @JsonKey(name: "mobile_device")
  MobileDevice mobileDeviceInfo;
  AuthorizeBody(this.tenantId, this.responseType,
      this.client, this.mobileDeviceInfo);
  factory AuthorizeBody.fromJson(final Map<String, dynamic> json) {
    return _$AuthorizeBodyFromJson(json);
  }
  Map<String, dynamic> toJson() => _$AuthorizeBodyToJson(this);
}
@JsonSerializable()
class Client {
  @JsonKey(name: "application_id")
  String applicationId;
  @JsonKey(name: "application_secret")
  String applicationSecret;
  @JsonKey(name: "application_platform")
  String applicationPlatform;
  @JsonKey(name: "application_identifier_name")
  String applicationIdentifierName;
  @JsonKey(name: "application_redirect_url")
  String applicationRedirectUrl;
  @JsonKey(name: "application_version")
  String applicationVersion;

  Client(
      {required this.applicationId,
      required this.applicationSecret,
      required this.applicationPlatform,
      required this.applicationIdentifierName,
      required this.applicationRedirectUrl,
      required this.applicationVersion});
  factory Client.fromJson(final Map<String, dynamic> json) {
    return _$ClientFromJson(json);
  }
  Map<String, dynamic> toJson() => _$ClientToJson(this);
}
@JsonSerializable()
class MobileDevice {
  @JsonKey(name: "firebase_id")
  String firebaseId;
  @JsonKey(name: "device_info")
  dynamic deviceInfo;
  factory MobileDevice.fromJson(final Map<String, dynamic> json) {
    return _$MobileDeviceFromJson(json);
  }
  Map<String, dynamic> toJson() => _$MobileDeviceToJson(this);
  MobileDevice(
      {required this.firebaseId,
        required this.deviceInfo,});
}
