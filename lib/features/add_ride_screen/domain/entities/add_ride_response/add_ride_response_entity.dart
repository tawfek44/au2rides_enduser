import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_ride_response_entity.g.dart';
@JsonSerializable()
class AddRideResponseEntity {
  @JsonKey(name: "registered_ride_id")
  final String registeredRideId;

  @JsonKey(name: "ride_name")
  final String rideName;

  @JsonKey(name: "ride_image_url")
  final String rideImageUrl;

  @JsonKey(name: "ride_qr_codes")
  final RideQrCodes rideQrCodes;

  @JsonKey(name: "ride_vin_number")
  final String rideVinNumber;

  @JsonKey(name: "ride_notes")
  final String rideNotes;

  @JsonKey(name: "ride_is_verified")
  final bool rideIsVerified;

  @JsonKey(name: "manufacturing_details")
  final ManufacturingDetails manufacturingDetails;

  @JsonKey(name: "tire_Pressure")
  final TirePressure tirePressure;

  @JsonKey(name: "metrics")
  final Metrics metrics;

  @JsonKey(name: "fuel_details")
  final FuelDetails fuelDetails;

  @JsonKey(name: "regional_details")
  final RegionalDetails regionalDetails;

  @JsonKey(name: "license_details")
  final LicenseDetails licenseDetails;

  @JsonKey(name: "insurance_Policy")
  final InsurancePolicy insurancePolicy;

  @JsonKey(name: "ride_brochures")
  final List<RideBrochures> rideBrochures;

  @JsonKey(name: "dasboard_signs")
  final List<DashboardSigns> dashboardSigns;

  @JsonKey(name: "specs_details")
  final List<SpecsDetails> specsDetails;

  AddRideResponseEntity(
      {required this.registeredRideId,
      required this.rideName,
      required this.rideImageUrl,
      required this.rideQrCodes,
      required this.rideVinNumber,
      required this.rideNotes,
      required this.rideIsVerified,
      required this.manufacturingDetails,
      required this.tirePressure,
      required this.metrics,
      required this.fuelDetails,
      required this.regionalDetails,
      required this.licenseDetails,
      required this.insurancePolicy,
      required this.rideBrochures,
      required this.dashboardSigns,
      required this.specsDetails});
}

@JsonSerializable()
class RideQrCodes {
  @JsonKey(name: "ride_qr_code_url")
  final String rideQrCodeUrl;
  @JsonKey(name: "ride_white_qr_code_url")
  final String rideWhiteQrCodeUrl;

  RideQrCodes({required this.rideQrCodeUrl, required this.rideWhiteQrCodeUrl});
  List<Object?> get props => [
    rideQrCodeUrl,
    rideWhiteQrCodeUrl,
  ];
  factory RideQrCodes.fromJson(final Map<String, dynamic> json) {
    return _$RideQrCodesFromJson(json);
  }
  Map<String, dynamic> toJson() => _$RideQrCodesToJson(this);
}

@JsonSerializable()
class ManufacturingDetails {
  @JsonKey(name: "ride_type")
  final RideType rideType;
  @JsonKey(name: "manufacturing_year")
  final int manufacturingYear;
  @JsonKey(name: "ride_make")
  final RideMake rideMake;
  @JsonKey(name: "ride_model")
  final RideModel rideModel;
  @JsonKey(name: "ride_trim")
  final RideTrim rideTrim;

  ManufacturingDetails(
      {required this.rideType,
      required this.manufacturingYear,
      required this.rideMake,
      required this.rideModel,
      required this.rideTrim});
  factory ManufacturingDetails.fromJson(final Map<String, dynamic> json) {
    return _$ManufacturingDetailsFromJson(json);
  }
  Map<String, dynamic> toJson() => _$ManufacturingDetailsToJson(this);
}

@JsonSerializable()
class RideType {
  @JsonKey(name: "ride_type_id")
  final int rideTypeId;
  @JsonKey(name: "ride_type_name")
  final String rideTypeName;

  RideType({required this.rideTypeId, required this.rideTypeName});
  factory RideType.fromJson(final Map<String, dynamic> json) {
    return _$RideTypeFromJson(json);
  }
  Map<String, dynamic> toJson() => _$RideTypeToJson(this);
}

@JsonSerializable()
class RideMake {
  @JsonKey(name: "make_id")
  final String makeId;
  @JsonKey(name: "make_name")
  final String makeName;

  RideMake({required this.makeId, required this.makeName});
  factory RideMake.fromJson(final Map<String, dynamic> json) {
    return _$RideMakeFromJson(json);
  }
  Map<String, dynamic> toJson() => _$RideMakeToJson(this);
}

@JsonSerializable()
class RideModel {
  @JsonKey(name: "ride_model_id")
  final String rideModelId;
  @JsonKey(name: "ride_model_name")
  final String rideModelName;

  RideModel({required this.rideModelId, required this.rideModelName});

  factory RideModel.fromJson(final Map<String, dynamic> json) {
    return _$RideModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$RideModelToJson(this);
}

@JsonSerializable()
class RideTrim {
  @JsonKey(name: "ride_trim_id")
  final String rideTrimId;
  @JsonKey(name: "ride_trim_name")
  final String rideTrimName;

  RideTrim({required this.rideTrimId, required this.rideTrimName});

  factory RideTrim.fromJson(final Map<String, dynamic> json) {
    return _$RideTrimFromJson(json);
  }
  Map<String, dynamic> toJson() => _$RideTrimToJson(this);
}

@JsonSerializable()
class TirePressure {
  @JsonKey(name: "tire_pressure_unit")
  final TirePressureUnit tirePressureUnit;
  @JsonKey(name: "front_tires")
  final FrontTires frontTires;
  @JsonKey(name: "rear_tires")
  final FrontTires rearTires;

  TirePressure(
      {required this.tirePressureUnit,
      required this.frontTires,
      required this.rearTires});

  factory TirePressure.fromJson(final Map<String, dynamic> json) {
    return _$TirePressureFromJson(json);
  }
  Map<String, dynamic> toJson() => _$TirePressureToJson(this);
}

@JsonSerializable()
class TirePressureUnit {
  @JsonKey(name: "pressure_unit_id")
  final int pressureUnitId;
  @JsonKey(name: "pressure_unit_name")
  final String pressureUnitName;
  @JsonKey(name: "pressure_unit_code")
  final String pressureUnitCode;

  TirePressureUnit(
      {required this.pressureUnitId,
      required this.pressureUnitName,
      required this.pressureUnitCode});

  factory TirePressureUnit.fromJson(final Map<String, dynamic> json) {
    return _$TirePressureUnitFromJson(json);
  }
  Map<String, dynamic> toJson() => _$TirePressureUnitToJson(this);
}

@JsonSerializable()
class FrontTires {
  @JsonKey(name: "tire_pressure")
  final int tirePressure;
  @JsonKey(name: "tire_Size")
  final TireSize tireSize;
  FrontTires({required this.tirePressure,required this.tireSize});

  factory FrontTires.fromJson(final Map<String, dynamic> json) {
    return _$FrontTiresFromJson(json);
  }
  Map<String, dynamic> toJson() => _$FrontTiresToJson(this);
}

@JsonSerializable()
class TireSize {
  @JsonKey(name: "tire_width")
  final int tireWidth;
  @JsonKey(name: "aspect_ratio")
  final int aspectRatio;
  @JsonKey(name: "tyre_construction_type")
  final TyreConstructionType tyreConstructionType;
  @JsonKey(name: "rim_size")
  final int rimSize;

  TireSize(
      {required this.tireWidth,
      required this.aspectRatio,
      required this.tyreConstructionType,
      required this.rimSize});

  factory TireSize.fromJson(final Map<String, dynamic> json) {
    return _$TireSizeFromJson(json);
  }
  Map<String, dynamic> toJson() => _$TireSizeToJson(this);
}

@JsonSerializable()
class TyreConstructionType {
  @JsonKey(name: "tyre_construction_type_id")
  final int tyreConstructionTypeId;
  @JsonKey(name: "tyre_construction_type_code")
  final String tyreConstructionTypeCode;

  TyreConstructionType(
      {required this.tyreConstructionTypeId,required this.tyreConstructionTypeCode});

  factory TyreConstructionType.fromJson(final Map<String, dynamic> json) {
    return _$TyreConstructionTypeFromJson(json);
  }
  Map<String, dynamic> toJson() => _$TyreConstructionTypeToJson(this);
}

@JsonSerializable()
class Metrics {
  @JsonKey(name: "metric_unit")
  final MetricUnit metricUnit;
  @JsonKey(name: "odometer")
  final int odometer;

  Metrics({required this.metricUnit,required this.odometer});

  factory Metrics.fromJson(final Map<String, dynamic> json) {
    return _$MetricsFromJson(json);
  }
  Map<String, dynamic> toJson() => _$MetricsToJson(this);
}

@JsonSerializable()
class MetricUnit {
  @JsonKey(name: "metric_unit_id")
  final int metricUnitId;
  @JsonKey(name: "metric_unit_name")
  final String metricUnitName;
  @JsonKey(name: "metric_unit_code")
  final String metricUnitCode;

  MetricUnit({required this.metricUnitId,required this.metricUnitName,required this.metricUnitCode});
  factory MetricUnit.fromJson(final Map<String, dynamic> json) {
    return _$MetricUnitFromJson(json);
  }
  Map<String, dynamic> toJson() => _$MetricUnitToJson(this);
}

@JsonSerializable()
class FuelDetails {
  @JsonKey(name: "fuel_type")
  final FuelType fuelType;
  @JsonKey(name: "fuel_unit")
  final FuelUnit fuelUnit;
  @JsonKey(name: "consumption")
  final Consumption consumption;

  FuelDetails({required this.fuelType,required this.fuelUnit,required this.consumption});

  factory FuelDetails.fromJson(final Map<String, dynamic> json) {
    return _$FuelDetailsFromJson(json);
  }
  Map<String, dynamic> toJson() => _$FuelDetailsToJson(this);
}

@JsonSerializable()
class FuelType {
  @JsonKey(name: "fuel_type_id")
  final int fuelTypeId;
  @JsonKey(name: "fuel_type_name")
  final String fuelTypeName;

  FuelType({required this.fuelTypeId,required this.fuelTypeName});

  factory FuelType.fromJson(final Map<String, dynamic> json) {
    return _$FuelTypeFromJson(json);
  }
  Map<String, dynamic> toJson() => _$FuelTypeToJson(this);
}
@JsonSerializable()
class FuelUnit {
  @JsonKey(name: "fuel_unit_id")
  final int fuelUnitId;
  @JsonKey(name: "fuel_unit_name")
  final String fuelUnitName;
  @JsonKey(name: "fuel_unit_code")
  final String fuelUnitCode;

  FuelUnit({required this.fuelUnitId,required this.fuelUnitName,required this.fuelUnitCode});

  factory FuelUnit.fromJson(final Map<String, dynamic> json) {
    return _$FuelUnitFromJson(json);
  }
  Map<String, dynamic> toJson() => _$FuelUnitToJson(this);
}
@JsonSerializable()
class Consumption {
  @JsonKey(name: "fuel_consumption_unit_type_id")
  final int fuelConsumptionUnitTypeId;
  @JsonKey(name: "fuel_consumption_unit_type_name")
  final String fuelConsumptionUnitTypeName;

  Consumption(
      {required this.fuelConsumptionUnitTypeId,required this.fuelConsumptionUnitTypeName});

  factory Consumption.fromJson(final Map<String, dynamic> json) {
    return _$ConsumptionFromJson(json);
  }
  Map<String, dynamic> toJson() => _$ConsumptionToJson(this);
}

@JsonSerializable()
class RegionalDetails {
  @JsonKey(name: "country")
  final Country country;
  @JsonKey(name: "plate_number")
  final String plateNumber;
  @JsonKey(name: "currency")
  final Currency currency;
  RegionalDetails({required this.country,required this.plateNumber,required this.currency});

  factory RegionalDetails.fromJson(final Map<String, dynamic> json) {
    return _$RegionalDetailsFromJson(json);
  }
  Map<String, dynamic> toJson() => _$RegionalDetailsToJson(this);
}

@JsonSerializable()
class Country {
  @JsonKey(name: "country_id")
  final int countryId;
  @JsonKey(name: "country_name")
  final String countryName;
  Country({required this.countryId,required this.countryName});
  factory Country.fromJson(final Map<String, dynamic> json) {
    return _$CountryFromJson(json);
  }
  Map<String, dynamic> toJson() => _$CountryToJson(this);
}
@JsonSerializable()
class Currency {
  @JsonKey(name: "currency_id")
  final int currencyId;
  @JsonKey(name: "currency_name")
  final String currencyName;
  @JsonKey(name: "currency_code")
  final String currencyCode;
  Currency({required this.currencyId,required this.currencyName,required this.currencyCode});
  factory Currency.fromJson(final Map<String, dynamic> json) {
    return _$CurrencyFromJson(json);
  }
  Map<String, dynamic> toJson() => _$CurrencyToJson(this);
}


@JsonSerializable()
class LicenseDetails {
  @JsonKey(name: "license_id")
  final String licenseId;
  @JsonKey(name: "country")
  final Country country;
  @JsonKey(name: "license_number")
  final String licenseNumber;
  @JsonKey(name: "license_issuing_date")
  final String licenseIssuingDate;
  @JsonKey(name: "license_expiry_date")
  final String licenseExpiryDate;
  @JsonKey(name: "license_front_screenshot_url")
  final String licenseFrontScreenshotUrl;
  @JsonKey(name: "license_back_screenshot_url")
  final String licenseBackScreenshotUrl;
  @JsonKey(name: "license_notes")
  final String licenseNotes;
  @JsonKey(name: "ride_license_is_verified")
  final bool rideLicenseIsVerified;

  LicenseDetails(
      {required this.licenseId,
      required this.country,
      required this.licenseNumber,
      required this.licenseIssuingDate,
      required this.licenseExpiryDate,
      required this.licenseFrontScreenshotUrl,
      required this.licenseBackScreenshotUrl,
      required this.licenseNotes,
      required this.rideLicenseIsVerified});
  factory LicenseDetails.fromJson(final Map<String, dynamic> json) {
    return _$LicenseDetailsFromJson(json);
  }
  Map<String, dynamic> toJson() => _$LicenseDetailsToJson(this);
}

@JsonSerializable()
class InsurancePolicy {
  @JsonKey(name: "policy_id")
  final String policyId;
  @JsonKey(name: "country")
  final Country country;
  @JsonKey(name: "policy_company_name")
  final String policyCompanyName;
  @JsonKey(name: "policy_number")
  final String policyNumber;
  @JsonKey(name: "policy_issuing_date")
  final String policyIssuingDate;
  @JsonKey(name: "policy_expiry_date")
  final String policyExpiryDate;
  @JsonKey(name: "policy_Documents")
  final List<PolicyDocuments> policyDocuments;
  @JsonKey(name: "policy_notes")
  final String policyNotes;
  @JsonKey(name: "policy_is_verified")
  final bool policyIsVerified;

  InsurancePolicy(
      {required this.policyId,
      required this.country,
      required this.policyCompanyName,
      required this.policyNumber,
      required this.policyIssuingDate,
      required this.policyExpiryDate,
      required this.policyDocuments,
      required this.policyNotes,
      required this.policyIsVerified});
  factory InsurancePolicy.fromJson(final Map<String, dynamic> json) {
    return _$InsurancePolicyFromJson(json);
  }
  Map<String, dynamic> toJson() => _$InsurancePolicyToJson(this);
}

@JsonSerializable()
class PolicyDocuments {
  @JsonKey(name: "policy_document_id")
  final String policyDocumentId;
  @JsonKey(name: "policy_document_url")
  final String policyDocumentUrl;
  @JsonKey(name: "policy_document_name")
  final String policyDocumentName;

  PolicyDocuments({required this.policyDocumentId, required this.policyDocumentUrl,required this.policyDocumentName});

  factory PolicyDocuments.fromJson(final Map<String, dynamic> json) {
    return _$PolicyDocumentsFromJson(json);
  }
  Map<String, dynamic> toJson() => _$PolicyDocumentsToJson(this);
}

@JsonSerializable()
class RideBrochures {
  @JsonKey(name: "language")
  final Language language;
  @JsonKey(name: "registered_ride_brochure_display_name")
  final String registeredRideBrochureDisplayName;
  @JsonKey(name: "registered_ride_brochure_url")
  final String registeredRideBrochureUrl;

  RideBrochures(
      {required this.language,
      required this.registeredRideBrochureDisplayName,
      required this.registeredRideBrochureUrl});
  factory RideBrochures.fromJson(final Map<String, dynamic> json) {
    return _$RideBrochuresFromJson(json);
  }
  Map<String, dynamic> toJson() => _$RideBrochuresToJson(this);
}

@JsonSerializable()
class Language {
  @JsonKey(name: "language_id")
  final int languageId;
  @JsonKey(name: "language_name")
  final String languageName;

  Language({required this.languageId,required this.languageName});
  factory Language.fromJson(final Map<String, dynamic> json) {
    return _$LanguageFromJson(json);
  }
  Map<String, dynamic> toJson() => _$LanguageToJson(this);
}
@JsonSerializable()
class DashboardSigns {
  @JsonKey(name: "dashboard_sign_name")
  final String dashboardSignName;
  @JsonKey(name: "dashboard_sign_description")
  final String dashboardSignDescription;
  @JsonKey(name: "dashboard_sign_image_url")
  final String dashboardSignImageUrl;

  DashboardSigns(
      {required this.dashboardSignName,
      required this.dashboardSignDescription,
      required this.dashboardSignImageUrl});
  factory DashboardSigns.fromJson(final Map<String, dynamic> json) {
    return _$DashboardSignsFromJson(json);
  }
  Map<String, dynamic> toJson() => _$DashboardSignsToJson(this);
}

@JsonSerializable()
class SpecsDetails {
  @JsonKey(name: "specification_item_name")
  final String specificationItemName;
  @JsonKey(name: "specification_item_image_url")
  final String specificationItemImageUrl;
  @JsonKey(name: "specification_item_value")
  final String specificationItemValue;

  SpecsDetails(
      {required this.specificationItemName,
      required this.specificationItemImageUrl,
      required this.specificationItemValue});
  factory SpecsDetails.fromJson(final Map<String, dynamic> json) {
    return _$SpecsDetailsFromJson(json);
  }
  Map<String, dynamic> toJson() => _$SpecsDetailsToJson(this);
}
