import 'package:au2rides/features/download_screen/data/datasources/acquisition_types_datasource.dart';
import 'package:au2rides/features/download_screen/data/datasources/workflow_statuses_datasource.dart';
import 'package:au2rides/features/download_screen/domain/repository/acquisition_types_repository.dart';
import 'package:au2rides/features/download_screen/domain/repository/workflow_statuses_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: WorkflowStatusesRepository)
class WorkflowStatusesRepositoryImpl extends WorkflowStatusesRepository {
  final WorkflowStatusesDataSource _workflowStatusesDataSource;

  WorkflowStatusesRepositoryImpl(this._workflowStatusesDataSource);

  @override
  clearWorkflowStatusesFromLocalDB(
      {required String tableName, required languageId}) async {
    final response =
        await _workflowStatusesDataSource.deleteAllWorkflowStatusesInDatabase(
            tableName: tableName, languageId: languageId);
    return response;
  }

  @override
  getWorkflowStatuses({required String lang, required tableDefinitions}) async {
    final response = await _workflowStatusesDataSource
        .getAllWorkflowStatusesFromNetworkDatabase(
            lang: lang, tableDefinitions: tableDefinitions);
    return response;
  }

  @override
  saveWorkflowStatusesInLocalDatabase(
      {required String tableName, required values}) async {
    final response =
        await _workflowStatusesDataSource.saveAllWorkflowStatusesInDatabase(
            tableName: tableName, values: values);
    return response;
  }
}
