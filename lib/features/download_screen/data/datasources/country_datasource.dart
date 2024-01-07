import 'package:au2rides/core/storage/local/sqlite.dart';
import 'package:au2rides/core/storage/network/dio_client.dart';
import 'package:au2rides/env.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/constants/constants.dart';

@injectable
class CountryDataSource {
  getAllCountriesFromAPI(
      {required  lang, required tableDefinitions}) async {
    final response = await DioClient().fetchPrimaryData(
        endPoint: downloadPrimaryDataEndPoint,
        lang: lang,
        tableDefinitions: tableDefinitions);
    return response;
  }

  saveAllCountriesInDatabase({required dynamic values}) async {
    final response = await Au2ridesDatabase.instance.insert(tableName: countryTableName, values: values);
    return response;
  }

  deleteAllCountriesInDatabase({required String tableName,required languageId}) async {
    final response = await Au2ridesDatabase.instance
        .clearAllData(tableName: countryTableName,languageId: languageId);
    return response;
  }
}
