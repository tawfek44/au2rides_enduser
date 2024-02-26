import 'package:au2rides/features/download_screen/data/datasources/acquisition_types_datasource.dart';
import 'package:au2rides/features/download_screen/data/datasources/fuel_measuring_units_datasource.dart';
import 'package:injectable/injectable.dart';
import '../../domain/repository/fuel_measuring_units_repository.dart';

@Injectable(as: FuelMeasuringUnitsRepository)
class FuelMeasuringUnitsRepositoryImpl extends FuelMeasuringUnitsRepository {
  final FuelMeasuringUnitsDataSource _fuelMeasuringUnitsDataSource;

  FuelMeasuringUnitsRepositoryImpl(this._fuelMeasuringUnitsDataSource);

  @override
  clearFuelMeasuringUnitsFromLocalDB({required String tableName, required languageId}) async {
    final response = await _fuelMeasuringUnitsDataSource
        .deleteAllFuelMeasuringUnitsInDatabase(
        tableName: tableName,
        languageId: languageId
    );
    return response;
  }

  @override
  getFuelMeasuringUnitsTypes({required String lang, required tableDefinitions}) async {
    final response =
        await _fuelMeasuringUnitsDataSource.getAllFuelMeasuringUnitsFromNetworkDatabase(
        lang: lang, tableDefinitions: tableDefinitions);
    return response;
  }

  @override
  saveFuelMeasuringUnitsInLocalDatabase({required String tableName, required values}) async {
    final response = await _fuelMeasuringUnitsDataSource
        .saveAllFuelMeasuringUnitsInDatabase(
        tableName: tableName, values: values);
    return response;
  }
}
