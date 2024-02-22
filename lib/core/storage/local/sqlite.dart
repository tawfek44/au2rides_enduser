import 'dart:async';

import 'package:au2rides/core/storage/local/table_names.dart';
import 'package:au2rides/core/storage/tables/engine_transmission_types.dart';
import 'package:au2rides/core/storage/tables/languages.dart';
import 'package:au2rides/core/storage/tables/metric_units_types.dart';
import 'package:au2rides/core/storage/tables/pressure_units.dart';
import 'package:au2rides/core/storage/tables/recurrence_period_types.dart';
import 'package:au2rides/core/storage/tables/reminder_type_service.dart';
import 'package:au2rides/core/storage/tables/reminder_types.dart';
import 'package:au2rides/core/storage/tables/service_types.dart';
import 'package:au2rides/core/storage/tables/tables_definitions.dart';
import 'package:au2rides/core/storage/tables/users.dart';
import 'package:au2rides/core/storage/tables/weather_measuring_units.dart';
import 'package:sqflite/sqflite.dart';

import '../../constants/constants.dart';
import '../tables/acquisition_types.dart';
import '../tables/countries.dart';
import '../tables/currency.dart';
import '../tables/department_service_items.dart';
import '../tables/engine_fuel_types.dart';
import '../tables/fuel_brands.dart';
import '../tables/fuel_consumption_unit_types.dart';
import '../tables/fuel_octane_number.dart';
import '../tables/tire_construction_types.dart';
import '../tables/months.dart';
import '../tables/payment_methods.dart';
import '../tables/ride_types.dart';
import '../tables/services_departments.dart';
import '../tables/user_gender.dart';
import '../tables/workflow_statuses.dart';

class Au2ridesDatabase {
  static final Au2ridesDatabase instance = Au2ridesDatabase._init();
  static Database? _database;

  Au2ridesDatabase._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('au2rides.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = dbPath + filePath;
    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    const idType = "INTEGER PRIMARY KEY";
    const textIdType = "TEXT PRIMARY KEY";
    const intType = "INTEGER NOT NULL";
    const textType = "TEXT NOT NULL";

    const textNullType = "TEXT NULL";

    //Table Definition
    await db.execute('''
    CREATE TABLE ${TableNames.tableDefinitionsTableName} (
    ${TableDefinitionsFields.tableId} $idType,
    ${TableDefinitionsFields.tableName} $textType,
    ${TableDefinitionsFields.languageId} $intType,
    ${TableDefinitionsFields.schemaVersion} $intType,
    ${TableDefinitionsFields.dataVersion} $intType
    )
    ''');
    //Language
    await db.execute('''
    CREATE TABLE ${TableNames.languageTableName} (
    ${LanguageFields.languageId} $idType,
    ${LanguageFields.languageCode} $textType,
    ${LanguageFields.languageName} $textType,
    ${LanguageFields.directionality} $textType,
    ${LanguageFields.isDownloaded} $intType
    )
    ''');

    //Country
    await db.execute('''
    CREATE TABLE ${TableNames.countryTableName} (
    ${CountryFields.countryId} $intType,
    ${CountryFields.languageId} $intType,
    ${CountryFields.countryName} $textType,
    ${CountryFields.countryCode} $textType,
    ${CountryFields.callingCode} $textType,
    ${CountryFields.countryFlagImage} $textType,
    PRIMARY KEY (${CountryFields.countryId}, ${CountryFields.languageId})
    )
    ''');

    //Currency
    await db.execute('''
    CREATE TABLE ${TableNames.currencyTableName} (
    ${CurrencyFields.currencyId} $intType,
    ${CurrencyFields.languageId} $intType,
    ${CurrencyFields.currencyCode} $textType,
    ${CurrencyFields.currencyName} $textType,
    ${CurrencyFields.currencyImageUrl} $textType,
    PRIMARY KEY (${CurrencyFields.currencyId}, ${CurrencyFields.languageId})
    )
    ''');

    //gender
    await db.execute('''
    CREATE TABLE ${TableNames.userGenderTableName} (
    ${GenderFields.genderId} $intType,
    ${GenderFields.languageId} $intType,
    ${GenderFields.genderName} $textType,
    PRIMARY KEY (${GenderFields.genderId}, ${GenderFields.languageId})
    )
    ''');
    //weather_measuring_units;
    await db.execute('''
    CREATE TABLE ${TableNames.weatherMeasuringUnitsTableName} (
    ${WeatherMeasuringUnitsFields.measuringUnitId} $intType,
    ${WeatherMeasuringUnitsFields.languageId} $intType,
    ${WeatherMeasuringUnitsFields.measuringUnitName} $textType,
    ${WeatherMeasuringUnitsFields.measuringUnitCode} $textType,
    PRIMARY KEY (${WeatherMeasuringUnitsFields.measuringUnitId}, ${WeatherMeasuringUnitsFields.languageId})
    )
    ''');
    //ride_types
    await db.execute('''
    CREATE TABLE ${TableNames.rideTypesTableName} (
    ${RideTypesFields.rideTypeId} $intType,
    ${RideTypesFields.languageId} $intType,
    ${RideTypesFields.rideTypeName} $textType,
    ${RideTypesFields.rideTypeLogoUrl} $textNullType,
     PRIMARY KEY (${RideTypesFields.rideTypeId}, ${RideTypesFields.languageId})
    
    )
    ''');
    //payment_methods = 6;
    await db.execute('''
    CREATE TABLE ${TableNames.paymentMethodTableName} (
    ${PaymentMethodsFields.paymentMethodId} $intType,
    ${PaymentMethodsFields.languageId} $intType,
    ${PaymentMethodsFields.allowedCountries} $textNullType,
    ${PaymentMethodsFields.paymentMethodName} $textType,
    ${PaymentMethodsFields.paymentMethodImageUrl} $textType,
    ${PaymentMethodsFields.auPaymentMethodId} $intType,
    PRIMARY KEY (${PaymentMethodsFields.paymentMethodId}, ${PaymentMethodsFields.languageId})
    )
    ''');
    //months
    await db.execute('''
    CREATE TABLE ${TableNames.monthTableName} (
    ${MonthFields.monthId} $intType,
    ${MonthFields.languageId} $intType,
    ${MonthFields.monthName} $textType,
    PRIMARY KEY (${MonthFields.monthId}, ${MonthFields.languageId})
    )
    ''');

    //pressure_units
    await db.execute('''
    CREATE TABLE ${TableNames.pressureUnitsTableName} (
    ${PressureUnitsFields.pressureUnitId} $intType,
    ${PressureUnitsFields.languageId} $intType,
    ${PressureUnitsFields.pressureUnitName} $textType,
    ${PressureUnitsFields.pressureUnitCode} $textType,
    PRIMARY KEY (${PressureUnitsFields.pressureUnitId}, ${PressureUnitsFields.languageId})
    )
    ''');

    //AcquisitionTypes
    await db.execute('''
    CREATE TABLE ${TableNames.acquisitionTypesTableName} (
    ${AcquisitionTypesFields.acquisitionTypeId} $intType,
    ${AcquisitionTypesFields.languageId} $intType,
    ${AcquisitionTypesFields.acquisitionTypeName} $textType,
    PRIMARY KEY (${AcquisitionTypesFields.acquisitionTypeId}, ${AcquisitionTypesFields.languageId})
    )
    ''');

    //metric units
    await db.execute('''
    CREATE TABLE ${TableNames.metricUnitsTableName} (
    ${MetricUnitsFields.metricUnitId} $intType,
    ${MetricUnitsFields.languageId} $intType,
    ${MetricUnitsFields.metricUnitName} $textType,
    ${MetricUnitsFields.metricUnitCode} $textType,
    PRIMARY KEY (${MetricUnitsFields.metricUnitId}, ${MetricUnitsFields.languageId})
    )
    ''');

    //engine_transmission_types
    await db.execute('''
    CREATE TABLE ${TableNames.engineTransmissionTypes} (
    ${EngineTransmissionTypesFields.engineTransmissionTypeId} $intType,
    ${EngineTransmissionTypesFields.languageId} $intType,
    ${EngineTransmissionTypesFields.engineTransmissionTypeName} $textType,
    PRIMARY KEY (${EngineTransmissionTypesFields.engineTransmissionTypeId}, ${EngineTransmissionTypesFields.languageId})
    )
    ''');
    //engine_fuel_types

    await db.execute('''
    CREATE TABLE ${TableNames.engineFuelTypes} (
    ${EngineFuelTypesFields.engineFuelTypeId} $intType,
    ${EngineFuelTypesFields.languageId} $intType,
    ${EngineFuelTypesFields.engineFuelTypeName} $textType,
    PRIMARY KEY (${EngineFuelTypesFields.engineFuelTypeId}, ${EngineFuelTypesFields.languageId})
    )
    ''');

    //reminder_types
    await db.execute('''
    CREATE TABLE ${TableNames.reminderTypesTableName} (
    ${ReminderTypesFields.reminderTypeId} $intType,
    ${ReminderTypesFields.languageId} $intType,
    ${ReminderTypesFields.reminderTypeName} $textType,
    PRIMARY KEY (${ReminderTypesFields.reminderTypeId}, ${ReminderTypesFields.languageId})
    )
    ''');

    //recurrence_period_types
    await db.execute('''
    CREATE TABLE ${TableNames.recurrencePeriodTypesTableName} (
    ${RecurrencePeriodTypesFields.recurrencePeriodTypeId} $intType,
    ${RecurrencePeriodTypesFields.languageId} $intType,
    ${RecurrencePeriodTypesFields.recurrencePeriodTypeName} $textType,
    ${RecurrencePeriodTypesFields.recurrencePeriodTypeDaysCount} $intType,
    PRIMARY KEY (${RecurrencePeriodTypesFields.recurrencePeriodTypeId}, ${RecurrencePeriodTypesFields.languageId})
    )
    ''');
    //reminder_type_service
    await db.execute('''
    CREATE TABLE ${TableNames.reminderTypeServicesTableName} (
    ${ReminderTypeServiceFields.reminderTypeServiceId} $intType,
    ${ReminderTypeServiceFields.languageId} $intType,
    ${ReminderTypeServiceFields.allowedReminderTypes} $textType,
    ${ReminderTypeServiceFields.reminderTypeServiceName} $intType,
    PRIMARY KEY (${ReminderTypeServiceFields.reminderTypeServiceId}, ${ReminderTypeServiceFields.languageId})
    )
    ''');
    //fuel_brands
    await db.execute('''
    CREATE TABLE ${TableNames.fuelBrandsTableName} (
    ${FuelBrandsFields.fuelBrandId} $intType,
    ${FuelBrandsFields.languageId} $intType,
    ${FuelBrandsFields.fuelBrandName} $textType,
    ${FuelBrandsFields.brandImageUrl} $textType,
    ${FuelBrandsFields.auFuelBrandId} $intType,
    PRIMARY KEY (${FuelBrandsFields.fuelBrandId}, ${FuelBrandsFields.languageId})
    )
    ''');
    //fuel_consumption_units_types
    await db.execute('''
    CREATE TABLE ${TableNames.fuelConsumptionUnitTypesTableName} (
    ${FuelConsumptionUnitTypesFields.fuelConsumptionUnitTypeId} $intType,
    ${FuelConsumptionUnitTypesFields.languageId} $intType,
    ${FuelConsumptionUnitTypesFields.fuelConsumptionUnitTypeName} $textType,
    PRIMARY KEY (${FuelConsumptionUnitTypesFields.fuelConsumptionUnitTypeId}, ${FuelConsumptionUnitTypesFields.languageId})
    )
    ''');

    //service_departments
    await db.execute('''
    CREATE TABLE ${TableNames.servicesDepartmentsTableName} (
    ${ServiceDepartmentsFields.serviceDepartmentId} $intType,
    ${ServiceDepartmentsFields.languageId} $intType,
    ${ServiceDepartmentsFields.serviceDepartmentName} $textType,
    PRIMARY KEY (${ServiceDepartmentsFields.serviceDepartmentId}, ${ServiceDepartmentsFields.languageId})
    )
    ''');
    //service_types
    await db.execute('''
    CREATE TABLE ${TableNames.servicesTypesTableName} (
    ${ServiceTypesFields.serviceTypeId} $intType,
    ${ServiceTypesFields.languageId} $intType,
    ${ServiceTypesFields.serviceTypeName} $textType,
    PRIMARY KEY (${ServiceTypesFields.serviceTypeId}, ${ServiceTypesFields.languageId})
    )
    ''');
    //fuel_octane_number
    await db.execute('''
    CREATE TABLE ${TableNames.fuelOctaneNumbersTableName} (
    ${FuelOctaneNumberFields.fuelOctaneNumberId} $intType,
    ${FuelOctaneNumberFields.languageId} $intType,
    ${FuelOctaneNumberFields.fuelOctaneNumber} $textType,
    PRIMARY KEY (${FuelOctaneNumberFields.fuelOctaneNumberId}, ${FuelOctaneNumberFields.languageId})
    )
    ''');

    //department_service_items
    await db.execute('''
    CREATE TABLE ${TableNames.departmentServiceItemsTableName} (
    ${DepartmentServiceItemsFields.departmentServiceItemId} $intType,
    ${DepartmentServiceItemsFields.languageId} $intType,
    ${DepartmentServiceItemsFields.departmentServiceItemName} $textType,
    ${DepartmentServiceItemsFields.serviceTypeId} $textType,
    ${DepartmentServiceItemsFields.serviceDepartmentId} $textType,
    ${DepartmentServiceItemsFields.serviceImageUrl} $textType,
    PRIMARY KEY (${DepartmentServiceItemsFields.departmentServiceItemId}, ${DepartmentServiceItemsFields.languageId})
    )
    ''');

    //tireConstructionTypes
    await db.execute('''
    CREATE TABLE ${TableNames.tireConstructionTypes} (
    ${TireConstructionTypesField.tyreConstructionTypId} $intType,
    ${TireConstructionTypesField.languageId} $intType,
    ${TireConstructionTypesField.tyreConstructionTypeName} $textType,
    ${TireConstructionTypesField.tyreConstructionTypeCode} $textType,
    PRIMARY KEY (${TireConstructionTypesField.tyreConstructionTypId}, ${TireConstructionTypesField.languageId})
    )
    ''');
    //model_generation_specification_keys
    await db.execute('''
    CREATE TABLE ${TableNames.workflowStatusesTableName} (
    ${WorkflowStatusesFields.workflowStatusId} $intType,
    ${WorkflowStatusesFields.languageId} $intType,
    ${WorkflowStatusesFields.workflowStatusName} $textType,
    PRIMARY KEY (${WorkflowStatusesFields.workflowStatusId}, ${WorkflowStatusesFields.languageId})
    )
    ''');

    //users
    await db.execute('''
    CREATE TABLE ${TableNames.usersTableName} (
    ${UsersFields.userId} $textIdType,
    ${UsersFields.firstName} $textType,
    ${UsersFields.lastName} $textType,
    ${UsersFields.emailAddress} $textType,
    ${UsersFields.isVerified} $intType,
    ${UsersFields.profileImageUrl} $textType,
    ${UsersFields.profileQrCode} $textType,
    ${UsersFields.mobileNumber} $textType,
    ${UsersFields.countryId} $textType,
    ${UsersFields.genderId} $textType,
    ${UsersFields.birthDate} $textType
    )
    ''');
  }

  insert({required String tableName, required dynamic values}) async {
    final db = await instance.database;
    return await db.insert(tableName, values);
  }

  Future<int?> getTableCount({required String tableName}) async {
    //database connection
    Database db = await instance.database;
    var x = await db.rawQuery('SELECT COUNT (*) from $tableName');
    int? count = Sqflite.firstIntValue(x);
    return count;
  }

  Future getAllDate({required String tableName}) async {
    Database db = await instance.database;
    var data = await db.query(tableName);
    return data;
  }


  Future getAllDateWithCondition(
      {required String tableName,
      required String where,
      required whereArgs}) async {
    Database db = await instance.database;
    var data = await db.query(tableName, where: where, whereArgs: whereArgs);
    return data;
  }

  Future clearAllData({required String tableName, required languageId}) async {
    Database db = await instance.database;
    var data = await db
        .delete(tableName, where: "language_id = ?", whereArgs: [languageId]);
    return data;
  }

  Future updateData({required String queryText, values}) async {
    Database db = await instance.database;
    var data = await db.rawUpdate('''
    $queryText
    ''', values);
    return data;
  }

  Future closeDB() async {
    final db = await instance.database;
    db.close();
  }
}
