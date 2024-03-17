import 'package:au2rides/core/storage/local/sqlite.dart';
import 'package:au2rides/core/storage/local/table_names.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../../core/constants/constants.dart';
import '../../../../../../../core/dependancy_injection/injection.dart';
import '../../../../../../../core/repositories/user_repository.dart';

abstract class ChooseFuelUnitsDataSource {
  getFuelUnits();
}

@Injectable(as: ChooseFuelUnitsDataSource)
class ChooseFuelUnitsSourceImpl implements ChooseFuelUnitsDataSource {
  @override
  getFuelUnits() async {
    final response = await Au2ridesDatabase.instance.getAllDateWithCondition(
        tableName: TableNames.fuelMeasuringUnits,
        where: 'language_id = ?',
        whereArgs: [getLanguageId(languageCode: getIt<UserRepository>().userLanguage)]);
    return response;
  }
}
