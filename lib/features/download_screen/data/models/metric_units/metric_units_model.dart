import 'package:au2rides/features/download_screen/domain/entity/acquisition_types/acquisition_types_entity.dart';
import 'package:au2rides/features/download_screen/domain/entity/metric_units_types/metric_units_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entity/currency/currency_entity.dart';

part 'metric_units_model.g.dart';

@JsonSerializable()
class MetricUnitsModel extends MetricUnitsEntity {
  const MetricUnitsModel(
      {required super.metricUnitId,
      required super.languageId,
      required super.metricUnitName,
      required super.metricUnitCode});

  factory MetricUnitsModel.fromJson(final Map<String, dynamic> json) {
    return _$MetricUnitsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MetricUnitsModelToJson(this);
}
