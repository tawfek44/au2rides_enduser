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

  /// `Type`
  String get type {
    return Intl.message(
      'Type',
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
