import 'package:au2rides/core/storage/local/sqlite.dart';
import 'package:au2rides/features/language_screen/data/models/language.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/resources/data_state.dart';

@Injectable()
class LanguageLocalDatabase{
  getAllLanguagesFromLocalDatabase() async {
    final localResponse = await Au2ridesDatabase.instance.getAllDate(tableName: "languages");
    return localResponse;
  }
}