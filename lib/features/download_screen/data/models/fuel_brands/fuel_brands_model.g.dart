// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fuel_brands_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FuelBrandsModel _$FuelBrandsModelFromJson(Map<String, dynamic> json) =>
    FuelBrandsModel(
      fuelBrandId: json['fuel_brand_id'] as int,
      languageId: json['language_id'] as int,
      fuelBrandName: json['fuel_brand_name'] as String,
      brandImageUrl: json['brand_image_url'] as String,
      auFuelBrandId: json['au_fuel_brand_id'] as int,
    );

Map<String, dynamic> _$FuelBrandsModelToJson(FuelBrandsModel instance) =>
    <String, dynamic>{
      'fuel_brand_id': instance.fuelBrandId,
      'language_id': instance.languageId,
      'fuel_brand_name': instance.fuelBrandName,
      'brand_image_url': instance.brandImageUrl,
      'au_fuel_brand_id': instance.auFuelBrandId,
    };
