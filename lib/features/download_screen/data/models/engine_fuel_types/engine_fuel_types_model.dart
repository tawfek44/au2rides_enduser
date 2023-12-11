import 'package:au2rides/features/download_screen/domain/entity/engine_fuel_types/engine_fuel_types_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'engine_fuel_types_model.g.dart';

@JsonSerializable()
class EngineFuelTypesModel extends EngineFuelTypesEntity {
  const EngineFuelTypesModel(
      {required super.engineFuelTypeId,
      required super.languageId,
      required super.engineFuelTypeName});

  factory EngineFuelTypesModel.fromJson(final Map<String, dynamic> json) {
    return _$EngineFuelTypesModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$EngineFuelTypesModelToJson(this);
}
