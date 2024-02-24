// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_my_rides_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyRidesModel _$MyRidesModelFromJson(Map<String, dynamic> json) => MyRidesModel(
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

Map<String, dynamic> _$MyRidesModelToJson(MyRidesModel instance) =>
    <String, dynamic>{
      'registered_ride_id': instance.registeredRideId,
      'ride_name': instance.rideName,
      'ride_image_url': instance.rideImageUrl,
      'ride_qr_codes': instance.rideQrCodes,
      'manufacturing_details': instance.manufacturingDetails,
      'ride_vin_number': instance.rideVinNumber,
      'ride_is_verified': instance.rideIsVerified,
    };
