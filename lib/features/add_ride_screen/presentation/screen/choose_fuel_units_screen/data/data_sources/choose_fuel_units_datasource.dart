
import 'package:au2rides/core/storage/local/sqlite.dart';
import 'package:au2rides/core/storage/local/table_names.dart';
import 'package:injectable/injectable.dart';


abstract class ChooseFuelUnitsDataSource {
  getFuelUnits();
}

@Injectable(as: ChooseFuelUnitsDataSource)
class ChooseFuelUnitsSourceImpl implements ChooseFuelUnitsDataSource {
  @override
  getFuelUnits() async {
    final response = await Au2ridesDatabase.instance.getAllDate(tableName: TableNames.fuelMeasuringUnits);
    return response;
  }
}
