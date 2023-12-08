import 'package:injectable/injectable.dart';

import '../../domain/repository/gender_repository.dart';
import '../datasources/gender_data_source.dart';

@Injectable(as: GenderRepository)
class GenderRepositoryImpl extends GenderRepository {
  final GenderDataSource _genderDataSource;

  GenderRepositoryImpl(this._genderDataSource);

  @override
  Future clearGenderDataInLocalDB(
      {required tableName, required languageId}) async {
    final response = await _genderDataSource.clearAllGenderDataFromLocalDb(
      tableName: tableName,
      languageId: languageId
    );
    return response;
  }

  @override
  downloadGenderDataFromNetworkDB(
      {required tableDefinitions, required appLang}) async {
    final response = await _genderDataSource.downloadAllGenderDataFromNetworkDb(
        tableDefinitions: tableDefinitions, appLang: appLang);
    return response;
  }

  @override
  saveGenderDataInLocalDB({required values, required tableName}) async {
    final response = await _genderDataSource.saveGenderDataInLocalDb(
        tableName: tableName, values: values);
    return response;
  }
}
