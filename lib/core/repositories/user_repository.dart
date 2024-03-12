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
  Future setUserAccessToken(String token) async {
    await _prefs.setString('userAccessToken', token);
  }
  Future setRefreshToken(String token) async {
    await _prefs.setString('refreshToken', token);
  }
  Future setUserRefreshToken(String token) async {
    await _prefs.setString('userRefreshToken', token);
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

  Future setSelectedRideTypeIndex(int rideTypeIndex) async {
    await _prefs.setInt('selectedRideTypeIndex', rideTypeIndex);
  }

  Future setSelectedRideType(String rideType) async {
    await _prefs.setString('selectedRideType', rideType);
  }
  Future setSelectedRideTypeId(int rideTypeId) async {
    await _prefs.setInt('selectedRideTypeId', rideTypeId);
  }

  Future setSelectedRideMakesIndex(int rideMakesIndex) async {
    await _prefs.setInt('selectedRideMakesIndex', rideMakesIndex);
  }
  Future setSelectedFuelTypesIndex(int fuelTypesIndex) async {
    await _prefs.setInt('selectedFuelTypesIndex', fuelTypesIndex);
  }
  Future setSelectedMetricUnitsIndex(int metricUnitIndex) async {
    await _prefs.setInt('selectedMetricUnitsIndex', metricUnitIndex);
  }
  Future setSelectedRideModelsIndex(int rideModelIndex) async {
    await _prefs.setInt('selectedRideModelIndex', rideModelIndex);
  }
  Future setSelectedRideMakesName(String rideMakes) async {
    await _prefs.setString('selectedRideMakes', rideMakes);
  }
  Future setSelectedRideMakesId(String rideMakesId) async {
    await _prefs.setString('selectedRideMakesId', rideMakesId);
  }
  Future setSelectedRideModelsName(String rideModelName) async {
    await _prefs.setString('selectedRideModelName', rideModelName);
  }
  Future setSelectedFuelType(String fuelTypeName) async {
    await _prefs.setString('selectedFuelType', fuelTypeName);
  }

  Future setSelectedMetricUnitsName(String metricUnitName) async {
    await _prefs.setString('selectedMetricUnit', metricUnitName);
  }

  String get getSelectedRideModelName => _prefs.getString('selectedRideModelName')??'';
  String get getSelectedMetricUnitName => _prefs.getString('selectedMetricUnit')??'';

  String get getSelectedRideMakeId => _prefs.getString('selectedRideMakesId')??'';

  int get getSelectedRideModelIndex => _prefs.getInt('selectedRideModelIndex')??-1;
  int get getSelectedMetricUnitsIndex => _prefs.getInt('selectedMetricUnitsIndex')??-1;

  int get getSelectedRideTypeId => _prefs.getInt('selectedRideTypeId')??-1;

  String get getSelectedRideMakes => _prefs.getString('selectedRideMakes')??'';

  String get getSelectedFuelTypeName => _prefs.getString('selectedFuelType')??'';
  String get getSelectedRideType => _prefs.getString('selectedRideType')??'';

  String get getAccessToken => 'Bearer ${_prefs.getString('accessToken')}'??'';
  String get getRefreshToken => '${_prefs.getString('refreshToken')}'??'';

  String get getUserAccessToken => 'Bearer ${_prefs.getString('userAccessToken')}'??'';
  String get getUserRefreshToken => '${_prefs.getString('userRefreshToken')}'??'';

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
