import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fuel_measuring_units_entity.g.dart';

@JsonSerializable()
class FuelMeasuringUnitsEntity extends Equatable {
  @JsonKey(name: "fuel_unit_id")
  final int fuelUnitId;
  @JsonKey(name: "language_id")
  final int languageId;
  @JsonKey(name: "fuel_unit_name")
  final String fuelUnitName;
  @JsonKey(name: "fuel_unit_code")
  final String fuelUnitCode;

  const FuelMeasuringUnitsEntity(
      {required this.fuelUnitId,
      required this.languageId,
      required this.fuelUnitName,
      required this.fuelUnitCode,
      });

  @override
  // TODO: implement props
  List<Object?> get props =>
      [fuelUnitId, languageId, fuelUnitName,fuelUnitCode];
}
