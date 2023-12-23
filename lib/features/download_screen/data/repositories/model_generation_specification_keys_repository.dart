import 'package:au2rides/features/download_screen/data/datasources/model_generation_specification_keys_datasource.dart';
import 'package:injectable/injectable.dart';
import '../../domain/repository/model_generation_specification_keys_repository.dart';

@Injectable(as: ModelGenerationSpecificationKeysRepository)
class ModelGenerationSpecificationKeysRepositoryImpl
    extends ModelGenerationSpecificationKeysRepository {
  final ModelGenerationSpecificationKeysDataSource
      _generationSpecificationKeysDataSource;

  ModelGenerationSpecificationKeysRepositoryImpl(
      this._generationSpecificationKeysDataSource);

  @override
  clearModelGenerationSpecificationKeysFromLocalDB(
      {required String tableName, required languageId}) async {
    final response = await _generationSpecificationKeysDataSource
        .deleteAllModelGenerationSpecificationKeysInDatabase(
            tableName: tableName, languageId: languageId);
    return response;
  }

  @override
  getModelGenerationSpecificationKeys(
      {required String lang, required tableDefinitions}) async {
    final response = await _generationSpecificationKeysDataSource
        .getAllModelGenerationSpecificationKeysFromNetworkDatabase(
            lang: lang, tableDefinitions: tableDefinitions);
    return response;
  }

  @override
  saveModelGenerationSpecificationKeysInLocalDatabase(
      {required String tableName, required values}) async {
    final response = await _generationSpecificationKeysDataSource
        .saveAllModelGenerationSpecificationKeysInDatabase(
            tableName: tableName, values: values);
    return response;
  }
}
