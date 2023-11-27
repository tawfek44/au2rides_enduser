import 'package:au2rides/features/language_screen/domain/entities/language_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'language.g.dart';
@JsonSerializable()
class LanguageModel extends LanguageEntity{
  const LanguageModel({required super.languageId, required super.languageCode, required super.languageName, required super.directionality});

  factory LanguageModel.fromJson(final Map<String, dynamic> json) {
    return _$LanguageModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LanguageModelToJson(this);
}