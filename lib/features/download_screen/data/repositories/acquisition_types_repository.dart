import 'package:au2rides/features/download_screen/data/datasources/acquisition_types_datasource.dart';
import 'package:au2rides/features/download_screen/domain/repository/acquisition_types_repository.dart';
import 'package:injectable/injectable.dart';
import '../../domain/repository/currency_repository.dart';

@Injectable(as: AcquisitionTypesRepository)
class AcquisitionTypesRepositoryImpl extends AcquisitionTypesRepository {
  final AcquisitionTypesDataSource _acquisitionTypesDataSource;

  AcquisitionTypesRepositoryImpl(this._acquisitionTypesDataSource);

  @override
  clearAcquisitionTypesFromLocalDB({required String tableName, required languageId}) async {
    final response = await _acquisitionTypesDataSource.deleteAllAcquisitionTypesInDatabase(
        tableName: tableName,
        languageId: languageId
    );
    return response;
  }

  @override
  getAcquisitionTypes({required String lang, required tableDefinitions}) async {
    final response =
        await _acquisitionTypesDataSource.getAllAcquisitionTypesFromNetworkDatabase(
        lang: lang, tableDefinitions: tableDefinitions);
    return response;
  }

  @override
  saveAcquisitionTypesInLocalDatabase({required String tableName, required values}) async {
    final response = await _acquisitionTypesDataSource
        .saveAllAcquisitionTypesInDatabase(
        tableName: tableName, values: values);
    return response;
  }
}
