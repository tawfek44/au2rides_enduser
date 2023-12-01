import 'package:au2rides/features/redirection_screen/domain/entity/country/country_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'country_model.g.dart';
@JsonSerializable()
class CountryModel extends CountryEntity{
  CountryModel({required super.countryId, required super.countryName, required super.countryKeyCode, required super.countryCallingCode, required super.countryImageUrl});
  factory CountryModel.fromJson(final Map<String, dynamic> json) {
    return _$CountryModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CountryModelToJson(this);
}