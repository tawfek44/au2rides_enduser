import 'package:au2rides/features/download_screen/domain/entity/acquisition_types/acquisition_types_entity.dart';
import 'package:au2rides/features/download_screen/domain/entity/fuel_octane_number/fuel_octane_number_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entity/currency/currency_entity.dart';

part 'fuel_octane_number_model.g.dart';

@JsonSerializable()
class FuelOctaneNumberModel extends FuelOctaneNumberEntity {
  const FuelOctaneNumberModel(
      {required super.fuelOctaneNumberId,
      required super.languageId,
      required super.fuelOctaneNumber});

  factory FuelOctaneNumberModel.fromJson(final Map<String, dynamic> json) {
    return _$FuelOctaneNumberModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FuelOctaneNumberModelToJson(this);
}
