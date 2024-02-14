import 'package:au2rides/features/download_screen/domain/entity/acquisition_types/acquisition_types_entity.dart';
import 'package:au2rides/features/download_screen/domain/entity/model_generation_specification_keys/model_generation_specification_keys_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'model_generation_specification_keys_model.g.dart';

@JsonSerializable()
class ModelGenerationSpecificationKeysModel
    extends ModelGenerationSpecificationKeysEntity {

  const ModelGenerationSpecificationKeysModel({required super.tyreConstructionTypeId, required super.languageId, required super.tyreConstructionTypeName, required super.tyreConstructionTypeCode});

  factory ModelGenerationSpecificationKeysModel.fromJson(
      final Map<String, dynamic> json) {
    return _$ModelGenerationSpecificationKeysModelFromJson(json);
  }

  Map<String, dynamic> toJson() =>
      _$ModelGenerationSpecificationKeysModelToJson(this);

}
