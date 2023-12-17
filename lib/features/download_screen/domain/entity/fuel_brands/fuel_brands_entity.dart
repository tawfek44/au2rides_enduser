import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fuel_brands_entity.g.dart';

@JsonSerializable()
class FuelBrandsEntity extends Equatable {
  @JsonKey(name: "fuel_brand_id")
  final int fuelBrandId;
  @JsonKey(name: "language_id")
  final int languageId;
  @JsonKey(name: "fuel_brand_name")
  final String fuelBrandName;
  @JsonKey(name: "brand_image_url")
  final String brandImageUrl;
  @JsonKey(name: "au_fuel_brand_id")
  final int auFuelBrandId;

  const FuelBrandsEntity({
    required this.fuelBrandId,
    required this.languageId,
    required this.fuelBrandName,
    required this.brandImageUrl,
    required this.auFuelBrandId,
  });

  @override
  // TODO: implement props
  List<Object?> get props =>
      [fuelBrandId, languageId, fuelBrandName, brandImageUrl, auFuelBrandId];
}
