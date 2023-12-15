// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recurrence_period_types_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecurrencePeriodTypesEntity _$RecurrencePeriodTypesEntityFromJson(
        Map<String, dynamic> json) =>
    RecurrencePeriodTypesEntity(
      recurrencePeriodTypeId: json['recurrence_period_type_id'] as int,
      languageId: json['language_id'] as int,
      recurrencePeriodTypeName: json['recurrence_period_type_name'] as String,
      recurrencePeriodTypeDaysCount:
          json['recurrence_period_type_days_count'] as int,
    );

Map<String, dynamic> _$RecurrencePeriodTypesEntityToJson(
        RecurrencePeriodTypesEntity instance) =>
    <String, dynamic>{
      'recurrence_period_type_id': instance.recurrencePeriodTypeId,
      'language_id': instance.languageId,
      'recurrence_period_type_name': instance.recurrencePeriodTypeName,
      'recurrence_period_type_days_count':
          instance.recurrencePeriodTypeDaysCount,
    };
