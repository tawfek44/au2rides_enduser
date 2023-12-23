class FuelOctaneNumberFields {
  static const String fuelOctaneNumberId = "fuel_octane_number_id";
  static const String languageId = "language_id";
  static const String fuelOctaneNumber = "fuel_octane_number";
}

class FuelOctaneNumber {
  final int fuelOctaneNumberId;
  final int languageId;
  final String fuelOctaneNumber;

  FuelOctaneNumber(
      {required this.fuelOctaneNumberId,
        required this.languageId,
        required this.fuelOctaneNumber});

  Map<String, Object> toJson() => {
    FuelOctaneNumberFields.fuelOctaneNumberId: fuelOctaneNumberId,
    FuelOctaneNumberFields.languageId: languageId,
    FuelOctaneNumberFields.fuelOctaneNumber: fuelOctaneNumber,
  };
}
