import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/enitites/choose_ride_models_entity.dart';

part 'choose_ride_models_model.g.dart';

@JsonSerializable()
class ChooseRideModelsModel extends ChooseRideModelsEntity {
  factory ChooseRideModelsModel.fromJson(final Map<String, dynamic> json) {
    return _$ChooseRideModelsModelFromJson(json);
  }
  const ChooseRideModelsModel({required super.rideModelId, required super.rideModelName});

  Map<String, dynamic> toJson() => _$ChooseRideModelsModelToJson(this);
}
