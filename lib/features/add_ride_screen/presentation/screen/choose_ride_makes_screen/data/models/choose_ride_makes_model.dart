import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/enitites/choose_ride_makes_entity.dart';

part 'choose_ride_makes_model.g.dart';

@JsonSerializable()
class ChooseRideMakesModel extends ChooseRideMakesEntity {
  factory ChooseRideMakesModel.fromJson(final Map<String, dynamic> json) {
    return _$ChooseRideMakesModelFromJson(json);
  }


  const ChooseRideMakesModel({required super.makeId, required super.makeName, required super.makeLogoUrl});

  Map<String, dynamic> toJson() => _$ChooseRideMakesModelToJson(this);
}
