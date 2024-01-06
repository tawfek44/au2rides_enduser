import 'package:au2rides/core/storage/local/sqlite.dart';
import 'package:au2rides/core/storage/network/dio_client.dart';
import 'package:au2rides/env.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/constants/constants.dart';

@injectable
class GetCountriesDataSource {
  getCountriesFromDatabase(
      {required String tableName, required where,required whereArgs}) async {
    final response = await Au2ridesDatabase.instance.getAllDateWithCondition(
        tableName: tableName, where: where, whereArgs: whereArgs);
    return response;
  }
}
