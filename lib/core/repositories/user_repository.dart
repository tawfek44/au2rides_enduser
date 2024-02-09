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
  Future setUserToken(String token) async {
    await _prefs.setString('token', token);
  }
  Future setAccessToken(String token) async {
    await _prefs.setString('accessToken', token);
  }
  Future setRefreshToken(String token) async {
    await _prefs.setString('refreshToken', token);
  }
  Future setFirstTimeOpenApp(bool flag) async {
    await _prefs.setBool('firstTimeOpenApp', flag);
  }

  Future setSelectedCountry(String country) async {
    await _prefs.setString('selectedCountry', country);
  }
  Future setSelectedCountryIndex(int countryIndex) async {
    await _prefs.setInt('selectedCountryIndex', countryIndex);
  }

  Future setSelectedCountryId(int countryId) async {
    await _prefs.setInt('selectedCountryId', countryId);
  }
  Future setSelectedCountryCallingCode(String countryCallingCode) async {
    await _prefs.setString('selectedCountryCallingCode', countryCallingCode);
  }
  Future setSelectedLanguageIndex(int selectedLanguageIndex) async {
    await _prefs.setInt('selectedLanguageIndex', selectedLanguageIndex);
  }
  Future setVerificationIdForOTP(String otpVerificationId) async {
    await _prefs.setString('otpVerificationId', otpVerificationId);
  }
  Future setPhoneNumber(String phoneNumber) async {
    await _prefs.setString('phoneNumber', phoneNumber);
  }

  Future setSelectedGenderIndex(int genderIndex) async {
    await _prefs.setInt('selectedGenderIndex', genderIndex);
  }
  Future setSelectedGenderName(String genderName) async {
    await _prefs.setString('selectedGenderName', genderName);
  }

  Future setSelectedGenderId(int genderId) async {
    await _prefs.setInt('selectedGenderId', genderId);
  }

  String get getAccessToken => 'Bearer ${_prefs.getString('accessToken')}'??'';
  String get getRefreshToken => '${_prefs.getString('refreshToken')}'??'';
  String get userLanguage => _prefs.getString('lang') ?? Platform.localeName.substring(0,2);
  bool get isLoggedIn => _prefs.getBool('logged') ?? false;
  bool get getFirstTimeOpenApp => _prefs.getBool('firstTimeOpenApp')??true;
  String get getUserToken => _prefs.getString('token')??'';
  String get getSelectedCountry => _prefs.getString('selectedCountry')??'';
  String get getVerificationIdForOTP => _prefs.getString('otpVerificationId')??'';
  String get getSelectedCountryCallingCode => _prefs.getString('selectedCountryCallingCode')??'';
  int get getSelectedLanguageIndex => _prefs.getInt('selectedLanguageIndex')??-1;
  int get getSelectedCountryId => _prefs.getInt('selectedCountryId')??1;
  int get getSelectedCountryIndex => _prefs.getInt('selectedCountryIndex')??-1;
  String get getPhoneNumber => _prefs.getString('phoneNumber')??'';
  String get getUserLanguage => _prefs.getString('lang')??'';

  int get getSelectedGenderIndex => _prefs.getInt('selectedGenderIndex')??-1;
  String get getSelectedGenderName => _prefs.getString('selectedGenderName')??'';
  int get getSelectedGenderId => _prefs.getInt('selectedGenderId')??-1;

  Future logout() async {
    await _prefs.clear();
  }
}
