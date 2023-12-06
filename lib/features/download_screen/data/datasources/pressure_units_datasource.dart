import 'package:au2rides/core/storage/local/sqlite.dart';
import 'package:au2rides/core/storage/network/dio_client.dart';
import 'package:au2rides/env.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/constants/constants.dart';

@injectable
class PressureUnitsDataSource {
  getAllPressureUnitsFromAPI(
      {required String lang, required tableDefinitions}) async {
    final response = await DioClient().fetchPrimaryData(
        endPoint: downloadPrimaryDataEndPoint,
        lang: lang,
        tableDefinitions: tableDefinitions);
    return response;
  }
  Future savePressureUnitsDataInLocalDb({required values,required tableName}) async {
    final response = await Au2ridesDatabase.instance.insert(tableName: tableName, values: values);
    return response;
  }

  deleteAllPressureUnitsInDatabase({required String tableName}) async {
    final response = await Au2ridesDatabase.instance
        .clearAllData(tableName: pressureUnitsTableName);
    return response;
  }
}
