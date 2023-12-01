import 'package:au2rides/core/constants/constants.dart';
import 'package:au2rides/core/storage/local/sqlite.dart';
import 'package:au2rides/core/storage/network/dio_client.dart';
import 'package:injectable/injectable.dart';

@injectable
class GenderDataSource {
  Future clearAllGenderDataFromLocalDb({required tableName}) async {
    final response =
        await Au2ridesDatabase.instance.clearAllData(tableName: tableName);
    return response;
  }

  Future downloadAllGenderDataFromNetworkDb(
      {required appLang, required tableDefinitions}) async {
    final response = await DioClient().fetchPrimaryData(
        endPoint: downloadPrimaryDataEndPoint,
        lang: appLang,
        tableDefinitions: tableDefinitions);
    return response;
  }
}
