import 'package:au2rides/features/download_screen/data/datasources/acquisition_types_datasource.dart';
import 'package:au2rides/features/download_screen/data/datasources/engine_fuel_types_datasource.dart';
import 'package:au2rides/features/download_screen/data/datasources/engine_transmission_types_datasource.dart';
import 'package:au2rides/features/download_screen/domain/repository/acquisition_types_repository.dart';
import 'package:au2rides/features/download_screen/domain/repository/engine_transmission_types_repository.dart';
import 'package:injectable/injectable.dart';
import '../../domain/repository/currency_repository.dart';
import '../../domain/repository/engine_fuel_types_repository.dart';

@Injectable(as: EngineFuelTypesRepository)
class EngineFuelTypesRepositoryImpl extends EngineFuelTypesRepository {
  final EngineFuelTypesDataSource _engineFuelTypesDataSource;

  EngineFuelTypesRepositoryImpl(this._engineFuelTypesDataSource);

  @override
  clearEngineFuelTypesFromLocalDB({required String tableName, required languageId}) async {
    final response = await _engineFuelTypesDataSource.deleteAllEngineFuelTypesInDatabase(
        tableName: tableName,
        languageId: languageId
    );
    return response;
  }

  @override
  getEngineFuelTypes({required String lang, required tableDefinitions}) async {
    final response =
        await _engineFuelTypesDataSource.getAllEngineFuelTypesFromNetworkDatabase(
        lang: lang, tableDefinitions: tableDefinitions);
    return response;
  }

  @override
  saveEngineFuelTypesInLocalDatabase({required String tableName, required values}) async {
    final response = await _engineFuelTypesDataSource
        .saveAllEngineFuelTypesInDatabase(
        tableName: tableName, values: values);
    return response;
  }
}
