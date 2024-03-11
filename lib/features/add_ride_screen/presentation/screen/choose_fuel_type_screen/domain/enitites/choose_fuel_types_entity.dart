import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'choose_fuel_types_entity.g.dart';

@JsonSerializable()
class ChooseFuelTypesEntity extends Equatable {
  @JsonKey(name: "engine_fuel_type_id")
  final int engineFuelTypeId;
  @JsonKey(name: "language_id")
  final int languageId;
  @JsonKey(name: "engine_fuel_type_name")
  final String engineFuelTypeName;

  const ChooseFuelTypesEntity({
    required this.engineFuelTypeId,
    required this.languageId,
    required this.engineFuelTypeName,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        engineFuelTypeId,
        languageId,
        engineFuelTypeName,
      ];
}
