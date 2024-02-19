// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_ride_body_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddRideBodyEntity _$AddRideBodyEntityFromJson(Map<String, dynamic> json) =>
    AddRideBodyEntity(
      metricUnitId: json['metric_unit_id'] as int,
      registeredRideId: json['registered_ride_id'] as String,
      rideName: json['ride_name'] as String,
      rideImageUrl: json['ride_image_url'] as String,
      rideVinNumber: json['ride_vin_number'] as String,
      rideTypeId: json['ride_type_id'] as int,
      manufacturingYear: json['manufacturing_year'] as int,
      makeId: json['make_id'] as String,
      rideModelId: json['ride_model_id'] as String,
      rideTrimId: json['ride_trim_id'] as String,
      odometer: json['odometer'] as int,
      fuelTypeId: json['fuel_type_id'] as int,
      fuelUnitId: json['fuel_unit_id'] as int,
      fuelConsumptionUnitTypeId: json['fuel_consumption_unit_type_id'] as int,
      countryId: json['country_id'] as int,
      plateNumber: json['plate_number'] as String,
      currencyId: json['currency_id'] as int,
      notes: json['notes'] as String,
    );

Map<String, dynamic> _$AddRideBodyEntityToJson(AddRideBodyEntity instance) =>
    <String, dynamic>{
      'registered_ride_id': instance.registeredRideId,
      'ride_name': instance.rideName,
      'ride_image_url': instance.rideImageUrl,
      'ride_vin_number': instance.rideVinNumber,
      'ride_type_id': instance.rideTypeId,
      'manufacturing_year': instance.manufacturingYear,
      'make_id': instance.makeId,
      'ride_model_id': instance.rideModelId,
      'ride_trim_id': instance.rideTrimId,
      'metric_unit_id': instance.metricUnitId,
      'odometer': instance.odometer,
      'fuel_type_id': instance.fuelTypeId,
      'fuel_unit_id': instance.fuelUnitId,
      'fuel_consumption_unit_type_id': instance.fuelConsumptionUnitTypeId,
      'country_id': instance.countryId,
      'plate_number': instance.plateNumber,
      'currency_id': instance.currencyId,
      'notes': instance.notes,
    };
