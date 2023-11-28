import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_primary_data_body_entity.g.dart';

@JsonSerializable()
class CheckPrimaryDataBodyEntity extends Equatable {
  @JsonKey(name: "table_id")
  final int tableId;
  @JsonKey(name: "table_name")
  final String tableName;
  @JsonKey(name: "language_id")
  final int languageId;
  @JsonKey(name: "schema_version")
  final int schemaVersion;
  @JsonKey(name: "data_version")
  final int dataVersion;

  const CheckPrimaryDataBodyEntity(
      {required this.tableId,
      required this.tableName,
      required this.languageId,
      required this.schemaVersion,
      required this.dataVersion});

  @override
  // TODO: implement props
  List<Object?> get props => [
     tableId,
     tableName,
     languageId,
     schemaVersion,
     dataVersion
      ];
}
