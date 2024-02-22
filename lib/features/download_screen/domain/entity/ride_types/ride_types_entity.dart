import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ride_types_entity.g.dart';

@JsonSerializable()
class RideTypesEntity extends Equatable {
  @JsonKey(name: "ride_type_id")
  final int? rideTypeId;
  @JsonKey(name: "language_id")
  final int? languageId;
  @JsonKey(name: "ride_type_name")
  final String? rideTypeName;
  @JsonKey(name: "ride_type_logo_url")
  final String? rideTypeLogoUrl;

  const RideTypesEntity(
      {required this.rideTypeId,
      required this.languageId,
      required this.rideTypeName,
      required this.rideTypeLogoUrl});

  @override
  // TODO: implement props
  List<Object?> get props =>
      [rideTypeId, languageId, rideTypeName, rideTypeLogoUrl];
}
