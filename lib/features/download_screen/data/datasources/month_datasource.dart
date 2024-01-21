import 'package:au2rides/core/storage/local/sqlite.dart';
import 'package:au2rides/core/storage/network/dio_client.dart';
import 'package:au2rides/env.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/constants/constants.dart';

@injectable
class MonthDataSource {
  getAllMonthsFromAPI(
      {required String lang, required tableDefinitions}) async {
    final response = await DioClient().fetchPrimaryData(
        endPoint: downloadPrimaryDataEndPoint,
        lang: lang,
        tableDefinitions: tableDefinitions);
    return response.value;
  }

  saveAllMonthsInDatabase({required dynamic values}) async {
    final response = await Au2ridesDatabase.instance
        .insert(tableName: monthTableName, values: values);
    return response;
  }

  deleteAllMonthsInDatabase({required String tableName,required languageId}) async {
    final response = await Au2ridesDatabase.instance
        .clearAllData(tableName: tableName,languageId: languageId);
    return response;
  }
}
