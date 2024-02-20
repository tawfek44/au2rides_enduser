import 'package:au2rides/features/add_ride_screen/domain/entities/add_ride_body/add_ride_body_entity.dart';
import 'package:au2rides/features/add_ride_screen/domain/entities/add_ride_response/add_ride_response_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_ride_response_model.g.dart';

@JsonSerializable()
class AddRideResponseModel extends AddRideResponseEntity {

  AddRideResponseModel({required super.registeredRideId, required super.rideName, required super.rideImageUrl, required super.rideQrCodes, required super.rideVinNumber, required super.rideNotes, required super.rideIsVerified, required super.manufacturingDetails, required super.tirePressure, required super.metrics, required super.fuelDetails, required super.regionalDetails, required super.licenseDetails, required super.insurancePolicy, required super.rideBrochures, required super.dashboardSigns, required super.specsDetails});
  factory AddRideResponseModel.fromJson(final Map<String, dynamic> json) {
    return _$AddRideResponseModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$AddRideResponseModelToJson(this);

}



