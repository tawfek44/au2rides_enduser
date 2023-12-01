import 'package:au2rides/features/redirection_screen/domain/entity/country/country_entity.dart';
import 'package:au2rides/features/redirection_screen/domain/entity/currency/currency_entity.dart';
import 'package:au2rides/features/redirection_screen/domain/entity/gender/user_gender_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_gender_model.g.dart';
@JsonSerializable()
class UserGenderModel extends GenderEntity{
 const  UserGenderModel({required super.genderId, required super.languaeId, required super.genderName});
 factory UserGenderModel.fromJson(final Map<String, dynamic> json) {
   return _$UserGenderModelFromJson(json);
 }
 Map<String, dynamic> toJson() => _$UserGenderModelToJson(this);

}