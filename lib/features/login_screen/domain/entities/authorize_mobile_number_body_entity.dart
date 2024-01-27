import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authorize_mobile_number_body_entity.g.dart';

@JsonSerializable()
class AuthorizeMobileNumberBodyEntity extends Equatable {
  @JsonKey(name: "user_phone_number")
  final String userPhoneNumber;
  @JsonKey(name: "country_id")
  final int countryId;
  @JsonKey(name: "identity_provider")
  final String identityProvider;
  @JsonKey(name: "language_id")
  final int languageId;
  @JsonKey(name: "behaviour")
  final String behaviour;

  const AuthorizeMobileNumberBodyEntity(
      {required this.userPhoneNumber,
      required this.countryId, required this.languageId,
      required this.identityProvider,
      required this.behaviour});

  @override
  List<Object?> get props =>
      [userPhoneNumber, countryId, identityProvider, behaviour,languageId];
}


