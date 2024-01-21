import 'package:au2rides/features/download_screen/data/datasources/month_datasource.dart';
import 'package:au2rides/features/download_screen/data/datasources/reminder_types_datasource.dart';
import 'package:au2rides/features/download_screen/domain/repository/reminder_types_repository.dart';
import 'package:injectable/injectable.dart';
@Injectable(as: ReminderTypesRepository)
class ReminderTypesRepositoryImpl extends ReminderTypesRepository {
  final ReminderTypesDataSource _reminderTypesDataSource;

  ReminderTypesRepositoryImpl(this._reminderTypesDataSource);

  @override
  clearReminderTypesFromLocalDB({required String tableName, required languageId}) async {
    final response = await _reminderTypesDataSource.deleteAllReminderInDatabase(
        tableName: tableName,languageId: languageId);
    return response;
  }

  @override
  getReminderTypes({required String lang, required tableDefinitions}) async {
    final response = await _reminderTypesDataSource.getAllReminderTypesFromAPI(
        lang: lang, tableDefinitions: tableDefinitions);
    return response;
  }

  @override
  saveReminderTypesInLocalDatabase({required values,required tableName}) async {
    final response =
        await _reminderTypesDataSource.saveAllReminderTypesInDatabase(values: values,tableName: tableName);
    return response;
  }
}
