class TireConstructionTypesField {
  static const String tyreConstructionTypId = "tire_construction_type_id";
  static const String languageId = "language_id";
  static const String tyreConstructionTypeName = "tire_construction_type_name";
  static const String tyreConstructionTypeCode = "tire_construction_type_code";
}

class TireConstructionTypes {
  final int tyreConstructionTypId;
  final int languageId;
  final String tyreConstructionTypeName;
  final String tyreConstructionTypeCode;

  TireConstructionTypes({
    required this.tyreConstructionTypId,
    required this.languageId,
    required this.tyreConstructionTypeName,
    required this.tyreConstructionTypeCode,
  });

  Map<String, Object> toJson() => {
        TireConstructionTypesField.tyreConstructionTypId: tyreConstructionTypId,
        TireConstructionTypesField.languageId: languageId,
        TireConstructionTypesField.tyreConstructionTypeName: tyreConstructionTypeName,
        TireConstructionTypesField.tyreConstructionTypeCode: tyreConstructionTypeCode,
      };
}
