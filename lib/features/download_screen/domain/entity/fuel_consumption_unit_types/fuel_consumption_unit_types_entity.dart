import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fuel_consumption_unit_types_entity.g.dart';

@JsonSerializable()
class FuelConsumptionUnitTypesEntity extends Equatable {
  @JsonKey(name: "fuel_consumption_unit_type_id")
  final int fuelConsumptionUnitTypeId;
  @JsonKey(name: "language_id")
  final int languageId;
  @JsonKey(name: "fuel_consumption_unit_type_name")
  final String fuelConsumptionUnitTypeName;

  const FuelConsumptionUnitTypesEntity(
      {required this.fuelConsumptionUnitTypeId,
      required this.languageId,
      required this.fuelConsumptionUnitTypeName});

  @override
  // TODO: implement props
  List<Object?> get props =>
      [fuelConsumptionUnitTypeId, languageId, fuelConsumptionUnitTypeName];
}
