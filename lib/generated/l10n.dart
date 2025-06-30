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

class AppLocalizations {
  AppLocalizations();

  static AppLocalizations? _current;

  static AppLocalizations get current {
    assert(
      _current != null,
      'No instance of AppLocalizations was loaded. Try to initialize the AppLocalizations delegate before accessing AppLocalizations.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<AppLocalizations> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = AppLocalizations();
      AppLocalizations._current = instance;

      return instance;
    });
  }

  static AppLocalizations of(BuildContext context) {
    final instance = AppLocalizations.maybeOf(context);
    assert(
      instance != null,
      'No instance of AppLocalizations present in the widget tree. Did you add AppLocalizations.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static AppLocalizations? maybeOf(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  /// `Время`
  String get time {
    return Intl.message('Время', name: 'time', desc: '', args: []);
  }

  /// `Курс`
  String get course {
    return Intl.message('Курс', name: 'course', desc: '', args: []);
  }

  /// `Мой Профиль`
  String get myProfile {
    return Intl.message('Мой Профиль', name: 'myProfile', desc: '', args: []);
  }

  /// `Контактные данные`
  String get contactDetails {
    return Intl.message(
      'Контактные данные',
      name: 'contactDetails',
      desc: '',
      args: [],
    );
  }

  /// `Номер телефона`
  String get contactNo {
    return Intl.message(
      'Номер телефона',
      name: 'contactNo',
      desc: '',
      args: [],
    );
  }

  /// `Электронная почта`
  String get email {
    return Intl.message('Электронная почта', name: 'email', desc: '', args: []);
  }

  /// `Адрес`
  String get address {
    return Intl.message('Адрес', name: 'address', desc: '', args: []);
  }

  /// `Редактировать`
  String get edit {
    return Intl.message('Редактировать', name: 'edit', desc: '', args: []);
  }

  /// `Мои текущие курсы`
  String get ongoingCourses {
    return Intl.message(
      'Мои текущие курсы',
      name: 'ongoingCourses',
      desc: '',
      args: [],
    );
  }

  /// `Мои учебные центры`
  String get eduCenters {
    return Intl.message(
      'Мои учебные центры',
      name: 'eduCenters',
      desc: '',
      args: [],
    );
  }

  /// `Понедельник`
  String get monday {
    return Intl.message('Понедельник', name: 'monday', desc: '', args: []);
  }

  /// `Вторник`
  String get tuesday {
    return Intl.message('Вторник', name: 'tuesday', desc: '', args: []);
  }

  /// `Среда`
  String get wednesday {
    return Intl.message('Среда', name: 'wednesday', desc: '', args: []);
  }

  /// `Четверг`
  String get thursday {
    return Intl.message('Четверг', name: 'thursday', desc: '', args: []);
  }

  /// `Пятница`
  String get friday {
    return Intl.message('Пятница', name: 'friday', desc: '', args: []);
  }

  /// `Суббота`
  String get saturday {
    return Intl.message('Суббота', name: 'saturday', desc: '', args: []);
  }

  /// `Воскресенье`
  String get sunday {
    return Intl.message('Воскресенье', name: 'sunday', desc: '', args: []);
  }

  /// `Посещаемость`
  String get attendance {
    return Intl.message('Посещаемость', name: 'attendance', desc: '', args: []);
  }

  /// `Курс IELTS`
  String get ielts_course {
    return Intl.message('Курс IELTS', name: 'ielts_course', desc: '', args: []);
  }

  /// `Грамматика`
  String get grammar_course {
    return Intl.message(
      'Грамматика',
      name: 'grammar_course',
      desc: '',
      args: [],
    );
  }

  /// `Войдите в свою учетную запись`
  String get signInTitle {
    return Intl.message(
      'Войдите в свою учетную запись',
      name: 'signInTitle',
      desc: '',
      args: [],
    );
  }

  /// `Введите свою почту и пароль для входа`
  String get signInSubtitle {
    return Intl.message(
      'Введите свою почту и пароль для входа',
      name: 'signInSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Пароль`
  String get password {
    return Intl.message('Пароль', name: 'password', desc: '', args: []);
  }

  /// `Войти`
  String get loginButton {
    return Intl.message('Войти', name: 'loginButton', desc: '', args: []);
  }

  /// `Настройки`
  String get settings {
    return Intl.message('Настройки', name: 'settings', desc: '', args: []);
  }

  /// `Язык`
  String get language {
    return Intl.message('Язык', name: 'language', desc: '', args: []);
  }

  /// `Тема`
  String get theme {
    return Intl.message('Тема', name: 'theme', desc: '', args: []);
  }

  /// `Светлая`
  String get light {
    return Intl.message('Светлая', name: 'light', desc: '', args: []);
  }

  /// `Тёмная`
  String get dark {
    return Intl.message('Тёмная', name: 'dark', desc: '', args: []);
  }

  /// `Главная`
  String get home {
    return Intl.message('Главная', name: 'home', desc: '', args: []);
  }

  /// `Аналитика`
  String get analytics {
    return Intl.message('Аналитика', name: 'analytics', desc: '', args: []);
  }

  /// `Профиль`
  String get profile {
    return Intl.message('Профиль', name: 'profile', desc: '', args: []);
  }

  /// `Вс`
  String get sundayShort {
    return Intl.message('Вс', name: 'sundayShort', desc: '', args: []);
  }

  /// `Пн`
  String get mondayShort {
    return Intl.message('Пн', name: 'mondayShort', desc: '', args: []);
  }

  /// `Вт`
  String get tuesdayShort {
    return Intl.message('Вт', name: 'tuesdayShort', desc: '', args: []);
  }

  /// `Ср`
  String get wednesdayShort {
    return Intl.message('Ср', name: 'wednesdayShort', desc: '', args: []);
  }

  /// `Чт`
  String get thursdayShort {
    return Intl.message('Чт', name: 'thursdayShort', desc: '', args: []);
  }

  /// `Пт`
  String get fridayShort {
    return Intl.message('Пт', name: 'fridayShort', desc: '', args: []);
  }

  /// `Сб`
  String get saturdayShort {
    return Intl.message('Сб', name: 'saturdayShort', desc: '', args: []);
  }

  /// `Имя пользователя`
  String get username {
    return Intl.message(
      'Имя пользователя',
      name: 'username',
      desc: '',
      args: [],
    );
  }

  /// `Телефон`
  String get phone {
    return Intl.message('Телефон', name: 'phone', desc: '', args: []);
  }

  /// `Информация профиля`
  String get profileInfo {
    return Intl.message(
      'Информация профиля',
      name: 'profileInfo',
      desc: '',
      args: [],
    );
  }

  /// `Сменить пароль`
  String get changePassword {
    return Intl.message(
      'Сменить пароль',
      name: 'changePassword',
      desc: '',
      args: [],
    );
  }

  /// `Выйти`
  String get logout {
    return Intl.message('Выйти', name: 'logout', desc: '', args: []);
  }

  /// `Сохранить`
  String get save {
    return Intl.message('Сохранить', name: 'save', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'ru'),
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'uz'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<AppLocalizations> load(Locale locale) => AppLocalizations.load(locale);
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
