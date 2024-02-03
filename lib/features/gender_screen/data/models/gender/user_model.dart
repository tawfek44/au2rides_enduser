import 'package:au2rides/features/download_screen/domain/entity/gender/user_gender_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class GenderModel extends GenderEntity {
  factory GenderModel.fromJson(
      final Map<String, dynamic> json) {
    return _$GenderModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GenderModelToJson(this);

 const GenderModel({required super.genderId, required super.languaeId, required super.genderName});
}
