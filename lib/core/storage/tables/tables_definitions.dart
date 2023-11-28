class TableDefinitionsFields {
  static const String tableId = "table_id";
  static const String tableName = "table_name";
  static const String languageId = "language_id";
  static const String schemaVersion = "schema_version";
  static const String dataVersion = "data_version";
}
class TableDefinitions {
  final int tableId ;
  final String tableName ;
  final int languageId ;
  final int schemaVersion;
  final int dataVersion;

  TableDefinitions(
      {required this.tableId,
        required this.tableName,
        required this.languageId,
        required this.schemaVersion,
        required this.dataVersion});

  Map<String, Object> toJson() => {
    TableDefinitionsFields.tableId: tableId,
    TableDefinitionsFields.tableName: tableName,
    TableDefinitionsFields.languageId: languageId,
    TableDefinitionsFields.schemaVersion: schemaVersion,
    TableDefinitionsFields.dataVersion:dataVersion
  };
}
