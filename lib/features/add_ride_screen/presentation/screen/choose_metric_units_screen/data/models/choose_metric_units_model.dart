import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/enitites/choose_metric_units_entity.dart';
part 'choose_metric_units_model.g.dart';

@JsonSerializable()
class ChooseMetricUnitsModel extends ChooseMetricUnitsEntity {
  factory ChooseMetricUnitsModel.fromJson(final Map<String, dynamic> json) {
    return _$ChooseMetricUnitsModelFromJson(json);
  }


  const ChooseMetricUnitsModel({required super.metricUnitId, required super.languageId, required super.metricUnitName, required super.metricUnitCode});

  Map<String, dynamic> toJson() => _$ChooseMetricUnitsModelToJson(this);
}
