import 'dart:io';

import 'package:injectable/injectable.dart';

import '../shared_preference_manager/shared_preference_manager.dart';

@singleton
class UserRepository {
  final IPrefsManager _prefs;
  UserRepository._(this._prefs);

  @factoryMethod
  factory UserRepository.create(
    @Named('prefs') IPrefsManager prefs,
  ) =>
      UserRepository._(prefs);
  Future setLoggedInMark(bool mark) async {
    await _prefs.setBool('logged', mark);
  }

  Future setUserLanguage(String lang) async {
    await _prefs.setString('lang', lang);
  }
  Future setFirstTimeOpenApp(bool flag) async {
    await _prefs.setBool('firstTimeOpenApp', flag);
  }
  Future setUserCode(int langCode) async {
    await _prefs.setInt('langCode', langCode);
  }
  void cacheAccessToken (String token) {
      _prefs.setString('token',token);
    }
  void cacheCourierId (String id) {
    _prefs.setString('courierId',id);
  }
  void cacheCourierName (String name) {
    _prefs.setString('courierName',name);
  }
  void cacheCourierEmail (String email) {
    _prefs.setString('courierEmail',email);
  }
  void cacheCourierAddress (String address) {
    _prefs.setString('courierAddress',address);
  }
  void cacheCourierNumber (String number) {
    _prefs.setString('courierNumber',number);
  }


  String get getAccessToken => 'Bearer ${_prefs.getString('token')}'??'';
  String get userLanguage => _prefs.getString('lang') ?? Platform.localeName.substring(0,2);
  bool get isLoggedIn => _prefs.getBool('logged') ?? false;

  bool get getFirstTimeOpenApp => _prefs.getBool('firstTimeOpenApp')??true;



  Future logout() async {
    await _prefs.clear();
  }
}
