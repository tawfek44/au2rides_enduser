import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entity/country/country_entity.dart';

part 'country_model.g.dart';

@JsonSerializable()
class CountryModel extends CountryEntity {
  const CountryModel(
      {required super.countryId,
      required super.languageId,
      required super.countryName,
      required super.countryKeyCode,
      required super.countryCallingCode,
      required super.countryImageUrl});

  factory CountryModel.fromJson(final Map<String, dynamic> json) {
    return _$CountryModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CountryModelToJson(this);
}
