// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_ride_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddRideResponseEntity _$AddRideResponseEntityFromJson(
        Map<String, dynamic> json) =>
    AddRideResponseEntity(
      registeredRideId: json['registered_ride_id'] as String,
      rideName: json['ride_name'] as String,
      rideImageUrl: json['ride_image_url'] as String,
      rideQrCodes:
          RideQrCodes.fromJson(json['ride_qr_codes'] as Map<String, dynamic>),
      rideVinNumber: json['ride_vin_number'] as String,
      rideNotes: json['ride_notes'] as String,
      rideIsVerified: json['ride_is_verified'] as bool,
      manufacturingDetails: ManufacturingDetails.fromJson(
          json['manufacturing_details'] as Map<String, dynamic>),
      tirePressure:
          TirePressure.fromJson(json['tire_Pressure'] as Map<String, dynamic>),
      metrics: Metrics.fromJson(json['metrics'] as Map<String, dynamic>),
      fuelDetails:
          FuelDetails.fromJson(json['fuel_details'] as Map<String, dynamic>),
      regionalDetails: RegionalDetails.fromJson(
          json['regional_details'] as Map<String, dynamic>),
      licenseDetails: LicenseDetails.fromJson(
          json['license_details'] as Map<String, dynamic>),
      insurancePolicy: InsurancePolicy.fromJson(
          json['insurance_Policy'] as Map<String, dynamic>),
      rideBrochures: (json['ride_brochures'] as List<dynamic>)
          .map((e) => RideBrochures.fromJson(e as Map<String, dynamic>))
          .toList(),
      dashboardSigns: (json['dasboard_signs'] as List<dynamic>)
          .map((e) => DashboardSigns.fromJson(e as Map<String, dynamic>))
          .toList(),
      specsDetails: (json['specs_details'] as List<dynamic>)
          .map((e) => SpecsDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AddRideResponseEntityToJson(
        AddRideResponseEntity instance) =>
    <String, dynamic>{
      'registered_ride_id': instance.registeredRideId,
      'ride_name': instance.rideName,
      'ride_image_url': instance.rideImageUrl,
      'ride_qr_codes': instance.rideQrCodes,
      'ride_vin_number': instance.rideVinNumber,
      'ride_notes': instance.rideNotes,
      'ride_is_verified': instance.rideIsVerified,
      'manufacturing_details': instance.manufacturingDetails,
      'tire_Pressure': instance.tirePressure,
      'metrics': instance.metrics,
      'fuel_details': instance.fuelDetails,
      'regional_details': instance.regionalDetails,
      'license_details': instance.licenseDetails,
      'insurance_Policy': instance.insurancePolicy,
      'ride_brochures': instance.rideBrochures,
      'dasboard_signs': instance.dashboardSigns,
      'specs_details': instance.specsDetails,
    };

RideQrCodes _$RideQrCodesFromJson(Map<String, dynamic> json) => RideQrCodes(
      rideQrCodeUrl: json['ride_qr_code_url'] as String,
      rideWhiteQrCodeUrl: json['ride_white_qr_code_url'] as String,
    );

Map<String, dynamic> _$RideQrCodesToJson(RideQrCodes instance) =>
    <String, dynamic>{
      'ride_qr_code_url': instance.rideQrCodeUrl,
      'ride_white_qr_code_url': instance.rideWhiteQrCodeUrl,
    };

ManufacturingDetails _$ManufacturingDetailsFromJson(
        Map<String, dynamic> json) =>
    ManufacturingDetails(
      rideType: RideType.fromJson(json['ride_type'] as Map<String, dynamic>),
      manufacturingYear: json['manufacturing_year'] as int,
      rideMake: RideMake.fromJson(json['ride_make'] as Map<String, dynamic>),
      rideModel: RideModel.fromJson(json['ride_model'] as Map<String, dynamic>),
      rideTrim: RideTrim.fromJson(json['ride_trim'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ManufacturingDetailsToJson(
        ManufacturingDetails instance) =>
    <String, dynamic>{
      'ride_type': instance.rideType,
      'manufacturing_year': instance.manufacturingYear,
      'ride_make': instance.rideMake,
      'ride_model': instance.rideModel,
      'ride_trim': instance.rideTrim,
    };

RideType _$RideTypeFromJson(Map<String, dynamic> json) => RideType(
      rideTypeId: json['ride_type_id'] as int,
      rideTypeName: json['ride_type_name'] as String,
    );

Map<String, dynamic> _$RideTypeToJson(RideType instance) => <String, dynamic>{
      'ride_type_id': instance.rideTypeId,
      'ride_type_name': instance.rideTypeName,
    };

RideMake _$RideMakeFromJson(Map<String, dynamic> json) => RideMake(
      makeId: json['make_id'] as String,
      makeName: json['make_name'] as String,
    );

Map<String, dynamic> _$RideMakeToJson(RideMake instance) => <String, dynamic>{
      'make_id': instance.makeId,
      'make_name': instance.makeName,
    };

RideModel _$RideModelFromJson(Map<String, dynamic> json) => RideModel(
      rideModelId: json['ride_model_id'] as String,
      rideModelName: json['ride_model_name'] as String,
    );

Map<String, dynamic> _$RideModelToJson(RideModel instance) => <String, dynamic>{
      'ride_model_id': instance.rideModelId,
      'ride_model_name': instance.rideModelName,
    };

RideTrim _$RideTrimFromJson(Map<String, dynamic> json) => RideTrim(
      rideTrimId: json['ride_trim_id'] as String,
      rideTrimName: json['ride_trim_name'] as String,
    );

Map<String, dynamic> _$RideTrimToJson(RideTrim instance) => <String, dynamic>{
      'ride_trim_id': instance.rideTrimId,
      'ride_trim_name': instance.rideTrimName,
    };

TirePressure _$TirePressureFromJson(Map<String, dynamic> json) => TirePressure(
      tirePressureUnit: TirePressureUnit.fromJson(
          json['tire_pressure_unit'] as Map<String, dynamic>),
      frontTires:
          FrontTires.fromJson(json['front_tires'] as Map<String, dynamic>),
      rearTires:
          FrontTires.fromJson(json['rear_tires'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TirePressureToJson(TirePressure instance) =>
    <String, dynamic>{
      'tire_pressure_unit': instance.tirePressureUnit,
      'front_tires': instance.frontTires,
      'rear_tires': instance.rearTires,
    };

TirePressureUnit _$TirePressureUnitFromJson(Map<String, dynamic> json) =>
    TirePressureUnit(
      pressureUnitId: json['pressure_unit_id'] as int,
      pressureUnitName: json['pressure_unit_name'] as String,
      pressureUnitCode: json['pressure_unit_code'] as String,
    );

Map<String, dynamic> _$TirePressureUnitToJson(TirePressureUnit instance) =>
    <String, dynamic>{
      'pressure_unit_id': instance.pressureUnitId,
      'pressure_unit_name': instance.pressureUnitName,
      'pressure_unit_code': instance.pressureUnitCode,
    };

FrontTires _$FrontTiresFromJson(Map<String, dynamic> json) => FrontTires(
      tirePressure: json['tire_pressure'] as int,
      tireSize: TireSize.fromJson(json['tire_Size'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FrontTiresToJson(FrontTires instance) =>
    <String, dynamic>{
      'tire_pressure': instance.tirePressure,
      'tire_Size': instance.tireSize,
    };

TireSize _$TireSizeFromJson(Map<String, dynamic> json) => TireSize(
      tireWidth: json['tire_width'] as int,
      aspectRatio: json['aspect_ratio'] as int,
      tyreConstructionType: TyreConstructionType.fromJson(
          json['tyre_construction_type'] as Map<String, dynamic>),
      rimSize: json['rim_size'] as int,
    );

Map<String, dynamic> _$TireSizeToJson(TireSize instance) => <String, dynamic>{
      'tire_width': instance.tireWidth,
      'aspect_ratio': instance.aspectRatio,
      'tyre_construction_type': instance.tyreConstructionType,
      'rim_size': instance.rimSize,
    };

TyreConstructionType _$TyreConstructionTypeFromJson(
        Map<String, dynamic> json) =>
    TyreConstructionType(
      tyreConstructionTypeId: json['tyre_construction_type_id'] as int,
      tyreConstructionTypeCode: json['tyre_construction_type_code'] as String,
    );

Map<String, dynamic> _$TyreConstructionTypeToJson(
        TyreConstructionType instance) =>
    <String, dynamic>{
      'tyre_construction_type_id': instance.tyreConstructionTypeId,
      'tyre_construction_type_code': instance.tyreConstructionTypeCode,
    };

Metrics _$MetricsFromJson(Map<String, dynamic> json) => Metrics(
      metricUnit:
          MetricUnit.fromJson(json['metric_unit'] as Map<String, dynamic>),
      odometer: json['odometer'] as int,
    );

Map<String, dynamic> _$MetricsToJson(Metrics instance) => <String, dynamic>{
      'metric_unit': instance.metricUnit,
      'odometer': instance.odometer,
    };

MetricUnit _$MetricUnitFromJson(Map<String, dynamic> json) => MetricUnit(
      metricUnitId: json['metric_unit_id'] as int,
      metricUnitName: json['metric_unit_name'] as String,
      metricUnitCode: json['metric_unit_code'] as String,
    );

Map<String, dynamic> _$MetricUnitToJson(MetricUnit instance) =>
    <String, dynamic>{
      'metric_unit_id': instance.metricUnitId,
      'metric_unit_name': instance.metricUnitName,
      'metric_unit_code': instance.metricUnitCode,
    };

FuelDetails _$FuelDetailsFromJson(Map<String, dynamic> json) => FuelDetails(
      fuelType: FuelType.fromJson(json['fuel_type'] as Map<String, dynamic>),
      fuelUnit: FuelUnit.fromJson(json['fuel_unit'] as Map<String, dynamic>),
      consumption:
          Consumption.fromJson(json['consumption'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FuelDetailsToJson(FuelDetails instance) =>
    <String, dynamic>{
      'fuel_type': instance.fuelType,
      'fuel_unit': instance.fuelUnit,
      'consumption': instance.consumption,
    };

FuelType _$FuelTypeFromJson(Map<String, dynamic> json) => FuelType(
      fuelTypeId: json['fuel_type_id'] as int,
      fuelTypeName: json['fuel_type_name'] as String,
    );

Map<String, dynamic> _$FuelTypeToJson(FuelType instance) => <String, dynamic>{
      'fuel_type_id': instance.fuelTypeId,
      'fuel_type_name': instance.fuelTypeName,
    };

FuelUnit _$FuelUnitFromJson(Map<String, dynamic> json) => FuelUnit(
      fuelUnitId: json['fuel_unit_id'] as int,
      fuelUnitName: json['fuel_unit_name'] as String,
      fuelUnitCode: json['fuel_unit_code'] as String,
    );

Map<String, dynamic> _$FuelUnitToJson(FuelUnit instance) => <String, dynamic>{
      'fuel_unit_id': instance.fuelUnitId,
      'fuel_unit_name': instance.fuelUnitName,
      'fuel_unit_code': instance.fuelUnitCode,
    };

Consumption _$ConsumptionFromJson(Map<String, dynamic> json) => Consumption(
      fuelConsumptionUnitTypeId: json['fuel_consumption_unit_type_id'] as int,
      fuelConsumptionUnitTypeName:
          json['fuel_consumption_unit_type_name'] as String,
    );

Map<String, dynamic> _$ConsumptionToJson(Consumption instance) =>
    <String, dynamic>{
      'fuel_consumption_unit_type_id': instance.fuelConsumptionUnitTypeId,
      'fuel_consumption_unit_type_name': instance.fuelConsumptionUnitTypeName,
    };

RegionalDetails _$RegionalDetailsFromJson(Map<String, dynamic> json) =>
    RegionalDetails(
      country: Country.fromJson(json['country'] as Map<String, dynamic>),
      plateNumber: json['plate_number'] as String,
      currency: Currency.fromJson(json['currency'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RegionalDetailsToJson(RegionalDetails instance) =>
    <String, dynamic>{
      'country': instance.country,
      'plate_number': instance.plateNumber,
      'currency': instance.currency,
    };

Country _$CountryFromJson(Map<String, dynamic> json) => Country(
      countryId: json['country_id'] as int,
      countryName: json['country_name'] as String,
    );

Map<String, dynamic> _$CountryToJson(Country instance) => <String, dynamic>{
      'country_id': instance.countryId,
      'country_name': instance.countryName,
    };

Currency _$CurrencyFromJson(Map<String, dynamic> json) => Currency(
      currencyId: json['currency_id'] as int,
      currencyName: json['currency_name'] as String,
      currencyCode: json['currency_code'] as String,
    );

Map<String, dynamic> _$CurrencyToJson(Currency instance) => <String, dynamic>{
      'currency_id': instance.currencyId,
      'currency_name': instance.currencyName,
      'currency_code': instance.currencyCode,
    };

LicenseDetails _$LicenseDetailsFromJson(Map<String, dynamic> json) =>
    LicenseDetails(
      licenseId: json['license_id'] as String,
      country: Country.fromJson(json['country'] as Map<String, dynamic>),
      licenseNumber: json['license_number'] as String,
      licenseIssuingDate: json['license_issuing_date'] as String,
      licenseExpiryDate: json['license_expiry_date'] as String,
      licenseFrontScreenshotUrl: json['license_front_screenshot_url'] as String,
      licenseBackScreenshotUrl: json['license_back_screenshot_url'] as String,
      licenseNotes: json['license_notes'] as String,
      rideLicenseIsVerified: json['ride_license_is_verified'] as bool,
    );

Map<String, dynamic> _$LicenseDetailsToJson(LicenseDetails instance) =>
    <String, dynamic>{
      'license_id': instance.licenseId,
      'country': instance.country,
      'license_number': instance.licenseNumber,
      'license_issuing_date': instance.licenseIssuingDate,
      'license_expiry_date': instance.licenseExpiryDate,
      'license_front_screenshot_url': instance.licenseFrontScreenshotUrl,
      'license_back_screenshot_url': instance.licenseBackScreenshotUrl,
      'license_notes': instance.licenseNotes,
      'ride_license_is_verified': instance.rideLicenseIsVerified,
    };

InsurancePolicy _$InsurancePolicyFromJson(Map<String, dynamic> json) =>
    InsurancePolicy(
      policyId: json['policy_id'] as String,
      country: Country.fromJson(json['country'] as Map<String, dynamic>),
      policyCompanyName: json['policy_company_name'] as String,
      policyNumber: json['policy_number'] as String,
      policyIssuingDate: json['policy_issuing_date'] as String,
      policyExpiryDate: json['policy_expiry_date'] as String,
      policyDocuments: (json['policy_Documents'] as List<dynamic>)
          .map((e) => PolicyDocuments.fromJson(e as Map<String, dynamic>))
          .toList(),
      policyNotes: json['policy_notes'] as String,
      policyIsVerified: json['policy_is_verified'] as bool,
    );

Map<String, dynamic> _$InsurancePolicyToJson(InsurancePolicy instance) =>
    <String, dynamic>{
      'policy_id': instance.policyId,
      'country': instance.country,
      'policy_company_name': instance.policyCompanyName,
      'policy_number': instance.policyNumber,
      'policy_issuing_date': instance.policyIssuingDate,
      'policy_expiry_date': instance.policyExpiryDate,
      'policy_Documents': instance.policyDocuments,
      'policy_notes': instance.policyNotes,
      'policy_is_verified': instance.policyIsVerified,
    };

PolicyDocuments _$PolicyDocumentsFromJson(Map<String, dynamic> json) =>
    PolicyDocuments(
      policyDocumentId: json['policy_document_id'] as String,
      policyDocumentUrl: json['policy_document_url'] as String,
      policyDocumentName: json['policy_document_name'] as String,
    );

Map<String, dynamic> _$PolicyDocumentsToJson(PolicyDocuments instance) =>
    <String, dynamic>{
      'policy_document_id': instance.policyDocumentId,
      'policy_document_url': instance.policyDocumentUrl,
      'policy_document_name': instance.policyDocumentName,
    };

RideBrochures _$RideBrochuresFromJson(Map<String, dynamic> json) =>
    RideBrochures(
      language: Language.fromJson(json['language'] as Map<String, dynamic>),
      registeredRideBrochureDisplayName:
          json['registered_ride_brochure_display_name'] as String,
      registeredRideBrochureUrl: json['registered_ride_brochure_url'] as String,
    );

Map<String, dynamic> _$RideBrochuresToJson(RideBrochures instance) =>
    <String, dynamic>{
      'language': instance.language,
      'registered_ride_brochure_display_name':
          instance.registeredRideBrochureDisplayName,
      'registered_ride_brochure_url': instance.registeredRideBrochureUrl,
    };

Language _$LanguageFromJson(Map<String, dynamic> json) => Language(
      languageId: json['language_id'] as int,
      languageName: json['language_name'] as String,
    );

Map<String, dynamic> _$LanguageToJson(Language instance) => <String, dynamic>{
      'language_id': instance.languageId,
      'language_name': instance.languageName,
    };

DashboardSigns _$DashboardSignsFromJson(Map<String, dynamic> json) =>
    DashboardSigns(
      dashboardSignName: json['dashboard_sign_name'] as String,
      dashboardSignDescription: json['dashboard_sign_description'] as String,
      dashboardSignImageUrl: json['dashboard_sign_image_url'] as String,
    );

Map<String, dynamic> _$DashboardSignsToJson(DashboardSigns instance) =>
    <String, dynamic>{
      'dashboard_sign_name': instance.dashboardSignName,
      'dashboard_sign_description': instance.dashboardSignDescription,
      'dashboard_sign_image_url': instance.dashboardSignImageUrl,
    };

SpecsDetails _$SpecsDetailsFromJson(Map<String, dynamic> json) => SpecsDetails(
      specificationItemName: json['specification_item_name'] as String,
      specificationItemImageUrl: json['specification_item_image_url'] as String,
      specificationItemValue: json['specification_item_value'] as String,
    );

Map<String, dynamic> _$SpecsDetailsToJson(SpecsDetails instance) =>
    <String, dynamic>{
      'specification_item_name': instance.specificationItemName,
      'specification_item_image_url': instance.specificationItemImageUrl,
      'specification_item_value': instance.specificationItemValue,
    };