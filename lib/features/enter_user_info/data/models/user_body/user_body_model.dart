import 'package:au2rides/features/enter_user_info/domain/entity/add_user_body/add_user_body_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_body_model.g.dart';

@JsonSerializable()
class UserBodyModel extends UserBodyEntity {
  factory UserBodyModel.fromJson(
      final Map<String, dynamic> json) {
    return _$UserBodyModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$UserBodyModelToJson(this);

  const UserBodyModel({required super.registeredUserId, required super.firstName, required super.lastName, required super.emailAddress, required super.profileImageUrl, required super.genderId, required super.birthDate});
}
