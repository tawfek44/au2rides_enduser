import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'metric_units_entity.g.dart';

@JsonSerializable()
class MetricUnitsEntity extends Equatable {
  @JsonKey(name: "metric_unit_id")
  final int metricUnitId;
  @JsonKey(name: "language_id")
  final int languageId;
  @JsonKey(name: "metric_unit_name")
  final String metricUnitName;
  @JsonKey(name: "metric_unit_code")
  final String metricUnitCode;

  const MetricUnitsEntity(
      {required this.metricUnitId,
      required this.languageId,
      required this.metricUnitName,
      required this.metricUnitCode});

  @override
  // TODO: implement props
  List<Object?> get props =>
      [metricUnitId, languageId, metricUnitName, metricUnitCode];
}
