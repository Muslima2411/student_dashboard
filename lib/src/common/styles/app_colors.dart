import 'package:flutter/material.dart';

@immutable
final class AppColors {
  const AppColors._();

  // Common
  static const Color transparent = Colors.transparent;
  static const Color error = Color(0xFFE85136);
  static const Color success = Color(0xFF49B583);
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  // Brand Colors
  static const Color primary = Color(0xFF539DF3); // Deep Sky Blue
  static const Color secondary = Color(0xFFA3C7F7); // Soft Light Blue
  static const Color tertiary = Color(0xFFE6F0FA); // Pale Blue

  // Text Colors
  static const Color textMain = Color(0xFF212525); // Main dark text
  static const Color textSecondary = Color(0xFFBCC1CD); // Muted gray text

  // Light Theme
  static const Color lightBackground = Color(0xFFFAF9F9); // Body BG
  static const Color lightContainer = Color(0xFFFFFFFF); // Cards, inputs
  static const Color lightBottomNav = Color(0xFFFAF9F9); // Bottom bar
  static const Color lightNavbarIcon = Color(0xFF626262); // Unfocused nav icons
  static const Color lightDivider = Color(0xFFD5D5D5); // Thin dividers

  // Dark Theme (creative, matching tone & contrast)
  static const Color darkBackground = Color(
    0xFF121212,
  ); // Near black, avoids AMOLED burn-in
  static const Color darkContainer = Color(0xFF1E1E1E); // Cards, sheets
  static const Color darkBottomNav = Color(0xFF1A1A1A); // Bottom bar
  static const Color darkTextMain = Color(0xFFF5F5F5); // Bright white-ish
  static const Color darkTextSecondary = Color(0xFF9E9E9E); // Muted gray
  static const Color darkNavbarIcon = Color(0xFFB0B0B0); // Unfocused nav icons
  static const Color darkDivider = Color(0xFF2C2C2C); // Subtle separator
  static const Color darkTertiary = Color(
    0xFF2A3A4A,
  ); // Variant of #E6F0FA for dark

  // Buttons / Interactive
  static const Color buttonLight = primary;
  static const Color buttonDark = primary;

  // Shadow colors (for elevation in light/dark mode)
  static const Color lightShadow = Color(0x1A000000); // 10% black
  static const Color darkShadow = Color(0x33000000); // 20% black
}
