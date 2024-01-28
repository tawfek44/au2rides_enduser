import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entity/add_user/add_user_in_local_db_entity.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel extends UserEntity {
  factory UserModel.fromJson(
      final Map<String, dynamic> json) {
    return _$UserModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  const UserModel({required super.userId, required super.firstName, required super.lastName, required super.emailAddress, required super.isVerified, required super.profileImageUrl, required super.profileQrCode, required super.countryId, required super.genderId, required super.birthDate});
}
