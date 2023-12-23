import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'model_generation_specification_keys_entity.g.dart';

@JsonSerializable()
class ModelGenerationSpecificationKeysEntity extends Equatable {
  @JsonKey(name: "specification_item_id")
  final int specificationItemId;
  @JsonKey(name: "language_id")
  final int languageId;
  @JsonKey(name: "specification_item_name")
  final String specificationItemName;
  @JsonKey(name: "specification_item_image_url")
  final String specificationItemImageUrl;

  const ModelGenerationSpecificationKeysEntity({
    required this.specificationItemId,
    required this.languageId,
    required this.specificationItemName,
    required this.specificationItemImageUrl,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        specificationItemId,
        languageId,
        specificationItemName,
        specificationItemImageUrl
      ];
}
