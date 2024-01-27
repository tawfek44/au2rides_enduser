import 'package:au2rides/features/language_screen/domain/entities/language_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/authorize_mobile_number_entity.dart';

part 'authorize_phone_number_model.g.dart';
@JsonSerializable()
class AuthorizeMobileNumberModel extends AuthorizeMobileNumberEntity{
  const AuthorizeMobileNumberModel({required super.registeredUserId});
  factory AuthorizeMobileNumberModel.fromJson(final Map<String, dynamic> json) {
    return _$AuthorizeMobileNumberModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AuthorizeMobileNumberModelToJson(this);


}
