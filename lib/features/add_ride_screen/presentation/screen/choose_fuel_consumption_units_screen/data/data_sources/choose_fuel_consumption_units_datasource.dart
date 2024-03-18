import 'package:au2rides/core/dependancy_injection/injection.dart';
import 'package:au2rides/core/repositories/user_repository.dart';
import 'package:au2rides/core/storage/local/sqlite.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../../core/constants/constants.dart';
import '../../../../../../../core/storage/local/table_names.dart';

abstract class ChooseFuelConsumptionUnitDataSource {
  getFuelConsumptionUnits();
}

@Injectable(as: ChooseFuelConsumptionUnitDataSource)
class ChooseFuelTypeSourceImpl implements ChooseFuelConsumptionUnitDataSource {
  @override
  getFuelConsumptionUnits() async {
    final response = await Au2ridesDatabase.instance.getAllDateWithCondition(
      tableName: TableNames.fuelConsumptionUnitTypesTableName,
      where: 'language_id = ?',whereArgs: [getLanguageId(languageCode: getIt<UserRepository>().userLanguage)],
    );
    return response;
  }
}
