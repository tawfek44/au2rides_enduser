class ReminderTypeServiceFields {
  static const String reminderTypeServiceId = "reminder_type_service_id";
  static const String languageId = "language_id";
  static const String allowedReminderTypes = "allowed_reminder_types";
  static const String reminderTypeServiceName = "reminder_type_service_name";
}

class ReminderTypeService {
  final int reminderTypeServiceId;
  final int languageId;
  final String allowedReminderTypes;
  final String reminderTypeServiceName;

  ReminderTypeService({
    required this.reminderTypeServiceId,
    required this.languageId,
    required this.allowedReminderTypes,
    required this.reminderTypeServiceName,
  });

  Map<String, Object> toJson() => {
        ReminderTypeServiceFields.reminderTypeServiceId: reminderTypeServiceId,
        ReminderTypeServiceFields.languageId: languageId,
        ReminderTypeServiceFields.allowedReminderTypes: allowedReminderTypes,
        ReminderTypeServiceFields.reminderTypeServiceName:
            reminderTypeServiceName,
      };
}
