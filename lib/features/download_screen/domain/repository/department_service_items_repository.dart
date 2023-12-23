
abstract class DepartmentServiceItemsRepository{
  getDepartmentServiceItems({required String lang,required tableDefinitions});
  clearDepartmentServiceItemsFromLocalDB({required String tableName,required languageId});
  saveDepartmentServiceItemsInLocalDatabase({required String tableName,required dynamic values});
}