// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reminder_types_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReminderTypesModel _$ReminderTypesModelFromJson(Map<String, dynamic> json) =>
    ReminderTypesModel(
      reminderTypeId: json['reminder_type_id'] as int,
      languageId: json['language_id'] as int,
      reminderTypeName: json['reminder_type_name'] as String,
    );

Map<String, dynamic> _$ReminderTypesModelToJson(ReminderTypesModel instance) =>
    <String, dynamic>{
      'reminder_type_id': instance.reminderTypeId,
      'language_id': instance.languageId,
      'reminder_type_name': instance.reminderTypeName,
    };
