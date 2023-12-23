import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fuel_octane_number_entity.g.dart';

@JsonSerializable()
class FuelOctaneNumberEntity extends Equatable {
  @JsonKey(name: "fuel_octane_number_id")
  final int fuelOctaneNumberId;
  @JsonKey(name: "language_id")
  final int languageId;
  @JsonKey(name: "fuel_octane_number")
  final String fuelOctaneNumber;

  const FuelOctaneNumberEntity(
      {required this.fuelOctaneNumberId,
      required this.languageId,
      required this.fuelOctaneNumber});

  @override
  // TODO: implement props
  List<Object?> get props =>
      [fuelOctaneNumberId, languageId, fuelOctaneNumber];
}
