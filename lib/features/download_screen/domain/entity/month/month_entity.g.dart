// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'month_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MonthEntity _$MonthEntityFromJson(Map<String, dynamic> json) => MonthEntity(
      monthId: json['month_id'] as int,
      languageId: json['language_id'] as int,
      monthName: json['month_name'] as String,
    );

Map<String, dynamic> _$MonthEntityToJson(MonthEntity instance) =>
    <String, dynamic>{
      'month_id': instance.monthId,
      'language_id': instance.languageId,
      'month_name': instance.monthName,
    };
