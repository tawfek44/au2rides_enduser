class AcquisitionTypesFields {
  static const String acquisitionTypeId = "acquisition_type_id";
  static const String languageId = "language_id";
  static const String acquisitionTypeName = "acquisition_type_name";
}

class AcquisitionTypes {
  final int acquisitionTypeId;
  final int languageId;
  final String acquisitionTypeName;

  AcquisitionTypes(
      {required this.acquisitionTypeId,
      required this.languageId,
      required this.acquisitionTypeName});

  Map<String, Object> toJson() => {
        AcquisitionTypesFields.acquisitionTypeId: acquisitionTypeId,
        AcquisitionTypesFields.languageId: languageId,
        AcquisitionTypesFields.acquisitionTypeName: acquisitionTypeName,
      };
}
