import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'choose_ride_makes_entity.g.dart';

@JsonSerializable()
class ChooseRideMakesEntity extends Equatable {
  @JsonKey(name: "make_id")
  final String makeId;
  @JsonKey(name: "make_name")
  final String makeName;
  @JsonKey(name: "make_logo_url")
  final String makeLogoUrl;

  const ChooseRideMakesEntity({
    required this.makeId,
    required this.makeName,
    required this.makeLogoUrl,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        makeId,
        makeName,
        makeLogoUrl,
      ];
}
