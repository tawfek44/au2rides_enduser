import 'package:au2rides/features/download_screen/data/datasources/acquisition_types_datasource.dart';
import 'package:au2rides/features/download_screen/data/datasources/reccurence_period_types_datasource.dart';
import 'package:au2rides/features/download_screen/domain/repository/acquisition_types_repository.dart';
import 'package:au2rides/features/download_screen/domain/repository/recurrence_period_types_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: RecurrencePeriodTypesRepository)
class RecurrencePeriodTypesRepositoryImpl
    extends RecurrencePeriodTypesRepository {
  final RecurrencePeriodTypesDataSource _recurrencePeriodTypesDataSource;
  RecurrencePeriodTypesRepositoryImpl(this._recurrencePeriodTypesDataSource);
  @override
  clearRecurrencePeriodTypesFromLocalDB(
      {required String tableName, required languageId}) async {
    final response = await _recurrencePeriodTypesDataSource
        .deleteAllRecurrencePeriodTypesInDatabase(
            tableName: tableName, languageId: languageId);
    return response;
  }

  @override
  getRecurrencePeriodTypes(
      {required String lang, required tableDefinitions}) async {
    final response = await _recurrencePeriodTypesDataSource
        .getAllRecurrencePeriodTypesFromNetworkDatabase(
            lang: lang, tableDefinitions: tableDefinitions);
    return response;
  }

  @override
  saveRecurrencePeriodTypesInLocalDatabase(
      {required String tableName, required values}) async {
    final response = await _recurrencePeriodTypesDataSource
        .saveAllRecurrencePeriodTypesInDatabase(
            tableName: tableName, values: values);
    return response;
  }
}
