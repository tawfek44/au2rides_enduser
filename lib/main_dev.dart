import 'dart:io';

import 'package:au2rides/core/repositories/user_repository.dart';
import 'package:au2rides/core/storage/tables/languages.dart';
import 'package:au2rides/core/storage/tables/tables_definitions.dart';
import 'package:au2rides/env.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';

import 'core/constants/constants.dart';
import 'core/dependancy_injection/injection.dart';
import 'core/storage/local/sqlite.dart';
import 'main.dart';

late var languageTableCount;
List<String> tableNames = [
  countryTableName,
  currencyTableName,
  userGenderTableName,
  weatherMeasuringUnitsTableName,
  rideTypesTableName,
  paymentMethodTableName,
  monthTableName,
  pressureUnitsTableName,
  acquisitionTypesTableName,
  metricUnitsTableName,
  engineTransmissionTypes,
  engineFuelTypes,
  reminderTypesTableName,
  reminderTypeServicesTableName,
  recurrencePeriodTypesTableName,
  fuelBrandsTableName,
  fuelConsumptionUnitTypesTableName,
  fuelOctaneNumbersTableName,
  servicesDepartmentsTableName,
  servicesTypesTableName,
  departmentServiceItemsTableName,
  modelGenerationSpecificationKeys,
  workflowStatusesTableName
];

Future main() async {
  AppEnvironment.setUpEnv(EnvironmentType.dev);
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
          apiKey: "AIzaSyB6yJxYSASdbAnEmWxQZIOovzsHZUnE46Q",
          appId: "1:814804161658:android:238fee2bf31ab7b72157c3",
          messagingSenderId: "814804161658",
          projectId: "au2rides-enduser",
        ))
      : await Firebase.initializeApp(
          // options: DefaultFirebaseOptions.currentPlatform,
          );
  var token = await FirebaseMessaging.instance.getToken();
  await configureInjection();
  await getIt<UserRepository>().setUserToken(token??"");
  Au2ridesDatabase.instance.database;
  languageTableCount =
      await Au2ridesDatabase.instance.getTableCount(tableName: 'languages');
  if (languageTableCount == 0) {
    getIt<UserRepository>().setSelectedCountry("");
    getIt<UserRepository>().setSelectedCountryIndex(-1);
    getIt<UserRepository>().setSelectedCountryCallingCode("");
    Au2ridesDatabase.instance.insert(
        tableName: 'languages',
        values: Language(
                languageId: 9,
                languageCode: "ar",
                languageName: "العربية",
                directionality: "rtl",
                isDownloaded: false)
            .toJson());
    Au2ridesDatabase.instance.insert(
        tableName: 'languages',
        values: Language(
                languageId: 56,
                languageCode: "en",
                languageName: "English",
                directionality: "ltr",
                isDownloaded: false)
            .toJson());
    insertTableNamesInTablesDefinitions(
        databaseObject: Au2ridesDatabase.instance);
  }
  launchApp();
}

insertTableNamesInTablesDefinitions(
    {required Au2ridesDatabase databaseObject}) {
  for (var i = 0; i < tableNames.length; i++) {
    databaseObject.insert(
        tableName: tableDefinitionsTableName,
        values: TableDefinitions(
                tableId: i + 1,
                tableName: tableNames[i],
                languageId:
                    getIt<UserRepository>().userLanguage == "ar" ? 9 : 56,
                schemaVersion: 1,
                dataVersion: 0)
            .toJson());
  }
}
