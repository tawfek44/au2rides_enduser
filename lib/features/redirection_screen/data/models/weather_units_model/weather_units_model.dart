import 'package:au2rides/features/redirection_screen/domain/entity/country/country_entity.dart';
import 'package:au2rides/features/redirection_screen/domain/entity/currency/currency_entity.dart';
import 'package:au2rides/features/redirection_screen/domain/entity/gender/user_gender_entity.dart';
import 'package:au2rides/features/redirection_screen/domain/entity/weather_measuring_units/weather_units_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'weather_units_model.g.dart';
@JsonSerializable()
class WeatherUnitsModel extends WeatherUnitsEntity{
  const WeatherUnitsModel({required super.measuringUnitId, required super.languageId, required super.measuringUnitCode, required super.measuringUnitName});
 factory WeatherUnitsModel.fromJson(final Map<String, dynamic> json) {
   return _$WeatherUnitsModelFromJson(json);
 }
 Map<String, dynamic> toJson() => _$WeatherUnitsModelToJson(this);

}