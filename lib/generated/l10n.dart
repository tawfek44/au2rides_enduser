// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `App Language`
  String get appLanguageText {
    return Intl.message(
      'App Language',
      name: 'appLanguageText',
      desc: '',
      args: [],
    );
  }

  /// `Arabic`
  String get arabicLanguageText {
    return Intl.message(
      'Arabic',
      name: 'arabicLanguageText',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get englishLanguageText {
    return Intl.message(
      'English',
      name: 'englishLanguageText',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continueText {
    return Intl.message(
      'Continue',
      name: 'continueText',
      desc: '',
      args: [],
    );
  }

  /// `About`
  String get about {
    return Intl.message(
      'About',
      name: 'about',
      desc: '',
      args: [],
    );
  }

  /// `Follow us`
  String get followUS {
    return Intl.message(
      'Follow us',
      name: 'followUS',
      desc: '',
      args: [],
    );
  }

  /// `Privacy policy and terms of use`
  String get privacyPolicyAndTermsOfUse {
    return Intl.message(
      'Privacy policy and terms of use',
      name: 'privacyPolicyAndTermsOfUse',
      desc: '',
      args: [],
    );
  }

  /// `Acquisition Details`
  String get acquisitionDetails {
    return Intl.message(
      'Acquisition Details',
      name: 'acquisitionDetails',
      desc: '',
      args: [],
    );
  }

  /// `Date`
  String get date {
    return Intl.message(
      'Date',
      name: 'date',
      desc: '',
      args: [],
    );
  }

  /// `Ride type`
  String get type {
    return Intl.message(
      'Ride type',
      name: 'type',
      desc: '',
      args: [],
    );
  }

  /// `Acquisition Type`
  String get acquisitionType {
    return Intl.message(
      'Acquisition Type',
      name: 'acquisitionType',
      desc: '',
      args: [],
    );
  }

  /// `Purchase`
  String get purchase {
    return Intl.message(
      'Purchase',
      name: 'purchase',
      desc: '',
      args: [],
    );
  }

  /// `Lease`
  String get lease {
    return Intl.message(
      'Lease',
      name: 'lease',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Price`
  String get price {
    return Intl.message(
      'Price',
      name: 'price',
      desc: '',
      args: [],
    );
  }

  /// `Odometer`
  String get odometer {
    return Intl.message(
      'Odometer',
      name: 'odometer',
      desc: '',
      args: [],
    );
  }

  /// `ATTACHMENTS`
  String get attachment {
    return Intl.message(
      'ATTACHMENTS',
      name: 'attachment',
      desc: '',
      args: [],
    );
  }

  /// `Attachments...`
  String get attachmentTitle {
    return Intl.message(
      'Attachments...',
      name: 'attachmentTitle',
      desc: '',
      args: [],
    );
  }

  /// `NOTES`
  String get notes {
    return Intl.message(
      'NOTES',
      name: 'notes',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Languages`
  String get languages {
    return Intl.message(
      'Languages',
      name: 'languages',
      desc: '',
      args: [],
    );
  }

  /// `There is not internet connection, check your connectivity!`
  String get connectivityError {
    return Intl.message(
      'There is not internet connection, check your connectivity!',
      name: 'connectivityError',
      desc: '',
      args: [],
    );
  }

  /// `Downloading Information ...`
  String get downloadingText {
    return Intl.message(
      'Downloading Information ...',
      name: 'downloadingText',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get signIn {
    return Intl.message(
      'Sign In',
      name: 'signIn',
      desc: '',
      args: [],
    );
  }

  /// `SIGN IN DETAILS`
  String get signInDetails {
    return Intl.message(
      'SIGN IN DETAILS',
      name: 'signInDetails',
      desc: '',
      args: [],
    );
  }

  /// `Country`
  String get country {
    return Intl.message(
      'Country',
      name: 'country',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get phoneNumber {
    return Intl.message(
      'Phone Number',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Number validation`
  String get numberValidation {
    return Intl.message(
      'Number validation',
      name: 'numberValidation',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure that this number`
  String get areYouSureThatThisNumber {
    return Intl.message(
      'Are you sure that this number',
      name: 'areYouSureThatThisNumber',
      desc: '',
      args: [],
    );
  }

  /// `is correct?`
  String get isCorrect {
    return Intl.message(
      'is correct?',
      name: 'isCorrect',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get ok {
    return Intl.message(
      'Ok',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `+20`
  String get egyNumberPrev {
    return Intl.message(
      '+20',
      name: 'egyNumberPrev',
      desc: '',
      args: [],
    );
  }

  /// `Countries`
  String get countries {
    return Intl.message(
      'Countries',
      name: 'countries',
      desc: '',
      args: [],
    );
  }

  /// `Verification`
  String get verification {
    return Intl.message(
      'Verification',
      name: 'verification',
      desc: '',
      args: [],
    );
  }

  /// `Enter your OTP code here`
  String get enterYourOTPCodeHere {
    return Intl.message(
      'Enter your OTP code here',
      name: 'enterYourOTPCodeHere',
      desc: '',
      args: [],
    );
  }

  /// `Didn't you receive any code?`
  String get didNotYouReceiveAnyCode {
    return Intl.message(
      'Didn\'t you receive any code?',
      name: 'didNotYouReceiveAnyCode',
      desc: '',
      args: [],
    );
  }

  /// `Resend new code`
  String get resendNewCode {
    return Intl.message(
      'Resend new code',
      name: 'resendNewCode',
      desc: '',
      args: [],
    );
  }

  /// `Verify`
  String get verify {
    return Intl.message(
      'Verify',
      name: 'verify',
      desc: '',
      args: [],
    );
  }

  /// `the reCAPTCHA response token was invalid, expired`
  String get theReCAPTCHAResponseTokenWasInvalidExpired {
    return Intl.message(
      'the reCAPTCHA response token was invalid, expired',
      name: 'theReCAPTCHAResponseTokenWasInvalidExpired',
      desc: '',
      args: [],
    );
  }

  /// `The phone number has an invalid format, check phone number or check you choose the country code`
  String get invalidPhoneNumber {
    return Intl.message(
      'The phone number has an invalid format, check phone number or check you choose the country code',
      name: 'invalidPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `The phone number is missing.`
  String get missingPhoneNumber {
    return Intl.message(
      'The phone number is missing.',
      name: 'missingPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `The SMS messages number has been exceeded`
  String get quotaExceeded {
    return Intl.message(
      'The SMS messages number has been exceeded',
      name: 'quotaExceeded',
      desc: '',
      args: [],
    );
  }

  /// `Your phone number has been disabled.`
  String get userDisabled {
    return Intl.message(
      'Your phone number has been disabled.',
      name: 'userDisabled',
      desc: '',
      args: [],
    );
  }

  /// `Your phone number is not enabled, please contact us.`
  String get operationNotAllowed {
    return Intl.message(
      'Your phone number is not enabled, please contact us.',
      name: 'operationNotAllowed',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your phone number.`
  String get phoneNumberMissingErrorText {
    return Intl.message(
      'Please enter your phone number.',
      name: 'phoneNumberMissingErrorText',
      desc: '',
      args: [],
    );
  }

  /// `Please check your pin number`
  String get pinCodeIsMissing {
    return Intl.message(
      'Please check your pin number',
      name: 'pinCodeIsMissing',
      desc: '',
      args: [],
    );
  }

  /// `The Number verified successfully.`
  String get numberVerified {
    return Intl.message(
      'The Number verified successfully.',
      name: 'numberVerified',
      desc: '',
      args: [],
    );
  }

  /// `Complete your profile`
  String get completeYourProfile {
    return Intl.message(
      'Complete your profile',
      name: 'completeYourProfile',
      desc: '',
      args: [],
    );
  }

  /// `User Info`
  String get userInfo {
    return Intl.message(
      'User Info',
      name: 'userInfo',
      desc: '',
      args: [],
    );
  }

  /// `First Name`
  String get firstName {
    return Intl.message(
      'First Name',
      name: 'firstName',
      desc: '',
      args: [],
    );
  }

  /// `Last Name`
  String get lastName {
    return Intl.message(
      'Last Name',
      name: 'lastName',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Gender`
  String get gender {
    return Intl.message(
      'Gender',
      name: 'gender',
      desc: '',
      args: [],
    );
  }

  /// `Birth Date`
  String get birthDate {
    return Intl.message(
      'Birth Date',
      name: 'birthDate',
      desc: '',
      args: [],
    );
  }

  /// `Camera`
  String get camera {
    return Intl.message(
      'Camera',
      name: 'camera',
      desc: '',
      args: [],
    );
  }

  /// `Gallery`
  String get gallery {
    return Intl.message(
      'Gallery',
      name: 'gallery',
      desc: '',
      args: [],
    );
  }

  /// `Please enter first name.`
  String get firstNameValidation {
    return Intl.message(
      'Please enter first name.',
      name: 'firstNameValidation',
      desc: '',
      args: [],
    );
  }

  /// `Please enter second name.`
  String get secondNameValidation {
    return Intl.message(
      'Please enter second name.',
      name: 'secondNameValidation',
      desc: '',
      args: [],
    );
  }

  /// `Please choose your gender`
  String get genderTextIsNull {
    return Intl.message(
      'Please choose your gender',
      name: 'genderTextIsNull',
      desc: '',
      args: [],
    );
  }

  /// `Choose your gender`
  String get chooseYourGender {
    return Intl.message(
      'Choose your gender',
      name: 'chooseYourGender',
      desc: '',
      args: [],
    );
  }

  /// `There is an error, please try again later`
  String get thereIsAnErrorInGender {
    return Intl.message(
      'There is an error, please try again later',
      name: 'thereIsAnErrorInGender',
      desc: '',
      args: [],
    );
  }

  /// `you complete your profile successfully.`
  String get userInfoAddedSuccessfully {
    return Intl.message(
      'you complete your profile successfully.',
      name: 'userInfoAddedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Add new ride`
  String get addNewRide {
    return Intl.message(
      'Add new ride',
      name: 'addNewRide',
      desc: '',
      args: [],
    );
  }

  /// `Required`
  String get required {
    return Intl.message(
      'Required',
      name: 'required',
      desc: '',
      args: [],
    );
  }

  /// `NAME`
  String get name {
    return Intl.message(
      'NAME',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `REGISTRATION DETAILS`
  String get registrationDetails {
    return Intl.message(
      'REGISTRATION DETAILS',
      name: 'registrationDetails',
      desc: '',
      args: [],
    );
  }

  /// `Licence Plate`
  String get licencePlate {
    return Intl.message(
      'Licence Plate',
      name: 'licencePlate',
      desc: '',
      args: [],
    );
  }

  /// `License Plate : ex:123 ABC`
  String get licencePlateNumber {
    return Intl.message(
      'License Plate : ex:123 ABC',
      name: 'licencePlateNumber',
      desc: '',
      args: [],
    );
  }

  /// `VIN : EX:WQ2BF2A53MLB51234`
  String get vin {
    return Intl.message(
      'VIN : EX:WQ2BF2A53MLB51234',
      name: 'vin',
      desc: '',
      args: [],
    );
  }

  /// `MANUFACTURING DETAILS`
  String get manufacturingDetails {
    return Intl.message(
      'MANUFACTURING DETAILS',
      name: 'manufacturingDetails',
      desc: '',
      args: [],
    );
  }

  /// `Trim`
  String get trimText {
    return Intl.message(
      'Trim',
      name: 'trimText',
      desc: '',
      args: [],
    );
  }

  /// `Model`
  String get modelText {
    return Intl.message(
      'Model',
      name: 'modelText',
      desc: '',
      args: [],
    );
  }

  /// `Year`
  String get yearText {
    return Intl.message(
      'Year',
      name: 'yearText',
      desc: '',
      args: [],
    );
  }

  /// `Make`
  String get makeText {
    return Intl.message(
      'Make',
      name: 'makeText',
      desc: '',
      args: [],
    );
  }

  /// `METRICS`
  String get metrics {
    return Intl.message(
      'METRICS',
      name: 'metrics',
      desc: '',
      args: [],
    );
  }

  /// `Unit`
  String get unit {
    return Intl.message(
      'Unit',
      name: 'unit',
      desc: '',
      args: [],
    );
  }

  /// `FUEL`
  String get fuel {
    return Intl.message(
      'FUEL',
      name: 'fuel',
      desc: '',
      args: [],
    );
  }

  /// `Fuel Type`
  String get fuelType {
    return Intl.message(
      'Fuel Type',
      name: 'fuelType',
      desc: '',
      args: [],
    );
  }

  /// `Fuel Units`
  String get fuelUnits {
    return Intl.message(
      'Fuel Units',
      name: 'fuelUnits',
      desc: '',
      args: [],
    );
  }

  /// `Consumption`
  String get consumption {
    return Intl.message(
      'Consumption',
      name: 'consumption',
      desc: '',
      args: [],
    );
  }

  /// `REGIONAL DETAILS`
  String get regionalDetails {
    return Intl.message(
      'REGIONAL DETAILS',
      name: 'regionalDetails',
      desc: '',
      args: [],
    );
  }

  /// `Currency`
  String get currency {
    return Intl.message(
      'Currency',
      name: 'currency',
      desc: '',
      args: [],
    );
  }

  /// `My Rides`
  String get myRides {
    return Intl.message(
      'My Rides',
      name: 'myRides',
      desc: '',
      args: [],
    );
  }

  /// `See full forecast`
  String get seeFullForecast {
    return Intl.message(
      'See full forecast',
      name: 'seeFullForecast',
      desc: '',
      args: [],
    );
  }

  /// `Verified`
  String get verified {
    return Intl.message(
      'Verified',
      name: 'verified',
      desc: '',
      args: [],
    );
  }

  /// `notVerified`
  String get notVerified {
    return Intl.message(
      'notVerified',
      name: 'notVerified',
      desc: '',
      args: [],
    );
  }

  /// `Choose ride type`
  String get chooseRideType {
    return Intl.message(
      'Choose ride type',
      name: 'chooseRideType',
      desc: '',
      args: [],
    );
  }

  /// `Select Year`
  String get selectYear {
    return Intl.message(
      'Select Year',
      name: 'selectYear',
      desc: '',
      args: [],
    );
  }

  /// `Please, fill the last data firstly.`
  String get pleaseFillThePastDataFirst {
    return Intl.message(
      'Please, fill the last data firstly.',
      name: 'pleaseFillThePastDataFirst',
      desc: '',
      args: [],
    );
  }

  /// `Choose the model`
  String get chooseTheModel {
    return Intl.message(
      'Choose the model',
      name: 'chooseTheModel',
      desc: '',
      args: [],
    );
  }

  /// `Choose fuel type`
  String get chooseFuelType {
    return Intl.message(
      'Choose fuel type',
      name: 'chooseFuelType',
      desc: '',
      args: [],
    );
  }

  /// `Choose metric unit`
  String get chooseMetricUnit {
    return Intl.message(
      'Choose metric unit',
      name: 'chooseMetricUnit',
      desc: '',
      args: [],
    );
  }

  /// `Choose consumption unit`
  String get chooseConsumptionUnit {
    return Intl.message(
      'Choose consumption unit',
      name: 'chooseConsumptionUnit',
      desc: '',
      args: [],
    );
  }

  /// `Choose ride trim`
  String get chooseRideModelTrim {
    return Intl.message(
      'Choose ride trim',
      name: 'chooseRideModelTrim',
      desc: '',
      args: [],
    );
  }

  /// `Choose currency`
  String get chooseCurrency {
    return Intl.message(
      'Choose currency',
      name: 'chooseCurrency',
      desc: '',
      args: [],
    );
  }

  /// `km`
  String get km {
    return Intl.message(
      'km',
      name: 'km',
      desc: '',
      args: [],
    );
  }

  /// `The ride is added successfully.`
  String get rideAddedSuccessfully {
    return Intl.message(
      'The ride is added successfully.',
      name: 'rideAddedSuccessfully',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
