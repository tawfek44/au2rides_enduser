// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choose_metric_units_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChooseMetricUnitsModel _$ChooseMetricUnitsModelFromJson(
        Map<String, dynamic> json) =>
    ChooseMetricUnitsModel(
      metricUnitId: json['metric_unit_id'] as int,
      languageId: json['language_id'] as int,
      metricUnitName: json['metric_unit_name'] as String,
      metricUnitCode: json['metric_unit_code'] as String,
    );

Map<String, dynamic> _$ChooseMetricUnitsModelToJson(
        ChooseMetricUnitsModel instance) =>
    <String, dynamic>{
      'metric_unit_id': instance.metricUnitId,
      'language_id': instance.languageId,
      'metric_unit_name': instance.metricUnitName,
      'metric_unit_code': instance.metricUnitCode,
    };
