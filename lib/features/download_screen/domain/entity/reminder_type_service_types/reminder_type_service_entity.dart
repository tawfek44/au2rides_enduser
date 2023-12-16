import 'dart:typed_data';

import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/resources/list_converter.dart';

part 'reminder_type_service_entity.g.dart';

@JsonSerializable()
class ReminderTypeServiceEntity extends Equatable {
  @JsonKey(name: "reminder_type_service_id")
  final int reminderTypeServiceId;
  @JsonKey(name: "language_id")
  final int languageId;
  @JsonKey(name: "allowed_reminder_types")
  @Uint8ListConverter() Uint8List? allowedReminderTypes;
  @JsonKey(name: "reminder_type_service_name")
  final String reminderTypeServiceName;

   ReminderTypeServiceEntity({
    required this.reminderTypeServiceId,
    required this.languageId,
    required this.allowedReminderTypes,
    required this.reminderTypeServiceName,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        reminderTypeServiceId,
        languageId,
        allowedReminderTypes,
        reminderTypeServiceName
      ];
}
