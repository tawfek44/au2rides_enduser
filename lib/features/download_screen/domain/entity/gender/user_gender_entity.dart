import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_gender_entity.g.dart';

@JsonSerializable()
class GenderEntity extends Equatable {
  @JsonKey(name: "gender_id")
  final int genderId;
  @JsonKey(name: "language_id")
  final int languaeId;
  @JsonKey(name: "gender_name")
  final String genderName;

  const GenderEntity(
      {required this.genderId,
      required this.languaeId,
      required this.genderName});

  @override
  // TODO: implement props
  List<Object?> get props => [genderId, languaeId, genderName];
}
