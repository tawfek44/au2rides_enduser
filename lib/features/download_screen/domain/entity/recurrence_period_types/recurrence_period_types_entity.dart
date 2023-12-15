import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recurrence_period_types_entity.g.dart';

@JsonSerializable()
class RecurrencePeriodTypesEntity extends Equatable {
  @JsonKey(name: "recurrence_period_type_id")
  final int recurrencePeriodTypeId;
  @JsonKey(name: "language_id")
  final int languageId;
  @JsonKey(name: "recurrence_period_type_name")
  final String recurrencePeriodTypeName;
  @JsonKey(name: "recurrence_period_type_days_count")
  final int recurrencePeriodTypeDaysCount;

  const RecurrencePeriodTypesEntity({
    required this.recurrencePeriodTypeId,
    required this.languageId,
    required this.recurrencePeriodTypeName,
    required this.recurrencePeriodTypeDaysCount,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        recurrencePeriodTypeId,
        languageId,
        recurrencePeriodTypeName,
        recurrencePeriodTypeDaysCount
      ];
}
