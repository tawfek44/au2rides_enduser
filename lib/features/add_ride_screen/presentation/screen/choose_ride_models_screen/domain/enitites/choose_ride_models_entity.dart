import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'choose_ride_models_entity.g.dart';

@JsonSerializable()
class ChooseRideModelsEntity extends Equatable {
  @JsonKey(name: "ride_model_id")
  final String rideModelId;
  @JsonKey(name: "ride_model_name")
  final String rideModelName;

  const ChooseRideModelsEntity({
    required this.rideModelId,
    required this.rideModelName,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        rideModelId,
        rideModelName,
      ];
}
