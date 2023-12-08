import 'package:injectable/injectable.dart';

import '../../domain/repository/ride_types_repository.dart';
import '../datasources/ride_types_data_source.dart';

@Injectable(as: RideTypesRepository)
class RideTypesRepositoryImpl extends RideTypesRepository {
  final RideTypesDataSource _rideTypesDataSource;

  RideTypesRepositoryImpl(this._rideTypesDataSource);

  @override
  clearRideTypesDataInLocalDB({required tableName, required languageId}) async {
    final response =
        await _rideTypesDataSource.clearAllRideTypesDataFromLocalDb(
            tableName: tableName, languageId: languageId);
    return response;
  }

  @override
  downloadRideTypesFromNetworkDB(
      {required tableDefinitions, required appLang}) async {
    final response =
        await _rideTypesDataSource.downloadRideTypesDataFromNetworkDb(
            tableDefinitions: tableDefinitions, appLang: appLang);
    return response;
  }

  @override
  saveRideTypesDataInLocalDB({required values, required tableName}) async {
    final response = await _rideTypesDataSource.saveRideTypesDataInLocalDb(
        values: values, tableName: tableName);
    return response;
  }
}
