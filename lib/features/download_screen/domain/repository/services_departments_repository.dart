abstract class ServicesDepartmentsRepository {
  getServicesDepartments({required String lang, required tableDefinitions});

  clearServicesDepartmentsFromLocalDB(
      {required String tableName, required languageId});

  saveServicesDepartmentsInLocalDatabase(
      {required String tableName, required dynamic values});
}
