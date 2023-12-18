import 'package:au2rides/features/download_screen/domain/entity/acquisition_types/acquisition_types_entity.dart';
import 'package:au2rides/features/download_screen/domain/entity/fuel_consumption_unit_types/fuel_consumption_unit_types_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entity/currency/currency_entity.dart';

part 'fuel_consumption_unit_types_model.g.dart';

@JsonSerializable()
class FuelConsumptionUnitTypesModel extends FuelConsumptionUnitTypesEntity {

  const FuelConsumptionUnitTypesModel({required super.fuelConsumptionUnitTypeId, required super.languageId, required super.fuelConsumptionUnitTypeName});

  factory FuelConsumptionUnitTypesModel.fromJson(final Map<String, dynamic> json) {
    return _$FuelConsumptionUnitTypesModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FuelConsumptionUnitTypesModelToJson(this);

}
