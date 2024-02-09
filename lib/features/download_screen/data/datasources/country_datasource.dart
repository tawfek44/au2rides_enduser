import 'package:au2rides/core/storage/local/sqlite.dart';
import 'package:au2rides/core/storage/network/dio_client.dart';
import 'package:au2rides/env.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/storage/local/table_names.dart';
import '../../../../core/storage/network/end_points.dart';

@injectable
class CountryDataSource {
  getAllCountriesFromAPI(
      {required  lang, required tableDefinitions}) async {
    final response = await DioClient().fetchPrimaryData(
        endPoint: EndPoints.downloadPrimaryDataEndPoint,
        lang: lang,
        tableDefinitions: tableDefinitions);
    return response.value;
  }

  saveAllCountriesInDatabase({required dynamic values}) async {
    final response = await Au2ridesDatabase.instance.insert(tableName: TableNames.countryTableName, values: values);
    return response;
  }

  deleteAllCountriesInDatabase({required String tableName,required languageId}) async {
    final response = await Au2ridesDatabase.instance
        .clearAllData(tableName: TableNames.countryTableName,languageId: languageId);
    return response;
  }
}
