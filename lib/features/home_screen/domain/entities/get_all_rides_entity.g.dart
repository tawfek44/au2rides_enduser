// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_rides_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyRidesEntity _$MyRidesEntityFromJson(Map<String, dynamic> json) =>
    MyRidesEntity(
      registeredRideId: json['registered_ride_id'] as String?,
      rideName: json['ride_name'] as String?,
      rideImageUrl: json['ride_image_url'] as String?,
      rideQrCodes: json['ride_qr_codes'] == null
          ? null
          : RideQrCodes.fromJson(json['ride_qr_codes'] as Map<String, dynamic>),
      manufacturingDetails: json['manufacturing_details'] == null
          ? null
          : ManufacturingDetails.fromJson(
              json['manufacturing_details'] as Map<String, dynamic>),
      rideVinNumber: json['ride_vin_number'] as String?,
      rideIsVerified: json['ride_is_verified'] as bool?,
    );

Map<String, dynamic> _$MyRidesEntityToJson(MyRidesEntity instance) =>
    <String, dynamic>{
      'registered_ride_id': instance.registeredRideId,
      'ride_name': instance.rideName,
      'ride_image_url': instance.rideImageUrl,
      'ride_qr_codes': instance.rideQrCodes,
      'manufacturing_details': instance.manufacturingDetails,
      'ride_vin_number': instance.rideVinNumber,
      'ride_is_verified': instance.rideIsVerified,
    };

RideQrCodes _$RideQrCodesFromJson(Map<String, dynamic> json) => RideQrCodes(
      rideQrCodeUrl: json['ride_qr_code_url'] as String?,
      rideWhiteQrCodeUrl: json['ride_white_qr_code_url'] as String?,
    );

Map<String, dynamic> _$RideQrCodesToJson(RideQrCodes instance) =>
    <String, dynamic>{
      'ride_qr_code_url': instance.rideQrCodeUrl,
      'ride_white_qr_code_url': instance.rideWhiteQrCodeUrl,
    };

ManufacturingDetails _$ManufacturingDetailsFromJson(
        Map<String, dynamic> json) =>
    ManufacturingDetails(
      rideType: json['ride_type'] == null
          ? null
          : RideType.fromJson(json['ride_type'] as Map<String, dynamic>),
      manufacturingYear: json['manufacturing_year'] as int?,
      rideMake: json['ride_make'] == null
          ? null
          : RideMake.fromJson(json['ride_make'] as Map<String, dynamic>),
      rideModel: json['ride_model'] == null
          ? null
          : RideModel.fromJson(json['ride_model'] as Map<String, dynamic>),
      rideTrim: json['ride_trim'] == null
          ? null
          : RideTrim.fromJson(json['ride_trim'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ManufacturingDetailsToJson(
        ManufacturingDetails instance) =>
    <String, dynamic>{
      'ride_type': instance.rideType,
      'manufacturing_year': instance.manufacturingYear,
      'ride_make': instance.rideMake,
      'ride_model': instance.rideModel,
      'ride_trim': instance.rideTrim,
    };

RideType _$RideTypeFromJson(Map<String, dynamic> json) => RideType(
      rideTypeId: json['ride_type_id'] as int?,
      rideTypeName: json['ride_type_name'] as String?,
    );

Map<String, dynamic> _$RideTypeToJson(RideType instance) => <String, dynamic>{
      'ride_type_id': instance.rideTypeId,
      'ride_type_name': instance.rideTypeName,
    };

RideMake _$RideMakeFromJson(Map<String, dynamic> json) => RideMake(
      makeId: json['make_id'] as String?,
      makeName: json['make_name'] as String?,
      makeLogoUrl: json['make_logo_url'] as String?,
    );

Map<String, dynamic> _$RideMakeToJson(RideMake instance) => <String, dynamic>{
      'make_id': instance.makeId,
      'make_name': instance.makeName,
      'make_logo_url': instance.makeLogoUrl,
    };

RideModel _$RideModelFromJson(Map<String, dynamic> json) => RideModel(
      rideModelId: json['ride_model_id'] as String?,
      rideModelName: json['ride_model_name'] as String?,
    );

Map<String, dynamic> _$RideModelToJson(RideModel instance) => <String, dynamic>{
      'ride_model_id': instance.rideModelId,
      'ride_model_name': instance.rideModelName,
    };

RideTrim _$RideTrimFromJson(Map<String, dynamic> json) => RideTrim(
      rideTrimId: json['ride_trim_id'] as String?,
      rideTrimName: json['ride_trim_name'] as String?,
      rideTrimImageUrl: json['ride_trim_image_url'] as String?,
    );

Map<String, dynamic> _$RideTrimToJson(RideTrim instance) => <String, dynamic>{
      'ride_trim_id': instance.rideTrimId,
      'ride_trim_name': instance.rideTrimName,
      'ride_trim_image_url': instance.rideTrimImageUrl,
    };