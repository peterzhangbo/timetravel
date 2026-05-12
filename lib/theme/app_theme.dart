import 'package:flutter/material.dart';

class AppColors {
  static const background = Color(0xFF0A0A0A);
  static const surface = Color(0xFF141414);
  static const card = Color(0xFF1E1E1E);
  static const accent = Color(0xFFD4AF37);
  static const textPrimary = Color(0xFFFFFFFF);
  static const textSecondary = Color(0xFF8A8A8A);
  static const divider = Color(0xFF2A2A2A);
}

// Each decade gets its own accent hue
Color eraColor(int decade) {
  switch (decade) {
    case 1950: return const Color(0xFFD4A574); // warm sepia
    case 1960: return const Color(0xFFE8B4B8); // pastel pink
    case 1970: return const Color(0xFFD4AF37); // gold
    case 1980: return const Color(0xFFFF6EC7); // neon pink
    case 1990: return const Color(0xFF00CED1); // teal
    case 2000: return const Color(0xFF7B68EE); // medium slate
    case 2010: return const Color(0xFF1E90FF); // dodger blue
    case 2020: return const Color(0xFF00E5FF); // cyan
    default:   return AppColors.accent;
  }
}

ThemeData buildAppTheme() {
  return ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.background,
    colorScheme: const ColorScheme.dark(
      primary: AppColors.accent,
      surface: AppColors.surface,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: AppColors.textPrimary,
        letterSpacing: 1.2,
      ),
    ),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w700,
        color: AppColors.textPrimary,
        letterSpacing: -0.5,
      ),
      titleLarge: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        color: AppColors.textPrimary,
      ),
      titleMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppColors.textPrimary,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        color: AppColors.textSecondary,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        color: AppColors.textSecondary,
      ),
    ),
  );
}
