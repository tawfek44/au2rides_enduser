import 'package:au2rides/features/download_screen/domain/entity/acquisition_types/acquisition_types_entity.dart';
import 'package:au2rides/features/download_screen/domain/entity/authorize/authorize_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authorize_model.g.dart';

@JsonSerializable()
class AuthorizeModel extends AuthorizeEntity {

  factory AuthorizeModel.fromJson(final Map<String, dynamic> json) {
    return _$AuthorizeModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AuthorizeModelToJson(this);

  const AuthorizeModel(super.refreshToken, super.accessToken);
}
