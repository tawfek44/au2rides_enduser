import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'choose_model_trim_entity.g.dart';

@JsonSerializable()
class ChooseRideModelTrimEntity extends Equatable {
  @JsonKey(name: "ride_trim_id")
  final String rideTrimId;
  @JsonKey(name: "ride_trim_name")
  final String rideTrimName;

  const ChooseRideModelTrimEntity({
    required this.rideTrimId,
    required this.rideTrimName,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        rideTrimId,
        rideTrimName,
      ];
}
