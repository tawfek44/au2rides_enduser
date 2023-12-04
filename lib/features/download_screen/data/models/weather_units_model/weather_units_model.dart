import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entity/weather_measuring_units/weather_units_entity.dart';
part 'weather_units_model.g.dart';
@JsonSerializable()
class WeatherUnitsModel extends WeatherUnitsEntity{
  const WeatherUnitsModel({required super.measuringUnitId, required super.languageId, required super.measuringUnitCode, required super.measuringUnitName});
 factory WeatherUnitsModel.fromJson(final Map<String, dynamic> json) {
   return _$WeatherUnitsModelFromJson(json);
 }
 Map<String, dynamic> toJson() => _$WeatherUnitsModelToJson(this);

}