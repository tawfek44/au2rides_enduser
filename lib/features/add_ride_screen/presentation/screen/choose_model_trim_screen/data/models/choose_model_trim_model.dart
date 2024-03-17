import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/enitites/choose_model_trim_entity.dart';
part 'choose_model_trim_model.g.dart';


@JsonSerializable()
class ChooseRideModelTrimModel extends ChooseRideModelTrimEntity {
  factory ChooseRideModelTrimModel.fromJson(final Map<String, dynamic> json) {
    return _$ChooseRideModelTrimModelFromJson(json);
  }


  const ChooseRideModelTrimModel({required super.rideTrimId, required super.rideTrimName});

  Map<String, dynamic> toJson() => _$ChooseRideModelTrimModelToJson(this);
}
