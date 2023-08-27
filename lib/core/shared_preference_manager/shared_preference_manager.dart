import 'package:injectable/injectable.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:shared_preferences/shared_preferences.dart';

abstract class IPrefsManager {
  // ignore: avoid_positional_boolean_parameters
  Future<bool> setBool(String key, bool value);
  bool? getBool(String key);

  Future<bool> setString(String key, String value);
  String? getString(String key);

  Future<bool> setInt(String key, int value);
  int? getInt(String key);

  Future<bool> setDouble(String key, double value);
  double? getDouble(String key);

  Future<bool> remove(String key);

  Future<bool> clear();
}

@preResolve
@Named('prefs')
@Injectable(as: IPrefsManager)
class PrefsManager extends IPrefsManager {
  PrefsManager._(this._prefs);

  @factoryMethod
  static Future<IPrefsManager> create() async =>
      PrefsManager._(await SharedPreferences.getInstance());

  final SharedPreferences _prefs;

  @override
  bool? getBool(String key) => _prefs.getBool(key);

  @override
  String? getString(String key) => _prefs.getString(key);

  @override
  int? getInt(String key) => _prefs.getInt(key);

  @override
  double? getDouble(String key) => _prefs.getDouble(key);

  @override
  Future<bool> setBool(String key, bool value) => _prefs.setBool(key, value);

  @override
  Future<bool> setString(String key, String value) =>
      _prefs.setString(key, value);

  @override
  Future<bool> setInt(String key, int value) => _prefs.setInt(key, value);

  @override
  Future<bool> setDouble(String key, double value) =>
      _prefs.setDouble(key, value);

  @override
  Future<bool> remove(String key) async {
    final success = await _prefs.remove(key);
    return Future.value(success);
  }

  @override
  Future<bool> clear() => _prefs.clear();
}

class InMemoryPrefsManager extends IPrefsManager {
  InMemoryPrefsManager([this.prefs = const <String, dynamic>{}]) {
    cache.addAll(prefs);
  }

  final Map<String, dynamic> prefs;
  final Map<String, dynamic> cache = <String, dynamic>{};

  @override
  bool? getBool(String key) => cache[key] as bool?;

  @override
  String? getString(String key) => cache[key] as String?;

  @override
  int? getInt(String key) => cache[key] as int?;

  @override
  double? getDouble(String key) => cache[key] as double?;

  @override
  Future<bool> setBool(String key, bool value) {
    cache[key] = value;
    return Future.value(true);
  }

  @override
  Future<bool> setString(String key, String value) {
    cache[key] = value;
    return Future.value(true);
  }

  @override
  Future<bool> setInt(String key, int value) {
    cache[key] = value;
    return Future.value(true);
  }

  @override
  Future<bool> setDouble(String key, double value) {
    cache[key] = value;
    return Future.value(true);
  }

  @override
  Future<bool> remove(String key) {
    final success = cache.remove(key);
    return Future.value(success != null);
  }

  @override
  Future<bool> clear() {
    cache.clear();
    return Future.value(true);
  }
}
