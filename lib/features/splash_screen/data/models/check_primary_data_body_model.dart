import 'package:au2rides/features/splash_screen/domain/entity/check_primary_data_body_entity.dart';
import 'package:au2rides/features/splash_screen/domain/entity/check_primary_data_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'check_primary_data_body_model.g.dart';

@JsonSerializable()
class CheckPrimaryDataBodyModel extends CheckPrimaryDataBodyEntity{
  const CheckPrimaryDataBodyModel({required super.tableId, required super.tableName, required super.languageId, required super.schemaVersion, required super.dataVersion});

  factory CheckPrimaryDataBodyModel.fromJson(final Map<String, dynamic> json) {
    return _$CheckPrimaryDataBodyModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CheckPrimaryDataBodyModelToJson(this);

}