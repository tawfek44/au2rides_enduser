import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entity/gender/user_gender_entity.dart';
part 'user_gender_model.g.dart';
@JsonSerializable()
class UserGenderModel extends GenderEntity{
 const  UserGenderModel({required super.genderId, required super.languaeId, required super.genderName});
 factory UserGenderModel.fromJson(final Map<String, dynamic> json) {
   return _$UserGenderModelFromJson(json);
 }
 Map<String, dynamic> toJson() => _$UserGenderModelToJson(this);

}