import 'package:au2rides/features/download_screen/domain/entity/acquisition_types/acquisition_types_entity.dart';
import 'package:au2rides/features/download_screen/domain/entity/fuel_brands/fuel_brands_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fuel_brands_model.g.dart';

@JsonSerializable()
class FuelBrandsModel extends FuelBrandsEntity {
  const FuelBrandsModel(
      {required super.fuelBrandId,
      required super.languageId,
      required super.fuelBrandName,
      required super.brandImageUrl,
      required super.auFuelBrandId});

  factory FuelBrandsModel.fromJson(final Map<String, dynamic> json) {
    return _$FuelBrandsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FuelBrandsModelToJson(this);
}
