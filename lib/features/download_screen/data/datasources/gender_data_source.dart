import 'package:au2rides/core/constants/constants.dart';
import 'package:au2rides/core/storage/local/sqlite.dart';
import 'package:au2rides/core/storage/network/dio_client.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/storage/network/end_points.dart';

@injectable
class GenderDataSource {
  Future clearAllGenderDataFromLocalDb({required tableName,required languageId}) async {
    final response =
        await Au2ridesDatabase.instance.clearAllData(tableName: tableName,languageId: languageId);
    return response;
  }

  Future downloadAllGenderDataFromNetworkDb(
      {required appLang, required tableDefinitions}) async {
    final response = await DioClient().fetchPrimaryData(
        endPoint: EndPoints.downloadPrimaryDataEndPoint,
        lang: appLang,
        tableDefinitions: tableDefinitions);
    return response.value;
  }
  Future saveGenderDataInLocalDb({required values,required tableName}) async {
    final response = await Au2ridesDatabase.instance.insert(tableName: tableName, values: values);
    return response;

  }
}
