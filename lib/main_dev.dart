import 'package:au2rides/core/storage/tables/languages.dart';
import 'package:au2rides/env.dart';
import 'package:flutter/cupertino.dart';

import 'core/dependancy_injection/injection.dart';
import 'core/storage/network/sqlite.dart';
import 'main.dart';

Future main() async {
  AppEnvironment.setUpEnv(Environment.dev);
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection();
  Au2ridesDatabase.instance.database;
  var languageTableCount = await Au2ridesDatabase.instance.getTableCount(tableName: 'language');
  if(languageTableCount==0){
    Au2ridesDatabase.instance.insert(
        tableName: 'language',
        values: Language(
            languageId: 9,
            languageCode: "ar",
            languageName: "العربية",
            directionality: "rtl")
            .toJson());
    Au2ridesDatabase.instance.insert(
        tableName: 'language',
        values: Language(
            languageId: 56,
            languageCode: "en",
            languageName: "English",
            directionality: "ltr")
            .toJson());
  }
  launchApp();
}
