import 'dart:async';

import 'package:au2rides/core/storage/tables/languages.dart';
import 'package:au2rides/core/storage/tables/tables_definitions.dart';
import 'package:sqflite/sqflite.dart';

import '../../constants/constants.dart';
import '../tables/countries.dart';
import '../tables/currency.dart';

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
    const boolType ="BOOLEAN NOT NULL";

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
    ${LanguageFields.isDownloaded} $boolType
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
    ${CurrencyFields.languageId} $intType,
    ${CurrencyFields.currencyCode} $textType,
    ${CurrencyFields.currencyName} $textType,
    ${CurrencyFields.currencyImageUrl} $textType
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

  Future getLanguagesIsDownloaded({required String tableName,required String where}) async {
  Database db = await instance.database;
  var data = await db.query(tableName,where:where );
  return data;
}
  Future closeDB() async{
    final db = await instance.database;
    db.close();
  }
}
