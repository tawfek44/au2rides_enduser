import 'package:au2rides/features/splash_screen/domain/entity/check_primary_data_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'check_primary_data_model.g.dart';

@JsonSerializable()
class CheckPrimaryDataModel extends CheckPrimaryDataEntity{
  const CheckPrimaryDataModel({required super.collectionItemId, required super.collectionItemDataVersion, required super.collectionItemSchemaVersion, required super.collectionItemName});
  factory CheckPrimaryDataModel.fromJson(final Map<String, dynamic> json) {
    return _$CheckPrimaryDataModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CheckPrimaryDataModelToJson(this);
}