
import 'package:au2rides/core/storage/local/sqlite.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/storage/network/dio_client.dart';

@injectable
class RideTypesDataSource {
  Future clearAllRideTypesDataFromLocalDb({required tableName,required languageId}) async {
    final response =
        await Au2ridesDatabase.instance.clearAllData(tableName: tableName,languageId: languageId);
    return response;
  }

  Future downloadRideTypesDataFromNetworkDb(
      {required appLang, required tableDefinitions}) async {
   final response = await DioClient().fetchPrimaryData(
       endPoint: downloadPrimaryDataEndPoint,
        lang: appLang,
        tableDefinitions: tableDefinitions);
    return response;
  }

  Future saveRideTypesDataInLocalDb({required values,required tableName}) async {
    final response = await Au2ridesDatabase.instance.insert(tableName: tableName, values: values);

    return response;
  }


}

