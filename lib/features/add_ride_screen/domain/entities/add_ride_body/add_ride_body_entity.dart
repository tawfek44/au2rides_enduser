import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_ride_body_entity.g.dart';

@JsonSerializable()
class AddRideBodyEntity extends Equatable {
  @JsonKey(name: "registered_ride_id")
  final String registeredRideId;
  @JsonKey(name: "ride_name")
  final String rideName;
  @JsonKey(name: "ride_image_url")
  final String rideImageUrl;
  @JsonKey(name: "ride_vin_number")
  final String rideVinNumber;
  @JsonKey(name: "ride_type_id")
  final int rideTypeId;
  @JsonKey(name: "manufacturing_year")
  final int manufacturingYear;
  @JsonKey(name: "make_id")
  final String makeId;
  @JsonKey(name: "ride_model_id")
  final String rideModelId;
  @JsonKey(name: "ride_trim_id")
  final String rideTrimId;

  @JsonKey(name: "metric_unit_id")
  final int metricUnitId;

  @JsonKey(name: "odometer")
  final int odometer;

  @JsonKey(name: "fuel_type_id")
  final int fuelTypeId;

  @JsonKey(name: "fuel_unit_id")
  final int fuelUnitId;

  @JsonKey(name: "fuel_consumption_unit_type_id")
  final int fuelConsumptionUnitTypeId;

  @JsonKey(name: "country_id")
  final int countryId;

  @JsonKey(name: "plate_number")
  final String plateNumber;

  @JsonKey(name: "currency_id")
  final int currencyId;

  @JsonKey(name: "notes")
  final String notes;

  const AddRideBodyEntity(
      {required this.metricUnitId,
      required this.registeredRideId,
      required this.rideName,
      required this.rideImageUrl,
      required this.rideVinNumber,
      required this.rideTypeId,
      required this.manufacturingYear,
      required this.makeId,
      required this.rideModelId,
      required this.rideTrimId,
      required this.odometer,
      required this.fuelTypeId,
      required this.fuelUnitId,
      required this.fuelConsumptionUnitTypeId,
      required this.countryId,
      required this.plateNumber,
      required this.currencyId,
      required this.notes});

  @override
  // TODO: implement props
  List<Object?> get props => [
        rideName,
        rideImageUrl,
        rideVinNumber,
        rideTypeId,
        manufacturingYear,
        makeId,
        rideModelId,
        rideTrimId,
        metricUnitId,
        odometer,
        fuelTypeId,
        fuelUnitId,
        fuelConsumptionUnitTypeId,
        countryId,
        plateNumber,
        currencyId,
        notes
      ];
}
