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


  String get getCourierId  => _prefs.getString('courierId')??'';
  String get getCourierName  => _prefs.getString('courierName')??'';
  String get getCourierEmail  => _prefs.getString('courierEmail')??'';
  String get getCourierAddress  => _prefs.getString('courierAddress')??'';
  String get getCourierNumber  => _prefs.getString('courierNumber')??'';
  String get getAccessToken => 'Bearer ${_prefs.getString('token')}'??'';
  String get userLanguage => _prefs.getString('lang') ?? 'ar';
  bool get isLoggedIn => _prefs.getBool('logged') ?? false;



  Future logout() async {
    await _prefs.clear();
  }
}
