import 'package:au2rides/core/storage/tables/pressure_units.dart';
import 'package:au2rides/features/download_screen/data/datasources/pressure_units_datasource.dart';
import 'package:au2rides/features/download_screen/domain/repository/pressure_units_repository.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repository/gender_repository.dart';
import '../datasources/gender_data_source.dart';

@Injectable(as: PressureUnitsRepository)
class PressureUnitsRepositoryImpl extends PressureUnitsRepository {
  final PressureUnitsDataSource _pressureUnitsDataSource;

  PressureUnitsRepositoryImpl(this._pressureUnitsDataSource);

  @override
  clearPressureUnitsDataInLocalDB({required tableName,required languageId}) async {
    final response = await _pressureUnitsDataSource
        .deleteAllPressureUnitsInDatabase(tableName: tableName,languageId: languageId);
    return response;
  }

  @override
  downloadPressureUnitsDataFromNetworkDB(
      {required tableDefinitions, required appLang}) async {
    final response = await _pressureUnitsDataSource.getAllPressureUnitsFromAPI(
        tableDefinitions: tableDefinitions, lang: appLang);
    return response;
  }

  @override
  savePressureUnitsDataInLocalDB({required values, required tableName}) async {
    final response = await _pressureUnitsDataSource
        .savePressureUnitsDataInLocalDb(tableName: tableName, values: values);
    return response;
  }
}
