import 'package:au2rides/features/enter_user_info/domain/entity/user_network_entity/user_network_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entity/add_user/add_user_in_local_db_entity.dart';

part 'user_network_model.g.dart';

@JsonSerializable()
class UserNetworkModel extends UserNetworkEntity {
  factory UserNetworkModel.fromJson(
      final Map<String, dynamic> json) {
    return _$UserNetworkModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserNetworkModelToJson(this);

  const UserNetworkModel({required super.userId, required super.firstName, required super.lastName, required super.email, required super.profileImageUrl, required super.profileQrCode, required super.country, required super.gender, required super.birthDate, required super.mobileNumber});
}
