import 'package:au2rides/core/dependancy_injection/injection.dart';
import 'package:au2rides/core/repositories/user_repository.dart';
import 'package:au2rides/core/storage/local/sqlite.dart';
import 'package:au2rides/core/storage/network/dio_client.dart';
import 'package:au2rides/core/storage/network/end_points.dart';
import 'package:au2rides/env.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../../core/storage/local/table_names.dart';


abstract class ChooseMetricUnitsDataSource {
  getMetricUnits();
}

@Injectable(as: ChooseMetricUnitsDataSource)
class ChooseMetricUnitsSourceImpl implements ChooseMetricUnitsDataSource {
  @override
  getMetricUnits() async {
    final response = await Au2ridesDatabase.instance.getAllDate(tableName: TableNames.metricUnitsTableName);
    return response;
  }
}
