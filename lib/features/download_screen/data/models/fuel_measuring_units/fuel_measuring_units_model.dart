import 'package:au2rides/features/download_screen/domain/entity/acquisition_types/acquisition_types_entity.dart';
import 'package:au2rides/features/download_screen/domain/entity/fuel_measuring_units/fuel_measuring_units_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entity/currency/currency_entity.dart';

part 'fuel_measuring_units_model.g.dart';

@JsonSerializable()
class FuelMeasuringUnitsModel extends FuelMeasuringUnitsEntity {

  const FuelMeasuringUnitsModel({required super.fuelUnitId, required super.languageId, required super.fuelUnitName, required super.fuelUnitCode});
  factory FuelMeasuringUnitsModel.fromJson(final Map<String, dynamic> json) {
    return _$FuelMeasuringUnitsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FuelMeasuringUnitsModelToJson(this);

}
