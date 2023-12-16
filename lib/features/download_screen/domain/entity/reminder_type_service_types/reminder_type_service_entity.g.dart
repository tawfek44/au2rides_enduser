// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reminder_type_service_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReminderTypeServiceEntity _$ReminderTypeServiceEntityFromJson(
        Map<String, dynamic> json) =>
    ReminderTypeServiceEntity(
      reminderTypeServiceId: json['reminder_type_service_id'] as int,
      languageId: json['language_id'] as int,
      allowedReminderTypes: const Uint8ListConverter()
          .fromJson(json['allowed_reminder_types'] as List?),
      reminderTypeServiceName: json['reminder_type_service_name'] as String,
    );

Map<String, dynamic> _$ReminderTypeServiceEntityToJson(
        ReminderTypeServiceEntity instance) =>
    <String, dynamic>{
      'reminder_type_service_id': instance.reminderTypeServiceId,
      'language_id': instance.languageId,
      'allowed_reminder_types':
          const Uint8ListConverter().toJson(instance.allowedReminderTypes),
      'reminder_type_service_name': instance.reminderTypeServiceName,
    };
