import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reminder_types_entity.g.dart';

@JsonSerializable()
class ReminderTypesEntity extends Equatable {
  @JsonKey(name: "reminder_type_id")
  final int reminderTypeId;
  @JsonKey(name: "language_id")
  final int languageId;
  @JsonKey(name: "reminder_type_name")
  final String reminderTypeName;

  const ReminderTypesEntity(
      {required this.reminderTypeId,
      required this.languageId,
      required this.reminderTypeName});

  @override
  // TODO: implement props
  List<Object?> get props => [reminderTypeId, languageId, reminderTypeName];
}
