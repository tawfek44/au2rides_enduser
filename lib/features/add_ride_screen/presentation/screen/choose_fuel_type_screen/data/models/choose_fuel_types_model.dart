import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/enitites/choose_fuel_types_entity.dart';
part 'choose_fuel_types_model.g.dart';


@JsonSerializable()
class ChooseFuelTypesModel extends ChooseFuelTypesEntity {
  factory ChooseFuelTypesModel.fromJson(final Map<String, dynamic> json) {
    return _$ChooseFuelTypesModelFromJson(json);
  }

  const ChooseFuelTypesModel({required super.engineFuelTypeId, required super.languageId, required super.engineFuelTypeName});

  Map<String, dynamic> toJson() => _$ChooseFuelTypesModelToJson(this);
}
