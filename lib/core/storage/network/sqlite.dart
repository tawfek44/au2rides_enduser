import 'dart:async';

import 'package:au2rides/core/storage/tables/languages.dart';
import 'package:sqflite/sqflite.dart';

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
    const idType ="INTEGER PRIMARY KEY AUTOINCREMENT";
    const textType ="TEXT NOT NULL";
    await db.execute('''
    CREATE TABLE $languageTableName (
    ${LanguageFields.languageId} $idType,
    ${LanguageFields.languageCode} $textType,
    ${LanguageFields.languageName} $textType,
    ${LanguageFields.directionality} $textType
    )
    ''');

  }

  Future insert({required String tableName,required Map<String, Object?> values}) async{
    final db = await instance.database;
    await db.insert(tableName, values);
}

  Future<int?> getTableCount({required String tableName}) async {
    //database connection
    Database db = await instance.database;
    var x = await db.rawQuery('SELECT COUNT (*) from $tableName');
        int? count = Sqflite.firstIntValue(x);
    return count;
  }
  Future closeDB() async{
    final db = await instance.database;
    db.close();
  }
}

