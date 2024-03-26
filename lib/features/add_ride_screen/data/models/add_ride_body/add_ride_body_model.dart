import 'package:au2rides/features/add_ride_screen/domain/entities/add_ride_body/add_ride_body_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_ride_body_model.g.dart';

@JsonSerializable()
class AddRideBodyModel extends AddRideBodyEntity {
  factory AddRideBodyModel.fromJson(final Map<String, dynamic> json) {
    return _$AddRideBodyModelFromJson(json);
  }
  const AddRideBodyModel(
      {
        required super.registeredRideId,
      required super.rideName,
      required super.metricUnitId,
      required super.rideImageUrl,
      required super.rideVinNumber,
      required super.rideTypeId,
      required super.manufacturingYear,
      required super.makeId,
      required super.rideModelId,
      required super.rideTrimId,
      required super.odometer,
      required super.fuelTypeId,
      required super.fuelUnitId,
      required super.fuelConsumptionUnitTypeId,
      required super.countryId,
      required super.plateNumber,
      required super.currencyId,
      required super.notes});

  Map<String, dynamic> toJson() => _$AddRideBodyModelToJson(this);
}
