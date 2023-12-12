import 'package:au2rides/features/download_screen/domain/entity/month/month_entity.dart';
import 'package:au2rides/features/download_screen/domain/entity/reminder_types/reminder_types_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'reminder_types_model.g.dart';

@JsonSerializable()
class ReminderTypesModel extends ReminderTypesEntity {
  const ReminderTypesModel(
      {required super.reminderTypeId,
      required super.languageId,
      required super.reminderTypeName});

  factory ReminderTypesModel.fromJson(final Map<String, dynamic> json) {
    return _$ReminderTypesModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ReminderTypesModelToJson(this);
}
