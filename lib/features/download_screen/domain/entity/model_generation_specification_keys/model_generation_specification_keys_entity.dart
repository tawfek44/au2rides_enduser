import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'model_generation_specification_keys_entity.g.dart';

@JsonSerializable()
class ModelGenerationSpecificationKeysEntity extends Equatable {
  @JsonKey(name: "tire_construction_type_id")
  final int tyreConstructionTypeId;
  @JsonKey(name: "language_id")
  final int languageId;
  @JsonKey(name: "tire_construction_type_name")
  final String tyreConstructionTypeName;
  @JsonKey(name: "tire_construction_type_code")
  final String tyreConstructionTypeCode;

  const ModelGenerationSpecificationKeysEntity({
    required this.tyreConstructionTypeId,
    required this.languageId,
    required this.tyreConstructionTypeName,
    required this.tyreConstructionTypeCode,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        tyreConstructionTypeId,
        languageId,
        tyreConstructionTypeName,
        tyreConstructionTypeCode
      ];
}
