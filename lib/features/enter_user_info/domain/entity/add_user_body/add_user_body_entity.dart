import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_user_body_entity.g.dart';

@JsonSerializable()
class UserBodyEntity extends Equatable {
  @JsonKey(name: "registered_user_id")
  final String registeredUserId;
  @JsonKey(name: "profile_image_url")
  final String profileImageUrl;
  @JsonKey(name: "first_name")
  final String firstName;
  @JsonKey(name: "last_name")
  final String lastName;
  @JsonKey(name: "email_address")
  final String emailAddress;
  @JsonKey(name: "gender_id")
  final int genderId;
  @JsonKey(name: "birth_date")
  final String birthDate;

  const UserBodyEntity({
    required this.registeredUserId,
    required this.firstName,
    required this.lastName,
    required this.emailAddress,
    required this.profileImageUrl,
    required this.genderId,
    required this.birthDate,
  });

  @override
  List<Object?> get props => [
        registeredUserId,
        firstName,
        lastName,
        emailAddress,
        profileImageUrl,
        birthDate,
        genderId
      ];
}
