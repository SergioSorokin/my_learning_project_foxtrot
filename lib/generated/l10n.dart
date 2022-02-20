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

  /// `Offers`
  String get offers {
    return Intl.message(
      'Offers',
      name: 'offers',
      desc: '',
      args: [],
    );
  }

  /// `Details`
  String get details {
    return Intl.message(
      'Details',
      name: 'details',
      desc: '',
      args: [],
    );
  }

  /// `Locations `
  String get locations {
    return Intl.message(
      'Locations ',
      name: 'locations',
      desc: '',
      args: [],
    );
  }

  /// `Name of the action `
  String get nameOfTheAction {
    return Intl.message(
      'Name of the action ',
      name: 'nameOfTheAction',
      desc: '',
      args: [],
    );
  }

  /// `Foxtrot`
  String get titleDetailsScreen {
    return Intl.message(
      'Foxtrot',
      name: 'titleDetailsScreen',
      desc: '',
      args: [],
    );
  }

  /// `About company`
  String get titleAboutCompany {
    return Intl.message(
      'About company',
      name: 'titleAboutCompany',
      desc: '',
      args: [],
    );
  }

  /// `OVERTHROW`
  String get overthrow {
    return Intl.message(
      'OVERTHROW',
      name: 'overthrow',
      desc: '',
      args: [],
    );
  }

  /// `MORE DETAILS`
  String get moreDetails {
    return Intl.message(
      'MORE DETAILS',
      name: 'moreDetails',
      desc: '',
      args: [],
    );
  }

  /// `until 12.01.2019`
  String get until {
    return Intl.message(
      'until 12.01.2019',
      name: 'until',
      desc: '',
      args: [],
    );
  }

  /// `Schedule`
  String get titleScheduleCompany {
    return Intl.message(
      'Schedule',
      name: 'titleScheduleCompany',
      desc: '',
      args: [],
    );
  }

  /// `Monday`
  String get monday {
    return Intl.message(
      'Monday',
      name: 'monday',
      desc: '',
      args: [],
    );
  }

  /// `Tuesday`
  String get tuesday {
    return Intl.message(
      'Tuesday',
      name: 'tuesday',
      desc: '',
      args: [],
    );
  }

  /// `Wednesday`
  String get wednesday {
    return Intl.message(
      'Wednesday',
      name: 'wednesday',
      desc: '',
      args: [],
    );
  }

  /// `Thursday`
  String get thursday {
    return Intl.message(
      'Thursday',
      name: 'thursday',
      desc: '',
      args: [],
    );
  }

  /// `Friday`
  String get friday {
    return Intl.message(
      'Friday',
      name: 'friday',
      desc: '',
      args: [],
    );
  }

  /// `Saturday`
  String get saturday {
    return Intl.message(
      'Saturday',
      name: 'saturday',
      desc: '',
      args: [],
    );
  }

  /// `Sunday`
  String get sunday {
    return Intl.message(
      'Sunday',
      name: 'sunday',
      desc: '',
      args: [],
    );
  }

  /// `Reviews`
  String get titleReviews {
    return Intl.message(
      'Reviews',
      name: 'titleReviews',
      desc: '',
      args: [],
    );
  }

  /// `ALL REVIEWS`
  String get buttonTextReviews {
    return Intl.message(
      'ALL REVIEWS',
      name: 'buttonTextReviews',
      desc: '',
      args: [],
    );
  }

  /// `Leave feedback`
  String get titleLeaveFeedback {
    return Intl.message(
      'Leave feedback',
      name: 'titleLeaveFeedback',
      desc: '',
      args: [],
    );
  }

  /// `Describe your impressions`
  String get hintTextLeaveFeedback {
    return Intl.message(
      'Describe your impressions',
      name: 'hintTextLeaveFeedback',
      desc: '',
      args: [],
    );
  }

  /// `Publish`
  String get buttonTextLeaveFeedback {
    return Intl.message(
      'Publish',
      name: 'buttonTextLeaveFeedback',
      desc: '',
      args: [],
    );
  }

  /// `User`
  String get userName {
    return Intl.message(
      'User',
      name: 'userName',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get userSurName {
    return Intl.message(
      'Name',
      name: 'userSurName',
      desc: '',
      args: [],
    );
  }

  /// `Add user`
  String get addUser {
    return Intl.message(
      'Add user',
      name: 'addUser',
      desc: '',
      args: [],
    );
  }

  /// `Edit user`
  String get editUser {
    return Intl.message(
      'Edit user',
      name: 'editUser',
      desc: '',
      args: [],
    );
  }

  /// `Delete user`
  String get deleteUser {
    return Intl.message(
      'Delete user',
      name: 'deleteUser',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get titleProfile {
    return Intl.message(
      'Profile',
      name: 'titleProfile',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get lableTextName {
    return Intl.message(
      'Name',
      name: 'lableTextName',
      desc: '',
      args: [],
    );
  }

  /// `Enter your name`
  String get hintTextName {
    return Intl.message(
      'Enter your name',
      name: 'hintTextName',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your name!`
  String get pleaseEnterYourName {
    return Intl.message(
      'Please enter your name!',
      name: 'pleaseEnterYourName',
      desc: '',
      args: [],
    );
  }

  /// `You have exceeded the character limit!`
  String get YouHaveExceededTheCharacterLimit {
    return Intl.message(
      'You have exceeded the character limit!',
      name: 'YouHaveExceededTheCharacterLimit',
      desc: '',
      args: [],
    );
  }

  /// `Surname`
  String get lableTextSurname {
    return Intl.message(
      'Surname',
      name: 'lableTextSurname',
      desc: '',
      args: [],
    );
  }

  /// `Enter your surname`
  String get hintTextSurname {
    return Intl.message(
      'Enter your surname',
      name: 'hintTextSurname',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your surname!`
  String get pleaseEnterYourSurname {
    return Intl.message(
      'Please enter your surname!',
      name: 'pleaseEnterYourSurname',
      desc: '',
      args: [],
    );
  }

  /// `Save changes`
  String get saveChanges {
    return Intl.message(
      'Save changes',
      name: 'saveChanges',
      desc: '',
      args: [],
    );
  }

  /// `Date of Birth`
  String get dateOfBirth {
    return Intl.message(
      'Date of Birth',
      name: 'dateOfBirth',
      desc: '',
      args: [],
    );
  }

  /// `Enter your date of birth`
  String get enterYourDateOfBirth {
    return Intl.message(
      'Enter your date of birth',
      name: 'enterYourDateOfBirth',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your date of birth!`
  String get pleaseEnterYourDateOfBirth {
    return Intl.message(
      'Please enter your date of birth!',
      name: 'pleaseEnterYourDateOfBirth',
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

  /// `Please enter your gender!`
  String get pleaseEnterYourGender {
    return Intl.message(
      'Please enter your gender!',
      name: 'pleaseEnterYourGender',
      desc: '',
      args: [],
    );
  }

  /// `Male`
  String get male {
    return Intl.message(
      'Male',
      name: 'male',
      desc: '',
      args: [],
    );
  }

  /// `Female`
  String get female {
    return Intl.message(
      'Female',
      name: 'female',
      desc: '',
      args: [],
    );
  }

  /// `UPDATE!!!`
  String get update {
    return Intl.message(
      'UPDATE!!!',
      name: 'update',
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
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru'),
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
