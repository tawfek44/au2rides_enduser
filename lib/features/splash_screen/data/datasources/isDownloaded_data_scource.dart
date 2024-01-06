import 'package:au2rides/core/storage/local/sqlite.dart';
import 'package:au2rides/core/storage/network/dio_client.dart';
import 'package:au2rides/env.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/constants/constants.dart';

@injectable
class IsDownloadedDataSource {
  isDownloaded({required String tableName,required String where,required whereArgs}) async {
    final response =
        await Au2ridesDatabase.instance.getAllDateWithCondition(tableName: tableName, where: where,whereArgs: whereArgs);
    return response;
  }
}
