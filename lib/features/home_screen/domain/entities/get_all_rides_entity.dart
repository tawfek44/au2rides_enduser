
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_all_rides_entity.g.dart';

@JsonSerializable()
class MyRidesEntity {
  @JsonKey(name: "registered_ride_id")
  final String? registeredRideId;
  @JsonKey(name: "ride_name")
  final String? rideName;
  @JsonKey(name: "ride_image_url")
  final String? rideImageUrl;
  @JsonKey(name: "ride_qr_codes")
  final RideQrCodes? rideQrCodes;
  @JsonKey(name: "manufacturing_details")
  final ManufacturingDetails? manufacturingDetails;
  @JsonKey(name: "ride_vin_number")
  final String? rideVinNumber;
  @JsonKey(name: "ride_is_verified")
  final bool? rideIsVerified;

  MyRidesEntity(
      {required this.registeredRideId,
      required this.rideName,
      required this.rideImageUrl,
      required this.rideQrCodes,
      required this.manufacturingDetails,
      required this.rideVinNumber,
      required this.rideIsVerified});
}

@JsonSerializable()
class RideQrCodes {
  @JsonKey(name: "ride_qr_code_url")
  final String? rideQrCodeUrl;
  @JsonKey(name: "ride_white_qr_code_url")
  final String? rideWhiteQrCodeUrl;

  RideQrCodes({required this.rideQrCodeUrl,required this.rideWhiteQrCodeUrl});

  factory RideQrCodes.fromJson(
      final Map<String, dynamic> json) {
    return _$RideQrCodesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RideQrCodesToJson(this);
}

@JsonSerializable()
class ManufacturingDetails {
  @JsonKey(name: "ride_type")
  final RideType? rideType;
  @JsonKey(name: "manufacturing_year")
  final int? manufacturingYear;
  @JsonKey(name: "ride_make")
  final RideMake? rideMake;
  @JsonKey(name: "ride_model")
  final RideModel? rideModel;
  @JsonKey(name: "ride_trim")
  final RideTrim? rideTrim;

  ManufacturingDetails(
      {required this.rideType,
      required this.manufacturingYear,
      required this.rideMake,
      required this.rideModel,
      required this.rideTrim});

  factory ManufacturingDetails.fromJson(
      final Map<String, dynamic> json) {
    return _$ManufacturingDetailsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ManufacturingDetailsToJson(this);
}

@JsonSerializable()
class RideType {
  @JsonKey(name: "ride_type_id")
  final int? rideTypeId;
  @JsonKey(name: "ride_type_name")
  final String? rideTypeName;

  RideType({this.rideTypeId, this.rideTypeName});

  factory RideType.fromJson(
      final Map<String, dynamic> json) {
    return _$RideTypeFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RideTypeToJson(this);

}
@JsonSerializable()
class RideMake {
  @JsonKey(name: "make_id")
  final String? makeId;
  @JsonKey(name: "make_name")
  final String? makeName;
  @JsonKey(name: "make_logo_url")
  final String? makeLogoUrl;

  RideMake({required this.makeId,required this.makeName,required this.makeLogoUrl});

  factory RideMake.fromJson(
      final Map<String, dynamic> json) {
    return _$RideMakeFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RideMakeToJson(this);
}

@JsonSerializable()
class RideModel {
  @JsonKey(name: "ride_model_id")
  final String? rideModelId;
  @JsonKey(name: "ride_model_name")
  final String? rideModelName;

  RideModel({this.rideModelId, this.rideModelName});

  factory RideModel.fromJson(
      final Map<String, dynamic> json) {
    return _$RideModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RideModelToJson(this);

}
@JsonSerializable()
class RideTrim {
  @JsonKey(name: "ride_trim_id")
  final String? rideTrimId;
  @JsonKey(name: "ride_trim_name")
  final String? rideTrimName;
  @JsonKey(name: "ride_trim_image_url")
  final String? rideTrimImageUrl;

  RideTrim({this.rideTrimId, this.rideTrimName, this.rideTrimImageUrl});

  factory RideTrim.fromJson(
      final Map<String, dynamic> json) {
    return _$RideTrimFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RideTrimToJson(this);
}
