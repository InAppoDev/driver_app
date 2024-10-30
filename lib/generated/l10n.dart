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
      desc: '',
      args: [],
    );
  }

  /// `Below is a short summary of your month`
  String get belowIsAShortSummaryOfYourMonth {
    return Intl.message(
      'Below is a short summary of your month',
      name: 'belowIsAShortSummaryOfYourMonth',
      desc: '',
      args: [],
    );
  }

  /// `Lifetime Stats`
  String get lifetimeStats {
    return Intl.message(
      'Lifetime Stats',
      name: 'lifetimeStats',
      desc: '',
      args: [],
    );
  }

  /// `Here is a summary of your overall\nperformance`
  String get hereIsASummaryOfYourOverallPerformance {
    return Intl.message(
      'Here is a summary of your overall\nperformance',
      name: 'hereIsASummaryOfYourOverallPerformance',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get getStarted {
    return Intl.message(
      'Get Started',
      name: 'getStarted',
      desc: '',
      args: [],
    );
  }

  /// `Enter your Phone number to login an account`
  String get enterYourPhoneNumberToLoginAnAccount {
    return Intl.message(
      'Enter your Phone number to login an account',
      name: 'enterYourPhoneNumberToLoginAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Your data is protected and used solely for app authentication. We respect your privacy and security.`
  String get yourDataIsProtected {
    return Intl.message(
      'Your data is protected and used solely for app authentication. We respect your privacy and security.',
      name: 'yourDataIsProtected',
      desc: '',
      args: [],
    );
  }

  /// `Verify Code`
  String get verifyCode {
    return Intl.message(
      'Verify Code',
      name: 'verifyCode',
      desc: '',
      args: [],
    );
  }

  /// `Enter Code`
  String get enterCode {
    return Intl.message(
      'Enter Code',
      name: 'enterCode',
      desc: '',
      args: [],
    );
  }

  /// `Request Code`
  String get requestCode {
    return Intl.message(
      'Request Code',
      name: 'requestCode',
      desc: '',
      args: [],
    );
  }

  /// `Initializing...`
  String get initializing {
    return Intl.message(
      'Initializing...',
      name: 'initializing',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Account Information`
  String get accountInformation {
    return Intl.message(
      'Account Information',
      name: 'accountInformation',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get phone {
    return Intl.message(
      'Phone',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get address {
    return Intl.message(
      'Address',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `City`
  String get city {
    return Intl.message(
      'City',
      name: 'city',
      desc: '',
      args: [],
    );
  }

  /// `State Code`
  String get stateCode {
    return Intl.message(
      'State Code',
      name: 'stateCode',
      desc: '',
      args: [],
    );
  }

  /// `Zip Code`
  String get zipCode {
    return Intl.message(
      'Zip Code',
      name: 'zipCode',
      desc: '',
      args: [],
    );
  }

  /// `Track Your work and get the result`
  String get trackYourWorkAndGetTheResult {
    return Intl.message(
      'Track Your work and get the result',
      name: 'trackYourWorkAndGetTheResult',
      desc: '',
      args: [],
    );
  }

  /// `Remember to keep track of your professional accomplishments.`
  String get rememberToKeepTrackOfYourProfessionalAccomplishments {
    return Intl.message(
      'Remember to keep track of your professional accomplishments.',
      name: 'rememberToKeepTrackOfYourProfessionalAccomplishments',
      desc: '',
      args: [],
    );
  }

  /// `Stay organized with team`
  String get stayOrganizedWithTeam {
    return Intl.message(
      'Stay organized with team',
      name: 'stayOrganizedWithTeam',
      desc: '',
      args: [],
    );
  }

  /// `But understanding the contributions our colleagues make to our teams and companies.`
  String
      get butUnderstandingTheContributionsOurColleaguesMakeToOurTeamsAndCompanies {
    return Intl.message(
      'But understanding the contributions our colleagues make to our teams and companies.',
      name:
          'butUnderstandingTheContributionsOurColleaguesMakeToOurTeamsAndCompanies',
      desc: '',
      args: [],
    );
  }

  /// `Get notified when work happens`
  String get getNotifiedWhenWorkHappens {
    return Intl.message(
      'Get notified when work happens',
      name: 'getNotifiedWhenWorkHappens',
      desc: '',
      args: [],
    );
  }

  /// `Take control of notifications, collaborate live or on your own time.`
  String get takeControlOfNotificationsCollaborateLiveOrOnYourOwnTime {
    return Intl.message(
      'Take control of notifications, collaborate live or on your own time.',
      name: 'takeControlOfNotificationsCollaborateLiveOrOnYourOwnTime',
      desc: '',
      args: [],
    );
  }

  /// `START`
  String get start {
    return Intl.message(
      'START',
      name: 'start',
      desc: '',
      args: [],
    );
  }

  /// `SKIP`
  String get skip {
    return Intl.message(
      'SKIP',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `NEXT`
  String get next {
    return Intl.message(
      'NEXT',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Trips`
  String get trips {
    return Intl.message(
      'Trips',
      name: 'trips',
      desc: '',
      args: [],
    );
  }

  /// `Pause`
  String get pause {
    return Intl.message(
      'Pause',
      name: 'pause',
      desc: '',
      args: [],
    );
  }

  /// `Messages`
  String get messages {
    return Intl.message(
      'Messages',
      name: 'messages',
      desc: '',
      args: [],
    );
  }

  /// `You`
  String get you {
    return Intl.message(
      'You',
      name: 'you',
      desc: '',
      args: [],
    );
  }

  /// `Drive on`
  String get driveOn {
    return Intl.message(
      'Drive on',
      name: 'driveOn',
      desc: '',
      args: [],
    );
  }

  /// `DRIVER APP`
  String get driveApp {
    return Intl.message(
      'DRIVER APP',
      name: 'driveApp',
      desc: '',
      args: [],
    );
  }

  /// `Total Miles`
  String get totalMiles {
    return Intl.message(
      'Total Miles',
      name: 'totalMiles',
      desc: '',
      args: [],
    );
  }

  /// `Check Calls`
  String get checkCalls {
    return Intl.message(
      'Check Calls',
      name: 'checkCalls',
      desc: '',
      args: [],
    );
  }

  /// `Drive Time`
  String get driveTime {
    return Intl.message(
      'Drive Time',
      name: 'driveTime',
      desc: '',
      args: [],
    );
  }

  /// `k`
  String get k {
    return Intl.message(
      'k',
      name: 'k',
      desc: '',
      args: [],
    );
  }

  /// `M`
  String get m {
    return Intl.message(
      'M',
      name: 'm',
      desc: '',
      args: [],
    );
  }

  /// `Mph`
  String get mph {
    return Intl.message(
      'Mph',
      name: 'mph',
      desc: '',
      args: [],
    );
  }

  /// `h`
  String get h {
    return Intl.message(
      'h',
      name: 'h',
      desc: '',
      args: [],
    );
  }

  /// `Total trips`
  String get totalTrips {
    return Intl.message(
      'Total trips',
      name: 'totalTrips',
      desc: '',
      args: [],
    );
  }

  /// `Total Stops`
  String get totalStops {
    return Intl.message(
      'Total Stops',
      name: 'totalStops',
      desc: '',
      args: [],
    );
  }

  /// `Shortest Trip`
  String get shortestTrip {
    return Intl.message(
      'Shortest Trip',
      name: 'shortestTrip',
      desc: '',
      args: [],
    );
  }

  /// `Longest Trip`
  String get longestTrip {
    return Intl.message(
      'Longest Trip',
      name: 'longestTrip',
      desc: '',
      args: [],
    );
  }

  /// `Average Speed`
  String get averageSpeed {
    return Intl.message(
      'Average Speed',
      name: 'averageSpeed',
      desc: '',
      args: [],
    );
  }

  /// `Route distance`
  String get milesToGo {
    return Intl.message(
      'Route distance',
      name: 'milesToGo',
      desc: '',
      args: [],
    );
  }

  /// `Trip № 12321312312232`
  String get tripNumber {
    return Intl.message(
      'Trip № 12321312312232',
      name: 'tripNumber',
      desc: '',
      args: [],
    );
  }

  /// `Load damage`
  String get loadDamage {
    return Intl.message(
      'Load damage',
      name: 'loadDamage',
      desc: '',
      args: [],
    );
  }

  /// `You haven't yet started the trip.`
  String get youHaventYetStartedTheTrip {
    return Intl.message(
      'You haven`t yet started the trip.',
      name: 'youHaventYetStartedTheTrip',
      desc: '',
      args: [],
    );
  }

  /// `Pick up #2133123`
  String get pickUp {
    return Intl.message(
      'Pick up #2133123',
      name: 'pickUp',
      desc: '',
      args: [],
    );
  }

  /// `All Stops`
  String get allStops {
    return Intl.message(
      'All Stops',
      name: 'allStops',
      desc: '',
      args: [],
    );
  }

  /// `Hide Stops`
  String get hideStops {
    return Intl.message(
      'Hide Stops',
      name: 'hideStops',
      desc: '',
      args: [],
    );
  }

  /// `TRIP INFO`
  String get tripInfo {
    return Intl.message(
      'TRIP INFO',
      name: 'tripInfo',
      desc: '',
      args: [],
    );
  }

  /// `Hours of operation:`
  String get hoursOfOperation {
    return Intl.message(
      'Hours of operation:',
      name: 'hoursOfOperation',
      desc: '',
      args: [],
    );
  }

  /// `WEIGHT:`
  String get weight {
    return Intl.message(
      'WEIGHT:',
      name: 'weight',
      desc: '',
      args: [],
    );
  }

  /// `Tons:`
  String get tons {
    return Intl.message(
      'Tons:',
      name: 'tons',
      desc: '',
      args: [],
    );
  }

  /// `Commodity:`
  String get commodity {
    return Intl.message(
      'Commodity:',
      name: 'commodity',
      desc: '',
      args: [],
    );
  }

  /// `Pallets:`
  String get pallets {
    return Intl.message(
      'Pallets:',
      name: 'pallets',
      desc: '',
      args: [],
    );
  }

  /// `Temperature:`
  String get temperature {
    return Intl.message(
      'Temperature:',
      name: 'temperature',
      desc: '',
      args: [],
    );
  }

  /// `Select the date and time of arrival at PICK UP #1:`
  String get selectTheDateAndTimeOfArrivalAt {
    return Intl.message(
      'Select the date and time of arrival at PICK UP #1:',
      name: 'selectTheDateAndTimeOfArrivalAt',
      desc: '',
      args: [],
    );
  }

  /// `Select Date\ Time`
  String get selectDateTime {
    return Intl.message(
      'Select Date\\ Time',
      name: 'selectDateTime',
      desc: '',
      args: [],
    );
  }

  /// `SELECT`
  String get select {
    return Intl.message(
      'SELECT',
      name: 'select',
      desc: '',
      args: [],
    );
  }

  /// `Begin trip`
  String get begin {
    return Intl.message(
      'Begin trip',
      name: 'begin',
      desc: '',
      args: [],
    );
  }

  /// `confirm`
  String get confirm {
    return Intl.message(
      'confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Select ETA at PICK UP#1:`
  String get selectETAAt {
    return Intl.message(
      'Select ETA at PICK UP#1:',
      name: 'selectETAAt',
      desc: '',
      args: [],
    );
  }

  /// `BOL document:`
  String get bolDocument {
    return Intl.message(
      'BOL document:',
      name: 'bolDocument',
      desc: '',
      args: [],
    );
  }

  /// `Upload files`
  String get uploadFiles {
    return Intl.message(
      'Upload files',
      name: 'uploadFiles',
      desc: '',
      args: [],
    );
  }

  /// `or`
  String get or {
    return Intl.message(
      'or',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `Upload the BOL document or you can scan it.`
  String get uploadTheBOLDocumentOrYouCanScanIt {
    return Intl.message(
      'Upload the BOL document or you can scan it.',
      name: 'uploadTheBOLDocumentOrYouCanScanIt',
      desc: '',
      args: [],
    );
  }

  /// `UPLOAD`
  String get upload {
    return Intl.message(
      'UPLOAD',
      name: 'upload',
      desc: '',
      args: [],
    );
  }

  /// `Ready to begin this trip?`
  String get readyToBegin {
    return Intl.message(
      'Ready to begin this trip?',
      name: 'readyToBegin',
      desc: '',
      args: [],
    );
  }

  /// `Approved trip`
  String get approvedTrip {
    return Intl.message(
      'Approved trip',
      name: 'approvedTrip',
      desc: '',
      args: [],
    );
  }

  /// `Current Stop`
  String get currentStop {
    return Intl.message(
      'Current Stop',
      name: 'currentStop',
      desc: '',
      args: [],
    );
  }

  /// `min`
  String get min {
    return Intl.message(
      'min',
      name: 'min',
      desc: '',
      args: [],
    );
  }

  /// `hour`
  String get hour {
    return Intl.message(
      'hour',
      name: 'hour',
      desc: '',
      args: [],
    );
  }

  /// `Custom`
  String get custom {
    return Intl.message(
      'Custom',
      name: 'custom',
      desc: '',
      args: [],
    );
  }

  /// `Total: {miles} miles`
  String totalMilesMiles(String miles) {
    return Intl.message(
      'Total: $miles miles',
      name: 'totalMilesMiles',
      desc: 'Text showing the total miles of a trip',
      args: [miles],
    );
  }

  /// `Appt/time`
  String get apptTime {
    return Intl.message(
      'Appt/time',
      name: 'apptTime',
      desc: '',
      args: [],
    );
  }

  /// `Emergency Phone`
  String get emergencyPhone {
    return Intl.message(
      'Emergency Phone',
      name: 'emergencyPhone',
      desc: '',
      args: [],
    );
  }

  /// `Error: {message}`
  String errorMessage(String message) {
    return Intl.message(
      'Error: $message',
      name: 'errorMessage',
      desc: 'Error message displayed when something goes wrong',
      args: [message],
    );
  }

  /// `Permissions`
  String get permissions {
    return Intl.message(
      'Permissions',
      name: 'permissions',
      desc: '',
      args: [],
    );
  }

  /// `DISMISS`
  String get dismiss {
    return Intl.message(
      'DISMISS',
      name: 'dismiss',
      desc: '',
      args: [],
    );
  }

  /// `You have no messages yet, pull to refresh the page`
  String get youHaveNoMessagesYetPullToRefresh {
    return Intl.message(
      'You have no messages yet, pull to refresh the page',
      name: 'youHaveNoMessagesYetPullToRefresh',
      desc: '',
      args: [],
    );
  }

  /// `eta`
  String get eta {
    return Intl.message(
      'eta',
      name: 'eta',
      desc: '',
      args: [],
    );
  }

  /// `Edit ETA:`
  String get editETA {
    return Intl.message(
      'Edit ETA:',
      name: 'editETA',
      desc: '',
      args: [],
    );
  }

  /// `Set Value`
  String get setValue {
    return Intl.message(
      'Set Value',
      name: 'setValue',
      desc: '',
      args: [],
    );
  }

  /// `Update ETA`
  String get updateETA {
    return Intl.message(
      'Update ETA',
      name: 'updateETA',
      desc: '',
      args: [],
    );
  }

  /// `{distance}km`
  String distanceKm(String distance) {
    return Intl.message(
      '${distance}km',
      name: 'distanceKm',
      desc: 'Distance in kilometers',
      args: [distance],
    );
  }

  /// `Failed to load trip information. Please try again later or contact support.`
  String get failedToLoadTrip {
    return Intl.message(
      'Failed to load trip information. Please try again later or contact support.',
      name: 'failedToLoadTrip',
      desc: '',
      args: [],
    );
  }

  /// `Start driving`
  String get startDriving {
    return Intl.message(
      'Start driving',
      name: 'startDriving',
      desc: '',
      args: [],
    );
  }

  /// `next stop`
  String get nextStop {
    return Intl.message(
      'next stop',
      name: 'nextStop',
      desc: '',
      args: [],
    );
  }

  /// `add comment`
  String get addComment {
    return Intl.message(
      'add comment',
      name: 'addComment',
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
