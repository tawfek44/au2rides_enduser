import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pressure_units_entity.g.dart';

@JsonSerializable()
class PressureUnitsEntity extends Equatable {
  @JsonKey(name: "pressure_unit_id")
  final int pressureUnitId;
  @JsonKey(name: "language_id")
  final int languageId;
  @JsonKey(name: "pressure_unit_name")
  final String pressureUnitName;
  @JsonKey(name: "pressure_unit_code")
  final String pressureUnitCode;

  const PressureUnitsEntity(
      {required this.pressureUnitId,
      required this.languageId,
      required this.pressureUnitName,
      required this.pressureUnitCode});

  @override
  // TODO: implement props
  List<Object?> get props =>
      [pressureUnitId, languageId, pressureUnitName, pressureUnitCode];
}
