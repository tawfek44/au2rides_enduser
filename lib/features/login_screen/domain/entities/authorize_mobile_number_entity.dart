import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authorize_mobile_number_entity.g.dart';
@JsonSerializable()
class AuthorizeMobileNumberEntity extends Equatable{
  @JsonKey(name: "registered_user_id")
  final String registeredUserId;

  const AuthorizeMobileNumberEntity(
      {required this.registeredUserId,});

  @override
  List<Object?> get props => [
    registeredUserId
  ];
}



