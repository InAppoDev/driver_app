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

  /// `Profit Details`
  String get profitDetails {
    return Intl.message(
      'Profit Details',
      name: 'profitDetails',
      desc: 'Profit Details',
      args: [],
    );
  }

  /// `Below is a short summary of your month`
  String get belowIsAShortSummaryOfYourMonth {
    return Intl.message(
      'Below is a short summary of your month',
      name: 'belowIsAShortSummaryOfYourMonth',
      desc: 'Below is a short summary of your mont',
      args: [],
    );
  }

  /// `Lifetime Stats`
  String get lifetimeStats {
    return Intl.message(
      'Lifetime Stats',
      name: 'lifetimeStats',
      desc: 'Lifetime Stats',
      args: [],
    );
  }

  /// `Here is a summary of your overall\nperformance`
  String get hereIsASummaryOfYourOverallPerformance {
    return Intl.message(
      'Here is a summary of your overall\nperformance',
      name: 'hereIsASummaryOfYourOverallPerformance',
      desc: 'Here is a summary of your overall\nperformance',
      args: [],
    );
  }

  /// `Get Started`
  String get getStarted {
    return Intl.message(
      'Get Started',
      name: 'getStarted',
      desc: 'Get Started',
      args: [],
    );
  }

  /// `Enter your Phone number to login an account`
  String get enterYourPhoneNumberToLoginAnAccount {
    return Intl.message(
      'Enter your Phone number to login an account',
      name: 'enterYourPhoneNumberToLoginAnAccount',
      desc: 'Enter your Phone number to login an account',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: 'Login',
      args: [],
    );
  }

  /// `Your data is protected and used solely for app authentication. We respect your privacy and security.`
  String get yourDataIsProtected {
    return Intl.message(
      'Your data is protected and used solely for app authentication. We respect your privacy and security.',
      name: 'yourDataIsProtected',
      desc:
          'Your data is protected and used solely for app authentication. We respect your privacy and security.',
      args: [],
    );
  }

  /// `Verify Code`
  String get verifyCode {
    return Intl.message(
      'Verify Code',
      name: 'verifyCode',
      desc: 'Verify Code',
      args: [],
    );
  }

  /// `Enter Code`
  String get enterCode {
    return Intl.message(
      'Enter Code',
      name: 'enterCode',
      desc: 'Enter Codee',
      args: [],
    );
  }

  /// `Request Code`
  String get requestCode {
    return Intl.message(
      'Request Code',
      name: 'requestCode',
      desc: 'Request Code',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
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
