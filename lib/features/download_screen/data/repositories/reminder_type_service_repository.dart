import 'package:au2rides/features/download_screen/data/datasources/acquisition_types_datasource.dart';
import 'package:au2rides/features/download_screen/data/datasources/reminder_type_service_datasource.dart';
import 'package:au2rides/features/download_screen/domain/repository/acquisition_types_repository.dart';
import 'package:au2rides/features/download_screen/domain/repository/reminder_type_service_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ReminderTypeServiceRepository)
class ReminderTypeServiceRepositoryImpl extends ReminderTypeServiceRepository {
  final ReminderTypeServiceDataSource _reminderTypeServiceDataSource;
  ReminderTypeServiceRepositoryImpl(this._reminderTypeServiceDataSource);
  @override
  clearReminderTypeServiceFromLocalDB(
      {required String tableName, required languageId}) async {
    final response = await _reminderTypeServiceDataSource
        .deleteAllReminderTypeServiceInDatabase(
            tableName: tableName, languageId: languageId);
    return response;
  }

  @override
  getReminderTypeServiceTypes(
      {required String lang, required tableDefinitions}) async {
    final response = await _reminderTypeServiceDataSource
        .getAllReminderTypeServiceFromNetworkDatabase(
            lang: lang, tableDefinitions: tableDefinitions);
    return response;
  }

  @override
  saveReminderTypeServiceInLocalDatabase(
      {required String tableName, required values}) async {
    final response = await _reminderTypeServiceDataSource
        .saveAllReminderTypeServiceInDatabase(
            tableName: tableName, values: values);
    return response;
  }
}
