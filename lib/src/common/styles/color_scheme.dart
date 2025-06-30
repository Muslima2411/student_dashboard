import 'package:flutter/material.dart' show ColorScheme;
import 'app_colors.dart';

const ColorScheme lightColorScheme = ColorScheme.light(
  primary: AppColors.primary, // Main brand color
  secondary: AppColors.secondary, // Secondary brand
  background: AppColors.lightBackground,
  surface: AppColors.lightContainer,
  error: AppColors.error,

  onPrimary: AppColors.lightContainer, // Text/icons on primary color
  onSecondary: AppColors.textMain, // Text/icons on secondary
  onBackground: AppColors.textMain,
  onSurface: AppColors.textMain,
  onError: AppColors.lightContainer,
  tertiary: AppColors.lightBottomNav,

  // Extra (custom-mapped):
  shadow: AppColors.lightShadow,
);

ColorScheme darkColorScheme = const ColorScheme.dark(
  primary: AppColors.primary,
  secondary: AppColors.secondary,
  background: AppColors.darkBackground,
  surface: AppColors.darkContainer,
  error: AppColors.error,

  onPrimary: AppColors.darkContainer,
  onSecondary: AppColors.darkTextMain,
  onBackground: AppColors.darkTextMain,
  onSurface: AppColors.darkTextMain,
  onError: AppColors.darkContainer,
  tertiary: AppColors.darkBottomNav,

  // Extra (custom-mapped):
  shadow: AppColors.darkShadow,
);
