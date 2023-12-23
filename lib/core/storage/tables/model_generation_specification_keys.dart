class ModelGenerationSpecificationKeysFields {
  static const String specificationItemId = "specification_item_id";
  static const String languageId = "language_id";
  static const String specificationItemName = "specification_item_name";
  static const String specificationItemImageUrl =
      "specification_item_image_url";
}

class ModelGenerationSpecificationKeys {
  final int specificationItemId;
  final int languageId;
  final String specificationItemName;
  final String specificationItemImageUrl;

  ModelGenerationSpecificationKeys({
    required this.specificationItemId,
    required this.languageId,
    required this.specificationItemName,
    required this.specificationItemImageUrl,
  });

  Map<String, Object> toJson() => {
        ModelGenerationSpecificationKeysFields.specificationItemId:
            specificationItemId,
        ModelGenerationSpecificationKeysFields.languageId: languageId,
        ModelGenerationSpecificationKeysFields.specificationItemName:
            specificationItemName,
        ModelGenerationSpecificationKeysFields.specificationItemImageUrl:
            specificationItemImageUrl,
      };
}
