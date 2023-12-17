import 'package:au2rides/features/download_screen/data/datasources/acquisition_types_datasource.dart';
import 'package:au2rides/features/download_screen/data/datasources/fuel_brands_datasource.dart';
import 'package:au2rides/features/download_screen/domain/repository/acquisition_types_repository.dart';
import 'package:au2rides/features/download_screen/domain/repository/fuel_brands_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: FuelBrandsRepository)
class FuelBrandsRepositoryImpl extends FuelBrandsRepository {
  final FuelBrandsDataSource _fuelBrandsDataSource;

  FuelBrandsRepositoryImpl(this._fuelBrandsDataSource);
  @override
  clearFuelBrandsFromLocalDB(
      {required String tableName, required languageId}) async {
    final response = await _fuelBrandsDataSource.deleteAllFuelBrandsInDatabase(
        tableName: tableName, languageId: languageId);
    return response;
  }

  @override
  getFuelBrands({required String lang, required tableDefinitions}) async {
    final response =
        await _fuelBrandsDataSource.getAllFuelBrandsFromNetworkDatabase(
            lang: lang, tableDefinitions: tableDefinitions);
    return response;
  }

  @override
  saveFuelBrandsInLocalDatabase(
      {required String tableName, required values}) async {
    final response = await _fuelBrandsDataSource.saveAllFuelBrandsInDatabase(
        tableName: tableName, values: values);
    return response;
  }
}
