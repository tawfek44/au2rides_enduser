// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_ride_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddRideResponseModel _$AddRideResponseModelFromJson(
        Map<String, dynamic> json) =>
    AddRideResponseModel(
      registeredRideId: json['registered_ride_id'] as String,
      rideName: json['ride_name'] as String,
      rideImageUrl: json['ride_image_url'] as String,
      rideQrCodes:
          RideQrCodes.fromJson(json['ride_qr_codes'] as Map<String, dynamic>),
      rideVinNumber: json['ride_vin_number'] as String,
      rideNotes: json['ride_notes'] as String,
      rideIsVerified: json['ride_is_verified'] as bool,
      manufacturingDetails: ManufacturingDetails.fromJson(
          json['manufacturing_details'] as Map<String, dynamic>),
      tirePressure:
          TirePressure.fromJson(json['tire_Pressure'] as Map<String, dynamic>),
      metrics: Metrics.fromJson(json['metrics'] as Map<String, dynamic>),
      fuelDetails:
          FuelDetails.fromJson(json['fuel_details'] as Map<String, dynamic>),
      regionalDetails: RegionalDetails.fromJson(
          json['regional_details'] as Map<String, dynamic>),
      licenseDetails: LicenseDetails.fromJson(
          json['license_details'] as Map<String, dynamic>),
      insurancePolicy: InsurancePolicy.fromJson(
          json['insurance_Policy'] as Map<String, dynamic>),
      rideBrochures: (json['ride_brochures'] as List<dynamic>)
          .map((e) => RideBrochures.fromJson(e as Map<String, dynamic>))
          .toList(),
      dashboardSigns: (json['dasboard_signs'] as List<dynamic>)
          .map((e) => DashboardSigns.fromJson(e as Map<String, dynamic>))
          .toList(),
      specsDetails: (json['specs_details'] as List<dynamic>)
          .map((e) => SpecsDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AddRideResponseModelToJson(
        AddRideResponseModel instance) =>
    <String, dynamic>{
      'registered_ride_id': instance.registeredRideId,
      'ride_name': instance.rideName,
      'ride_image_url': instance.rideImageUrl,
      'ride_qr_codes': instance.rideQrCodes,
      'ride_vin_number': instance.rideVinNumber,
      'ride_notes': instance.rideNotes,
      'ride_is_verified': instance.rideIsVerified,
      'manufacturing_details': instance.manufacturingDetails,
      'tire_Pressure': instance.tirePressure,
      'metrics': instance.metrics,
      'fuel_details': instance.fuelDetails,
      'regional_details': instance.regionalDetails,
      'license_details': instance.licenseDetails,
      'insurance_Policy': instance.insurancePolicy,
      'ride_brochures': instance.rideBrochures,
      'dasboard_signs': instance.dashboardSigns,
      'specs_details': instance.specsDetails,
    };