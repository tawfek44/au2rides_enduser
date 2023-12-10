import 'package:au2rides/features/download_screen/data/datasources/acquisition_types_datasource.dart';
import 'package:au2rides/features/download_screen/data/datasources/engine_transmission_types_datasource.dart';
import 'package:au2rides/features/download_screen/domain/repository/acquisition_types_repository.dart';
import 'package:au2rides/features/download_screen/domain/repository/engine_transmission_types_repository.dart';
import 'package:injectable/injectable.dart';
import '../../domain/repository/currency_repository.dart';

@Injectable(as: EngineTransmissionTypesRepository)
class EngineTransmissionTypesRepositoryImpl extends EngineTransmissionTypesRepository {
  final EngineTransmissionTypesDataSource _engineTransmissionTypesDataSource;

  EngineTransmissionTypesRepositoryImpl(this._engineTransmissionTypesDataSource);
  @override
  clearEngineTransmissionTypesFromLocalDB({required String tableName, required languageId}) async {
    final response = await _engineTransmissionTypesDataSource.deleteAllEngineTransmissionTypesInDatabase(
        tableName: tableName,
        languageId: languageId
    );
    return response;
  }
  @override
  getEngineTransmissionTypes({required String lang, required tableDefinitions}) async {
    final response =
        await _engineTransmissionTypesDataSource.getAllEngineTransmissionTypesFromNetworkDatabase(
        lang: lang, tableDefinitions: tableDefinitions);
    return response;
  }
  @override
  saveEngineTransmissionTypesInLocalDatabase({required String tableName, required values}) async {
    final response = await _engineTransmissionTypesDataSource
        .saveAllEngineTransmissionTypesInDatabase(
        tableName: tableName, values: values);
    return response;
  }
}
