import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'language_entity.g.dart';
@JsonSerializable()
class LanguageEntity extends Equatable{
  @JsonKey(name: "_language_id")
  final int languageId;
  @JsonKey(name: "language_code")
  final String languageCode;
  @JsonKey(name: "language_name")
  final String languageName;
  @JsonKey(name: "directionality")
  final String directionality;

  const LanguageEntity(
      {required this.languageId,
        required this.languageCode,
        required this.languageName,
        required this.directionality});

  @override
  List<Object?> get props => [
    languageId,
    languageCode,
    languageName,
    directionality
  ];
}

