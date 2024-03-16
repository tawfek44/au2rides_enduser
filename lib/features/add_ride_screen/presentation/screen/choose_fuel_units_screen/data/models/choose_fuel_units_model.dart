import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/enitites/choose_fuel_units_entity.dart';
part 'choose_fuel_units_model.g.dart';


@JsonSerializable()
class ChooseFuelUnitsModel extends ChooseFuelUnitsEntity {
  factory ChooseFuelUnitsModel.fromJson(final Map<String, dynamic> json) {
    return _$ChooseFuelUnitsModelFromJson(json);
  }


  const ChooseFuelUnitsModel({required super.fuelUnitId, required super.languageId, required super.fuelUnitName, required super.fuelUnitCode});

  Map<String, dynamic> toJson() => _$ChooseFuelUnitsModelToJson(this);
}
