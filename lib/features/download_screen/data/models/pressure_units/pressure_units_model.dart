import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entity/pressure_units/pressure_units_entity.dart';

part 'pressure_units_model.g.dart';

@JsonSerializable()
class PressureUnitsModel extends PressureUnitsEntity {
  const PressureUnitsModel(
      {required super.pressureUnitId,
      required super.languageId,
      required super.pressureUnitName,
      required super.pressureUnitCode});

  factory PressureUnitsModel.fromJson(final Map<String, dynamic> json) {
    return _$PressureUnitsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PressureUnitsModelToJson(this);
}
