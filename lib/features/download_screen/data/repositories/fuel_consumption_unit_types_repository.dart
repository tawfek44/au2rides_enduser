import 'package:au2rides/features/download_screen/data/datasources/acquisition_types_datasource.dart';
import 'package:au2rides/features/download_screen/domain/repository/acquisition_types_repository.dart';
import 'package:au2rides/features/download_screen/domain/repository/fuel_consumption_unit_types_repository.dart';
import 'package:injectable/injectable.dart';

import '../datasources/fuel_consumption_unit_types_datasource.dart';

@Injectable(as: FuelConsumptionUnitTypesRepository)
class FuelConsumptionUnitTypesRepositoryImpl extends FuelConsumptionUnitTypesRepository {
  final FuelConsumptionUnitTypesDataSource _consumptionUnitTypesDataSource;

  FuelConsumptionUnitTypesRepositoryImpl(this._consumptionUnitTypesDataSource);

  @override
  clearFuelConsumptionUnitTypesFromLocalDB({required String tableName, required languageId}) async {
    final response = await _consumptionUnitTypesDataSource.deleteAllFuelConsumptionUnitTypesInDatabase(
        tableName: tableName,
        languageId: languageId
    );
    return response;
  }

  @override
  getFuelConsumptionUnitTypes({required String lang, required tableDefinitions}) async {
    final response =
        await _consumptionUnitTypesDataSource.getAllFuelConsumptionUnitTypesFromNetworkDatabase(
        lang: lang, tableDefinitions: tableDefinitions);
    return response;
  }

  @override
  saveFuelConsumptionUnitTypesInLocalDatabase({required String tableName, required values}) async {
    final response = await _consumptionUnitTypesDataSource
        .saveAllFuelConsumptionUnitTypesInDatabase(
        tableName: tableName, values: values);
    return response;
  }
}
