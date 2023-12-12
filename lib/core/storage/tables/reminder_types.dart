class ReminderTypesFields {
  static const String reminderTypeId = "reminder_type_id";
  static const String languageId = "language_id";
  static const String reminderTypeName = "reminder_type_name";
}
class ReminderTypes {
  final int reminderTypeId ;
  final int languageId ;
  final String reminderTypeName ;


  ReminderTypes({required this.reminderTypeId, required this.languageId, required this.reminderTypeName});

  Map<String, Object> toJson() => {
    ReminderTypesFields.reminderTypeId: reminderTypeId,
    ReminderTypesFields.languageId: languageId,
    ReminderTypesFields.reminderTypeName: reminderTypeName,
  };
}
