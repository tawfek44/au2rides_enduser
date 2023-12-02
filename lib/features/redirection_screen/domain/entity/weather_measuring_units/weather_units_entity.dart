import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_units_entity.g.dart';

@JsonSerializable()
class WeatherUnitsEntity extends Equatable {
  @JsonKey(name: "measuring_unit_id")
  final int measuringUnitId;
  @JsonKey(name: "language_id")
  final int languageId;
  @JsonKey(name: "measuring_unit_code")
  final String measuringUnitCode;
  @JsonKey(name: "measuring_unit_name")
  final String measuringUnitName;

  const WeatherUnitsEntity(
      {required this.measuringUnitId,
      required this.languageId,
      required this.measuringUnitCode,
      required this.measuringUnitName});

  @override
  // TODO: implement props
  List<Object?> get props =>
      [measuringUnitId, languageId, measuringUnitCode, measuringUnitName];
}
