import 'dart:async';

import 'package:au2rides/core/storage/tables/languages.dart';
import 'package:au2rides/core/storage/tables/tables_definitions.dart';
import 'package:au2rides/core/storage/tables/weather_measuring_units.dart';
import 'package:sqflite/sqflite.dart';

import '../../constants/constants.dart';
import '../tables/countries.dart';
import '../tables/currency.dart';
import '../tables/months.dart';
import '../tables/payment_methods.dart';
import '../tables/ride_types.dart';
import '../tables/user_gender.dart';

class Au2ridesDatabase{
  static final Au2ridesDatabase instance = Au2ridesDatabase._init();
  static Database? _database;
  Au2ridesDatabase._init();

  Future<Database> get database async{
    if(_database!=null)return _database!;
    _database = await _initDB('au2rides.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async{
    final dbPath = await getDatabasesPath();
    final path = dbPath+filePath;
    return await openDatabase(path,version: 1,onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async{
    const idType ="INTEGER PRIMARY KEY";
    const intType = "INTEGER NOT NULL";
    const textType ="TEXT NOT NULL";
    const textNullType ="TEXT NULL";

    //Table Definition
    await db.execute('''
    CREATE TABLE $tableDefinitionsTableName (
    ${TableDefinitionsFields.tableId} $idType,
    ${TableDefinitionsFields.tableName} $textType,
    ${TableDefinitionsFields.languageId} $intType,
    ${TableDefinitionsFields.schemaVersion} $intType,
    ${TableDefinitionsFields.dataVersion} $intType
    )
    ''');

    //Language
    await db.execute('''
    CREATE TABLE $languageTableName (
    ${LanguageFields.languageId} $idType,
    ${LanguageFields.languageCode} $textType,
    ${LanguageFields.languageName} $textType,
    ${LanguageFields.directionality} $textType,
    ${LanguageFields.isDownloaded} $intType
    )
    ''');

    //Country
    await db.execute('''
    CREATE TABLE $countryTableName (
    ${CountryFields.countryId} $idType,
    ${CountryFields.countryName} $textType,
    ${CountryFields.countryCode} $textType,
    ${CountryFields.callingCode} $textType,
    ${CountryFields.countryFlagImage} $textType
    )
    ''');

    //Currency
    await db.execute('''
    CREATE TABLE $currencyTableName (
    ${CurrencyFields.currencyId} $idType,
    ${CurrencyFields.currencyCode} $textType,
    ${CurrencyFields.currencyName} $textType,
    ${CurrencyFields.currencyImageUrl} $textType
    )
    ''');

    //gender
    await db.execute('''
    CREATE TABLE $userGenderTableName (
    ${GenderFields.genderId} $idType,
    ${GenderFields.languageId} $intType,
    ${GenderFields.genderName} $textType
    )
    ''');
    //weather_measuring_units;
    await db.execute('''
    CREATE TABLE $weatherMeasuringUnitsTableName (
    ${WeatherMeasuringUnitsFields.measuringUnitId} $idType,
    ${WeatherMeasuringUnitsFields.languageId} $intType,
    ${WeatherMeasuringUnitsFields.measuringUnitName} $textType,
    ${WeatherMeasuringUnitsFields.measuringUnitCode} $textType
    )
    ''');
    //ride_types
    await db.execute('''
    CREATE TABLE $rideTypesTableName (
    ${RideTypesFields.rideTypeId} $idType,
    ${RideTypesFields.languageId} $intType,
    ${RideTypesFields.rideTypeName} $textType,
    ${RideTypesFields.rideTypeLogoUrl} $textType
    )
    ''');
    //payment_methods = 6;
    await db.execute('''
    CREATE TABLE $paymentMethodTableName (
    ${PaymentMethodsFields.paymentMethodId} $idType,
    ${PaymentMethodsFields.languageId} $intType,
    ${PaymentMethodsFields.allowedCountries} $textNullType,
    ${PaymentMethodsFields.paymentMethodName} $textType,
    ${PaymentMethodsFields.paymentMethodImageUrl} $textType,
    ${PaymentMethodsFields.auPaymentMethodId} $intType
    )
    ''');
    //months
    await db.execute('''
    CREATE TABLE $monthTableName (
    ${MonthFields.monthId} $idType,
    ${MonthFields.languageId} $intType,
    ${MonthFields.monthName} $textType
    )
    ''');
  }

   insert({required String tableName,required dynamic values}) async{
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

  Future getLanguagesIsDownloaded({required String tableName,required String where,required whereArgs}) async {
  Database db = await instance.database;
  var data = await db.query(tableName,where:where,whereArgs: whereArgs);
  return data;
}
Future clearAllData({required String tableName}) async {
  Database db = await instance.database;
  var data = await db.delete(tableName);
  return data;
}
Future updateData({required String queryText, values}) async {
  Database db = await instance.database;
  var data = await db.rawUpdate('''
    $queryText
    ''',values);
  return data;
}
  Future closeDB() async{
    final db = await instance.database;
    db.close();
  }
}

