import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authorize_entity.g.dart';

@JsonSerializable()
class AuthorizeEntity extends Equatable {
  @JsonKey(name: "refresh_token")
  final RefreshToken refreshToken;
  @JsonKey(name: "access_token")
  final AccessToken accessToken;

  const AuthorizeEntity(this.refreshToken, this.accessToken);

  @override
  // TODO: implement props
  List<Object?> get props =>
      [refreshToken, accessToken];
}
@JsonSerializable()
class RefreshToken  extends Equatable{
  @JsonKey(name: "refresh_token")
  final String refreshToken;
  const RefreshToken({required this.refreshToken});

  factory RefreshToken.fromJson(Map<String, dynamic> json) => _$RefreshTokenFromJson(json);
  Map<String, dynamic> toJson() => _$RefreshTokenToJson(this);

  @override
  // TODO: implement props
  List<Object?> get props => [refreshToken];
}
@JsonSerializable()
class AccessToken  extends Equatable{
  @JsonKey(name: "access_token")
  final String accessToken;
  const AccessToken({required this.accessToken});

  factory AccessToken.fromJson(Map<String, dynamic> json) => _$AccessTokenFromJson(json);
  Map<String, dynamic> toJson() => _$AccessTokenToJson(this);
  @override
  // TODO: implement props
  List<Object?> get props =>[accessToken];
}
