
abstract class WorkflowStatusesRepository{
  getWorkflowStatuses({required String lang,required tableDefinitions});
  clearWorkflowStatusesFromLocalDB({required String tableName,required languageId});
  saveWorkflowStatusesInLocalDatabase({required String tableName,required dynamic values});
}