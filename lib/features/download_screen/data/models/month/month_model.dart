import 'package:au2rides/features/download_screen/domain/entity/month/month_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entity/country/country_entity.dart';
part 'month_model.g.dart';
@JsonSerializable()
class MonthModel extends MonthEntity{

  const MonthModel({required super.monthId, required super.languageId, required super.monthName});

  factory MonthModel.fromJson(final Map<String, dynamic> json) {
    return _$MonthModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MonthModelToJson(this);

}