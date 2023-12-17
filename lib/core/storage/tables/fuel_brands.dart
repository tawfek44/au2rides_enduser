class FuelBrandsFields {
  static const String fuelBrandId = "fuel_brand_id";
  static const String languageId = "language_id";
  static const String fuelBrandName = "fuel_brand_name";
  static const String brandImageUrl = "brand_image_url";
  static const String auFuelBrandId = "au_fuel_brand_id";
}

class FuelBrands {
  final int fuelBrandId;
  final int languageId;
  final String fuelBrandName;
  final String brandImageUrl;
  final String auFuelBrandId;

  FuelBrands({
    required this.fuelBrandId,
    required this.languageId,
    required this.fuelBrandName,
    required this.brandImageUrl,
    required this.auFuelBrandId,
  });

  Map<String, Object> toJson() => {
        FuelBrandsFields.fuelBrandId: fuelBrandId,
        FuelBrandsFields.languageId: languageId,
        FuelBrandsFields.fuelBrandName: fuelBrandName,
        FuelBrandsFields.brandImageUrl: brandImageUrl,
        FuelBrandsFields.auFuelBrandId: auFuelBrandId,
      };
}
