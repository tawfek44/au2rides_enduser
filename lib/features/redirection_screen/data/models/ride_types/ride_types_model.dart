import 'package:au2rides/features/redirection_screen/domain/entity/country/country_entity.dart';
import 'package:au2rides/features/redirection_screen/domain/entity/currency/currency_entity.dart';
import 'package:au2rides/features/redirection_screen/domain/entity/ride_types/ride_types_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ride_types_model.g.dart';

@JsonSerializable()
class RideTypesModel extends RideTypesEntity {
  const RideTypesModel(
      {required super.rideTypeId,
      required super.languageId,
      required super.rideTypeName,
      required super.rideTypeLogoUrl});

  factory RideTypesModel.fromJson(final Map<String, dynamic> json) {
    return _$RideTypesModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RideTypesModelToJson(this);
}
