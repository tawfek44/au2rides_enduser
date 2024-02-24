import 'package:au2rides/features/home_screen/domain/entities/get_all_rides_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_my_rides_model.g.dart';

@JsonSerializable()
class MyRidesModel extends MyRidesEntity{

  factory MyRidesModel.fromJson(final Map<String, dynamic> json) {
    return _$MyRidesModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MyRidesModelToJson(this);

  MyRidesModel({required super.registeredRideId, required super.rideName, required super.rideImageUrl, required super.rideQrCodes, required super.manufacturingDetails, required super.rideVinNumber, required super.rideIsVerified});
}