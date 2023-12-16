import 'package:au2rides/features/download_screen/domain/entity/acquisition_types/acquisition_types_entity.dart';
import 'package:au2rides/features/download_screen/domain/entity/reminder_type_service_types/reminder_type_service_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/resources/list_converter.dart';
import '../../../domain/entity/currency/currency_entity.dart';

part 'reminder_type_service_model.g.dart';

@JsonSerializable()
class ReminderTypeServiceModel extends ReminderTypeServiceEntity {
   ReminderTypeServiceModel(
      {required super.reminderTypeServiceId,
      required super.languageId,
      required super.allowedReminderTypes,
      required super.reminderTypeServiceName});

  factory ReminderTypeServiceModel.fromJson(final Map<String, dynamic> json) {
    return _$ReminderTypeServiceModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ReminderTypeServiceModelToJson(this);
}
