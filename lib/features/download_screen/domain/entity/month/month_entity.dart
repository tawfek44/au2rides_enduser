import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'month_entity.g.dart';

@JsonSerializable()
class MonthEntity extends Equatable {
  @JsonKey(name: "month_id")
  final int monthId;
  @JsonKey(name: "language_id")
  final int languageId;
  @JsonKey(name: "month_name")
  final String monthName;

  const MonthEntity(
      {required this.monthId,
      required this.languageId,
      required this.monthName});

  @override
  // TODO: implement props
  List<Object?> get props => [monthId, languageId, monthName];
}
