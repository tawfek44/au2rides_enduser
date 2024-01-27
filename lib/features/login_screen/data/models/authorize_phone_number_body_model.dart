import 'package:au2rides/features/language_screen/domain/entities/language_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/authorize_mobile_number_body_entity.dart';
import '../../domain/entities/authorize_mobile_number_entity.dart';

part 'authorize_phone_number_body_model.g.dart';

@JsonSerializable()
class AuthorizeMobileNumberBodyModel extends AuthorizeMobileNumberBodyEntity {
  factory AuthorizeMobileNumberBodyModel.fromJson(
      final Map<String, dynamic> json) {
    return _$AuthorizeMobileNumberBodyModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AuthorizeMobileNumberBodyModelToJson(this);

  const AuthorizeMobileNumberBodyModel({required super.userPhoneNumber, required super.countryId, required super.languageId, required super.identityProvider, required super.behaviour});
}
