import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen_l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en')
  ];

  /// No description provided for @appLanguageText.
  ///
  /// In en, this message translates to:
  /// **'App Language'**
  String get appLanguageText;

  /// No description provided for @arabicLanguageText.
  ///
  /// In en, this message translates to:
  /// **'Arabic'**
  String get arabicLanguageText;

  /// No description provided for @englishLanguageText.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get englishLanguageText;

  /// No description provided for @continueText.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueText;

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// No description provided for @followUS.
  ///
  /// In en, this message translates to:
  /// **'Follow us'**
  String get followUS;

  /// No description provided for @privacyPolicyAndTermsOfUse.
  ///
  /// In en, this message translates to:
  /// **'Privacy policy and terms of use'**
  String get privacyPolicyAndTermsOfUse;

  /// No description provided for @acquisitionDetails.
  ///
  /// In en, this message translates to:
  /// **'Acquisition Details'**
  String get acquisitionDetails;

  /// No description provided for @date.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get date;

  /// No description provided for @type.
  ///
  /// In en, this message translates to:
  /// **'Ride type'**
  String get type;

  /// No description provided for @acquisitionType.
  ///
  /// In en, this message translates to:
  /// **'Acquisition Type'**
  String get acquisitionType;

  /// No description provided for @purchase.
  ///
  /// In en, this message translates to:
  /// **'Purchase'**
  String get purchase;

  /// No description provided for @lease.
  ///
  /// In en, this message translates to:
  /// **'Lease'**
  String get lease;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @price.
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get price;

  /// No description provided for @odometer.
  ///
  /// In en, this message translates to:
  /// **'Odometer'**
  String get odometer;

  /// No description provided for @attachment.
  ///
  /// In en, this message translates to:
  /// **'ATTACHMENTS'**
  String get attachment;

  /// No description provided for @attachmentTitle.
  ///
  /// In en, this message translates to:
  /// **'Attachments...'**
  String get attachmentTitle;

  /// No description provided for @notes.
  ///
  /// In en, this message translates to:
  /// **'NOTES'**
  String get notes;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @languages.
  ///
  /// In en, this message translates to:
  /// **'Languages'**
  String get languages;

  /// No description provided for @connectivityError.
  ///
  /// In en, this message translates to:
  /// **'There is not internet connection, check your connectivity!'**
  String get connectivityError;

  /// No description provided for @downloadingText.
  ///
  /// In en, this message translates to:
  /// **'Downloading Information ...'**
  String get downloadingText;

  /// No description provided for @signIn.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get signIn;

  /// No description provided for @signInDetails.
  ///
  /// In en, this message translates to:
  /// **'SIGN IN DETAILS'**
  String get signInDetails;

  /// No description provided for @country.
  ///
  /// In en, this message translates to:
  /// **'Country'**
  String get country;

  /// No description provided for @phoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phoneNumber;

  /// No description provided for @numberValidation.
  ///
  /// In en, this message translates to:
  /// **'Number validation'**
  String get numberValidation;

  /// No description provided for @areYouSureThatThisNumber.
  ///
  /// In en, this message translates to:
  /// **'Are you sure that this number'**
  String get areYouSureThatThisNumber;

  /// No description provided for @isCorrect.
  ///
  /// In en, this message translates to:
  /// **'is correct?'**
  String get isCorrect;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'Ok'**
  String get ok;

  /// No description provided for @egyNumberPrev.
  ///
  /// In en, this message translates to:
  /// **'+20'**
  String get egyNumberPrev;

  /// No description provided for @countries.
  ///
  /// In en, this message translates to:
  /// **'Countries'**
  String get countries;

  /// No description provided for @verification.
  ///
  /// In en, this message translates to:
  /// **'Verification'**
  String get verification;

  /// No description provided for @enterYourOTPCodeHere.
  ///
  /// In en, this message translates to:
  /// **'Enter your OTP code here'**
  String get enterYourOTPCodeHere;

  /// No description provided for @didNotYouReceiveAnyCode.
  ///
  /// In en, this message translates to:
  /// **'Didn\'t you receive any code?'**
  String get didNotYouReceiveAnyCode;

  /// No description provided for @resendNewCode.
  ///
  /// In en, this message translates to:
  /// **'Resend new code'**
  String get resendNewCode;

  /// No description provided for @verify.
  ///
  /// In en, this message translates to:
  /// **'Verify'**
  String get verify;

  /// No description provided for @theReCAPTCHAResponseTokenWasInvalidExpired.
  ///
  /// In en, this message translates to:
  /// **'the reCAPTCHA response token was invalid, expired'**
  String get theReCAPTCHAResponseTokenWasInvalidExpired;

  /// No description provided for @invalidPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'The phone number has an invalid format, check phone number or check you choose the country code'**
  String get invalidPhoneNumber;

  /// No description provided for @missingPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'The phone number is missing.'**
  String get missingPhoneNumber;

  /// No description provided for @quotaExceeded.
  ///
  /// In en, this message translates to:
  /// **'The SMS messages number has been exceeded'**
  String get quotaExceeded;

  /// No description provided for @userDisabled.
  ///
  /// In en, this message translates to:
  /// **'Your phone number has been disabled.'**
  String get userDisabled;

  /// No description provided for @operationNotAllowed.
  ///
  /// In en, this message translates to:
  /// **'Your phone number is not enabled, please contact us.'**
  String get operationNotAllowed;

  /// No description provided for @phoneNumberMissingErrorText.
  ///
  /// In en, this message translates to:
  /// **'Please enter your phone number.'**
  String get phoneNumberMissingErrorText;

  /// No description provided for @pinCodeIsMissing.
  ///
  /// In en, this message translates to:
  /// **'Please check your pin number'**
  String get pinCodeIsMissing;

  /// No description provided for @numberVerified.
  ///
  /// In en, this message translates to:
  /// **'The Number verified successfully.'**
  String get numberVerified;

  /// No description provided for @completeYourProfile.
  ///
  /// In en, this message translates to:
  /// **'Complete your profile'**
  String get completeYourProfile;

  /// No description provided for @userInfo.
  ///
  /// In en, this message translates to:
  /// **'User Info'**
  String get userInfo;

  /// No description provided for @firstName.
  ///
  /// In en, this message translates to:
  /// **'First Name'**
  String get firstName;

  /// No description provided for @lastName.
  ///
  /// In en, this message translates to:
  /// **'Last Name'**
  String get lastName;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @gender.
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get gender;

  /// No description provided for @birthDate.
  ///
  /// In en, this message translates to:
  /// **'Birth Date'**
  String get birthDate;

  /// No description provided for @camera.
  ///
  /// In en, this message translates to:
  /// **'Camera'**
  String get camera;

  /// No description provided for @gallery.
  ///
  /// In en, this message translates to:
  /// **'Gallery'**
  String get gallery;

  /// No description provided for @firstNameValidation.
  ///
  /// In en, this message translates to:
  /// **'Please enter first name.'**
  String get firstNameValidation;

  /// No description provided for @secondNameValidation.
  ///
  /// In en, this message translates to:
  /// **'Please enter second name.'**
  String get secondNameValidation;

  /// No description provided for @genderTextIsNull.
  ///
  /// In en, this message translates to:
  /// **'Please choose your gender'**
  String get genderTextIsNull;

  /// No description provided for @chooseYourGender.
  ///
  /// In en, this message translates to:
  /// **'Choose your gender'**
  String get chooseYourGender;

  /// No description provided for @thereIsAnErrorInGender.
  ///
  /// In en, this message translates to:
  /// **'There is an error, please try again later'**
  String get thereIsAnErrorInGender;

  /// No description provided for @userInfoAddedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'you complete your profile successfully.'**
  String get userInfoAddedSuccessfully;

  /// No description provided for @addNewRide.
  ///
  /// In en, this message translates to:
  /// **'Add new ride'**
  String get addNewRide;

  /// No description provided for @required.
  ///
  /// In en, this message translates to:
  /// **'Required'**
  String get required;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'NAME'**
  String get name;

  /// No description provided for @registrationDetails.
  ///
  /// In en, this message translates to:
  /// **'REGISTRATION DETAILS'**
  String get registrationDetails;

  /// No description provided for @licencePlate.
  ///
  /// In en, this message translates to:
  /// **'Licence Plate'**
  String get licencePlate;

  /// No description provided for @licencePlateNumber.
  ///
  /// In en, this message translates to:
  /// **'License Plate : ex:123 ABC'**
  String get licencePlateNumber;

  /// No description provided for @vin.
  ///
  /// In en, this message translates to:
  /// **'VIN : EX:WQ2BF2A53MLB51234'**
  String get vin;

  /// No description provided for @manufacturingDetails.
  ///
  /// In en, this message translates to:
  /// **'MANUFACTURING DETAILS'**
  String get manufacturingDetails;

  /// No description provided for @trimText.
  ///
  /// In en, this message translates to:
  /// **'Trim'**
  String get trimText;

  /// No description provided for @modelText.
  ///
  /// In en, this message translates to:
  /// **'Model'**
  String get modelText;

  /// No description provided for @yearText.
  ///
  /// In en, this message translates to:
  /// **'Year'**
  String get yearText;

  /// No description provided for @makeText.
  ///
  /// In en, this message translates to:
  /// **'Make'**
  String get makeText;

  /// No description provided for @metrics.
  ///
  /// In en, this message translates to:
  /// **'METRICS'**
  String get metrics;

  /// No description provided for @unit.
  ///
  /// In en, this message translates to:
  /// **'Unit'**
  String get unit;

  /// No description provided for @fuel.
  ///
  /// In en, this message translates to:
  /// **'FUEL'**
  String get fuel;

  /// No description provided for @fuelType.
  ///
  /// In en, this message translates to:
  /// **'Fuel Type'**
  String get fuelType;

  /// No description provided for @fuelUnits.
  ///
  /// In en, this message translates to:
  /// **'Fuel Units'**
  String get fuelUnits;

  /// No description provided for @consumption.
  ///
  /// In en, this message translates to:
  /// **'Consumption'**
  String get consumption;

  /// No description provided for @regionalDetails.
  ///
  /// In en, this message translates to:
  /// **'REGIONAL DETAILS'**
  String get regionalDetails;

  /// No description provided for @currency.
  ///
  /// In en, this message translates to:
  /// **'Currency'**
  String get currency;

  /// No description provided for @myRides.
  ///
  /// In en, this message translates to:
  /// **'My Rides'**
  String get myRides;

  /// No description provided for @seeFullForecast.
  ///
  /// In en, this message translates to:
  /// **'See full forecast'**
  String get seeFullForecast;

  /// No description provided for @verified.
  ///
  /// In en, this message translates to:
  /// **'Verified'**
  String get verified;

  /// No description provided for @notVerified.
  ///
  /// In en, this message translates to:
  /// **'notVerified'**
  String get notVerified;

  /// No description provided for @chooseRideType.
  ///
  /// In en, this message translates to:
  /// **'Choose ride type'**
  String get chooseRideType;

  /// No description provided for @selectYear.
  ///
  /// In en, this message translates to:
  /// **'Select Year'**
  String get selectYear;

  /// No description provided for @pleaseFillThePastDataFirst.
  ///
  /// In en, this message translates to:
  /// **'Please, fill the last data firstly.'**
  String get pleaseFillThePastDataFirst;

  /// No description provided for @chooseTheModel.
  ///
  /// In en, this message translates to:
  /// **'Choose the model'**
  String get chooseTheModel;

  /// No description provided for @chooseFuelType.
  ///
  /// In en, this message translates to:
  /// **'Choose fuel type'**
  String get chooseFuelType;

  /// No description provided for @chooseMetricUnit.
  ///
  /// In en, this message translates to:
  /// **'Choose metric unit'**
  String get chooseMetricUnit;

  /// No description provided for @chooseConsumptionUnit.
  ///
  /// In en, this message translates to:
  /// **'Choose consumption unit'**
  String get chooseConsumptionUnit;

  /// No description provided for @chooseRideModelTrim.
  ///
  /// In en, this message translates to:
  /// **'Choose ride trim'**
  String get chooseRideModelTrim;

  /// No description provided for @chooseCurrency.
  ///
  /// In en, this message translates to:
  /// **'Choose currency'**
  String get chooseCurrency;

  /// No description provided for @km.
  ///
  /// In en, this message translates to:
  /// **'km'**
  String get km;

  /// No description provided for @rideAddedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'The ride is added successfully.'**
  String get rideAddedSuccessfully;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar': return AppLocalizationsAr();
    case 'en': return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
