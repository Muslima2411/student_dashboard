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

  /// `Выберите язык`
  String get choose_lang {
    return Intl.message(
      'Выберите язык',
      name: 'choose_lang',
      desc: '',
      args: [],
    );
  }

  /// `Выбрать`
  String get choose {
    return Intl.message('Выбрать', name: 'choose', desc: '', args: []);
  }

  /// `Нет интернета. Проверьте подключение к интернету`
  String get lost_internet_connection {
    return Intl.message(
      'Нет интернета. Проверьте подключение к интернету',
      name: 'lost_internet_connection',
      desc: '',
      args: [],
    );
  }

  /// `Дата`
  String get date {
    return Intl.message('Дата', name: 'date', desc: '', args: []);
  }

  /// `Настройки`
  String get settings {
    return Intl.message('Настройки', name: 'settings', desc: '', args: []);
  }

  /// `Выберите цвет`
  String get choose_mode {
    return Intl.message(
      'Выберите цвет',
      name: 'choose_mode',
      desc: '',
      args: [],
    );
  }

  /// `Белый`
  String get white {
    return Intl.message('Белый', name: 'white', desc: '', args: []);
  }

  /// `Черный`
  String get black {
    return Intl.message('Черный', name: 'black', desc: '', args: []);
  }

  /// `Профиль`
  String get profile_title {
    return Intl.message('Профиль', name: 'profile_title', desc: '', args: []);
  }

  /// `Язык`
  String get profile_language {
    return Intl.message('Язык', name: 'profile_language', desc: '', args: []);
  }

  /// `Тема`
  String get profile_theme {
    return Intl.message('Тема', name: 'profile_theme', desc: '', args: []);
  }

  /// `Сегодня`
  String get today {
    return Intl.message('Сегодня', name: 'today', desc: '', args: []);
  }

  /// `17 сентября`
  String get sentabr {
    return Intl.message('17 сентября', name: 'sentabr', desc: '', args: []);
  }

  /// `Создать новую задачу`
  String get create_new_tasks {
    return Intl.message(
      'Создать новую задачу',
      name: 'create_new_tasks',
      desc: '',
      args: [],
    );
  }

  /// `Название задачи`
  String get new_tasks {
    return Intl.message(
      'Название задачи',
      name: 'new_tasks',
      desc: '',
      args: [],
    );
  }

  /// `Категория`
  String get categories {
    return Intl.message('Категория', name: 'categories', desc: '', args: []);
  }

  /// `Начало`
  String get start_time {
    return Intl.message('Начало', name: 'start_time', desc: '', args: []);
  }

  /// `Описание`
  String get desc {
    return Intl.message('Описание', name: 'desc', desc: '', args: []);
  }

  /// `Создать`
  String get create {
    return Intl.message('Создать', name: 'create', desc: '', args: []);
  }

  /// `Дизайн`
  String get design {
    return Intl.message('Дизайн', name: 'design', desc: '', args: []);
  }

  /// `Русский`
  String get russian {
    return Intl.message('Русский', name: 'russian', desc: '', args: []);
  }

  /// `Узбекский`
  String get uzbek {
    return Intl.message('Узбекский', name: 'uzbek', desc: '', args: []);
  }

  /// `Светлый режим`
  String get light {
    return Intl.message('Светлый режим', name: 'light', desc: '', args: []);
  }

  /// `Тёмный режим`
  String get dark {
    return Intl.message('Тёмный режим', name: 'dark', desc: '', args: []);
  }

  /// `Январь`
  String get january {
    return Intl.message('Январь', name: 'january', desc: '', args: []);
  }

  /// `Февраль`
  String get february {
    return Intl.message('Февраль', name: 'february', desc: '', args: []);
  }

  /// `Март`
  String get march {
    return Intl.message('Март', name: 'march', desc: '', args: []);
  }

  /// `Апрель`
  String get april {
    return Intl.message('Апрель', name: 'april', desc: '', args: []);
  }

  /// `Май`
  String get may {
    return Intl.message('Май', name: 'may', desc: '', args: []);
  }

  /// `Июнь`
  String get june {
    return Intl.message('Июнь', name: 'june', desc: '', args: []);
  }

  /// `Июль`
  String get july {
    return Intl.message('Июль', name: 'july', desc: '', args: []);
  }

  /// `Август`
  String get august {
    return Intl.message('Август', name: 'august', desc: '', args: []);
  }

  /// `Сентябрь`
  String get september {
    return Intl.message('Сентябрь', name: 'september', desc: '', args: []);
  }

  /// `Октябрь`
  String get october {
    return Intl.message('Октябрь', name: 'october', desc: '', args: []);
  }

  /// `Ноябрь`
  String get november {
    return Intl.message('Ноябрь', name: 'november', desc: '', args: []);
  }

  /// `Декабрь`
  String get december {
    return Intl.message('Декабрь', name: 'december', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'ru'),
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
