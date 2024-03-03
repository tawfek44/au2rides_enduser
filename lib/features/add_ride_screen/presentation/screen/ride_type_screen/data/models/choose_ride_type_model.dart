import 'package:au2rides/features/add_ride_screen/domain/entities/add_ride_body/add_ride_body_entity.dart';
import 'package:au2rides/features/add_ride_screen/presentation/screen/ride_type_screen/domain/enitites/choose_ride_type_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'choose_ride_type_model.g.dart';

@JsonSerializable()
class ChooseRideTypeModel extends ChooseRideTypeEntity {
  factory ChooseRideTypeModel.fromJson(final Map<String, dynamic> json) {
    return _$ChooseRideTypeModelFromJson(json);
  }


  const ChooseRideTypeModel({required super.rideTypeId, required super.languageId, required super.rideTypeName, required super.rideTypeLogoUrl});

  Map<String, dynamic> toJson() => _$ChooseRideTypeModelToJson(this);
}
