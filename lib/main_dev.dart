import 'dart:io';
import 'package:au2rides/core/repositories/user_repository.dart';
import 'package:au2rides/core/storage/tables/languages.dart';
import 'package:au2rides/env.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'core/dependancy_injection/injection.dart';
import 'core/notification_manager/push_notification_manager.dart';
import 'core/storage/local/sqlite.dart';
import 'core/storage/local/table_names.dart';
import 'main.dart';

late var languageTableCount;
List<String> tableNames = [
  TableNames.countryTableName,
  TableNames.currencyTableName,
  TableNames.userGenderTableName,
  TableNames.weatherMeasuringUnitsTableName,
  TableNames.rideTypesTableName,
  TableNames.paymentMethodTableName,
  TableNames.monthTableName,
  TableNames.pressureUnitsTableName,
  TableNames.acquisitionTypesTableName,
  TableNames.metricUnitsTableName,
  TableNames.engineTransmissionTypes,
  TableNames.engineFuelTypes,
  TableNames.reminderTypesTableName,
  TableNames.reminderTypeServicesTableName,
  TableNames.recurrencePeriodTypesTableName,
  TableNames.fuelBrandsTableName,
  TableNames.fuelConsumptionUnitTypesTableName,
  TableNames.fuelOctaneNumbersTableName,
  TableNames.servicesDepartmentsTableName,
  TableNames.servicesTypesTableName,
  TableNames.departmentServiceItemsTableName,
  TableNames.tireConstructionTypes,
  TableNames.workflowStatusesTableName
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
  FirebaseNotifications().setUpFirebase();
  await configureInjection();
  Au2ridesDatabase.instance.database;
  languageTableCount =
      await Au2ridesDatabase.instance.getTableCount(tableName: TableNames.languageTableName);
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

  }
  launchApp();
}

