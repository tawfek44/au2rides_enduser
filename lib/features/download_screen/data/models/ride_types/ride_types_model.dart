import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entity/ride_types/ride_types_entity.dart';

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
