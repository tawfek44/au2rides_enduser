import 'package:au2rides/features/download_screen/data/datasources/acquisition_types_datasource.dart';
import 'package:au2rides/features/download_screen/data/datasources/fuel_octane_number_datasource.dart';
import 'package:au2rides/features/download_screen/domain/repository/acquisition_types_repository.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repository/fuel_octane_number_repository.dart';

@Injectable(as: FuelOctaneNumberRepository)
class FuelOctaneNumberRepositoryImpl extends FuelOctaneNumberRepository {
  final FuelOctaneNumberDataSource _fuelOctaneNumberDataSource;

  FuelOctaneNumberRepositoryImpl(this._fuelOctaneNumberDataSource);

  @override
  clearFuelOctaneNumberFromLocalDB({required String tableName, required languageId}) async {
    final response = await _fuelOctaneNumberDataSource.deleteAllFuelOctaneNumberInDatabase(
        tableName: tableName,
        languageId: languageId
    );
    return response;
  }

  @override
  getFuelOctaneNumber({required String lang, required tableDefinitions}) async {
    final response =
        await _fuelOctaneNumberDataSource.getAllFuelOctaneNumberFromNetworkDatabase(
        lang: lang, tableDefinitions: tableDefinitions);
    return response;
  }

  @override
  saveFuelOctaneNumberInLocalDatabase({required String tableName, required values}) async {
    final response = await _fuelOctaneNumberDataSource
        .saveAllFuelOctaneNumberInDatabase(
        tableName: tableName, values: values);
    return response;
  }
}
