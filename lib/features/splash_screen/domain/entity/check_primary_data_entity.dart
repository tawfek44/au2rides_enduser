import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'check_primary_data_entity.g.dart';
@JsonSerializable()
class CheckPrimaryDataEntity extends Equatable {
  @JsonKey(name: "collection_item_id")
  final int collectionItemId;
  @JsonKey(name: "collection_item_schema_version")
  final String collectionItemSchemaVersion;
  @JsonKey(name: "collection_item_name")
  final String collectionItemName;
  @JsonKey(name: "collection_item_data_version")
  final String collectionItemDataVersion;

  const CheckPrimaryDataEntity(
      {required this.collectionItemId,
      required this.collectionItemDataVersion,
      required this.collectionItemSchemaVersion,
      required this.collectionItemName});

  @override
  // TODO: implement props
  List<Object?> get props => [
      collectionItemId,
      collectionItemDataVersion,
      collectionItemSchemaVersion,
      collectionItemName
      ];
}
