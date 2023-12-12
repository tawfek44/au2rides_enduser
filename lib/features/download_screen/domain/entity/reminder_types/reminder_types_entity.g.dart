// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reminder_types_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReminderTypesEntity _$ReminderTypesEntityFromJson(Map<String, dynamic> json) =>
    ReminderTypesEntity(
      reminderTypeId: json['reminder_type_id'] as int,
      languageId: json['language_id'] as int,
      reminderTypeName: json['reminder_type_name'] as String,
    );

Map<String, dynamic> _$ReminderTypesEntityToJson(
        ReminderTypesEntity instance) =>
    <String, dynamic>{
      'reminder_type_id': instance.reminderTypeId,
      'language_id': instance.languageId,
      'reminder_type_name': instance.reminderTypeName,
    };
