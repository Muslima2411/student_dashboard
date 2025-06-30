import 'dart:ui';

import 'package:flutter/material.dart'
    show AppBarTheme, Brightness, Colors, ThemeData, ThemeMode, immutable;
import 'package:student_dashboard_app/src/common/styles/text_style.dart';

import 'app_colors.dart';
import 'color_scheme.dart';

/// Light Theme
final ThemeData lightMode = ThemeData(
  textTheme: const AppTextStyle(),
  brightness: Brightness.light,
  colorScheme: lightColorScheme,
  useMaterial3: true,
  scaffoldBackgroundColor: AppColors.lightBackground,
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.lightBackground,
    elevation: 0,
    surfaceTintColor: Colors.transparent,
  ),
);

/// Dark Theme
final ThemeData darkMode = ThemeData(
  textTheme: const AppTextStyle(),
  brightness: Brightness.dark,
  colorScheme: darkColorScheme,
  useMaterial3: true,
  scaffoldBackgroundColor: AppColors.darkBackground,
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.darkBackground,
    elevation: 0,
    surfaceTintColor: Colors.transparent,
  ),
);

@immutable
final class AppTheme {
  AppTheme({required this.mode}) : lightTheme = lightMode, darkTheme = darkMode;

  final ThemeMode mode;
  final ThemeData lightTheme;
  final ThemeData darkTheme;

  static ThemeData light() => lightMode;

  static ThemeData dark() => darkMode;

  /// Computes theme based on selected mode
  ThemeData computeTheme() {
    switch (mode) {
      case ThemeMode.light:
        return lightTheme;
      case ThemeMode.dark:
        return darkTheme;
      case ThemeMode.system:
        final brightness = PlatformDispatcher.instance.platformBrightness;
        return brightness == Brightness.dark ? darkTheme : lightTheme;
    }
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppTheme &&
          runtimeType == other.runtimeType &&
          mode == other.mode;

  @override
  int get hashCode => mode.hashCode;
}
