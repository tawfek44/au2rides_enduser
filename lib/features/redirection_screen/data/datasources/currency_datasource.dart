import 'package:au2rides/core/storage/local/sqlite.dart';
import 'package:au2rides/core/storage/network/dio_client.dart';
import 'package:au2rides/env.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/constants/constants.dart';

@injectable
class CurrencyDataSource{
   deleteAllCurrencyInDatabase({required String tableName}) async {
     final response = await Au2ridesDatabase.instance.clearAllData(tableName: tableName);
     return response;
   }
   getAllCurrencyFromNetworkDatabase({required String lang}) async {
     final response = await DioClient().fetchData(endPoint: allCurrenciesEndPoint, lang: lang);
     return response;
   }

}