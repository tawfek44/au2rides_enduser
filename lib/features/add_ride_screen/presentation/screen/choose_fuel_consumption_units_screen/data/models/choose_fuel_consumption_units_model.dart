import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_fuel_consumption_units_screen/domain/enitites/choose_fuel_consumption_units_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'choose_fuel_consumption_units_model.g.dart';


@JsonSerializable()
class FuelConsumptionUnitsModel extends FuelConsumptionUnitsEntity {
  factory FuelConsumptionUnitsModel.fromJson(final Map<String, dynamic> json) {
    return _$FuelConsumptionUnitsModelFromJson(json);
  }

  const FuelConsumptionUnitsModel({required super.fuelConsumptionUnitTypeId, required super.languageId, required super.fuelConsumptionUnitTypeName});

  Map<String, dynamic> toJson() => _$FuelConsumptionUnitsModelToJson(this);
}
