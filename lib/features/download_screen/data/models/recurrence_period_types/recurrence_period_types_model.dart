import 'package:au2rides/features/download_screen/domain/entity/acquisition_types/acquisition_types_entity.dart';
import 'package:au2rides/features/download_screen/domain/entity/recurrence_period_types/recurrence_period_types_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recurrence_period_types_model.g.dart';

@JsonSerializable()
class RecurrencePeriodTypesModel extends RecurrencePeriodTypesEntity {

  const RecurrencePeriodTypesModel({required super.recurrencePeriodTypeId, required super.languageId, required super.recurrencePeriodTypeName, required super.recurrencePeriodTypeDaysCount});

  factory RecurrencePeriodTypesModel.fromJson(final Map<String, dynamic> json) {
    return _$RecurrencePeriodTypesModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RecurrencePeriodTypesModelToJson(this);

}
