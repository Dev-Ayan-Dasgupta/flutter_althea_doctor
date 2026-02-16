import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'color_palette.dart';
import 'typography.dart';

/// Centralized theme configuration for light and dark modes
class AppTheme {
  AppTheme._();

  // Light Theme
  static ThemeData get lightTheme => ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,

    // Color Scheme
    colorScheme: ColorScheme.light(
      primary: AppColors.primary,
      primaryContainer: AppColors.primaryLight,
      secondary: AppColors.accentCyan,
      secondaryContainer: AppColors.accentTeal,
      surface: AppColors.lightSurface,
      error: AppColors.critical,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: AppColors.lightOnSurface,
      onError: Colors.white,
      outline: AppColors.lightDivider,
      shadow: AppColors.lightShadow,
    ),

    // Scaffold Background
    scaffoldBackgroundColor: AppColors.lightBackground,

    // App Bar Theme
    appBarTheme: AppBarTheme(
      centerTitle: false,
      elevation: 0,
      scrolledUnderElevation: 2,
      backgroundColor: AppColors.lightSurface,
      foregroundColor: AppColors.lightOnSurface,
      surfaceTintColor: AppColors.primary,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      titleTextStyle: AppTypography.titleLarge(color: AppColors.lightOnSurface),
      iconTheme: const IconThemeData(color: AppColors.lightOnSurface, size: 24),
    ),

    // Card Theme
    cardTheme: CardThemeData(
      elevation: 2,
      shadowColor: AppColors.lightShadow,
      surfaceTintColor: AppColors.primary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    ),

    // Divider Theme
    dividerTheme: DividerThemeData(
      color: AppColors.lightDivider,
      thickness: 1,
      space: 1,
    ),

    // Input Decoration Theme
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.lightSurfaceVariant.withValues(alpha: 0.4),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: AppColors.lightDivider, width: 1),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColors.primary, width: 2),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColors.critical, width: 1),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColors.critical, width: 2),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      hintStyle: AppTypography.bodyMedium(
        color: AppColors.lightOnSurfaceVariant,
      ),
      labelStyle: AppTypography.bodyMedium(
        color: AppColors.lightOnSurfaceVariant,
      ),
    ),

    // Icon Theme
    iconTheme: const IconThemeData(color: AppColors.lightOnSurface, size: 24),

    // Text Theme
    textTheme: TextTheme(
      displayLarge: AppTypography.displayLarge(
        color: AppColors.lightOnBackground,
      ),
      displayMedium: AppTypography.displayMedium(
        color: AppColors.lightOnBackground,
      ),
      displaySmall: AppTypography.displaySmall(
        color: AppColors.lightOnBackground,
      ),
      headlineLarge: AppTypography.headlineLarge(
        color: AppColors.lightOnBackground,
      ),
      headlineMedium: AppTypography.headlineMedium(
        color: AppColors.lightOnBackground,
      ),
      headlineSmall: AppTypography.headlineSmall(
        color: AppColors.lightOnBackground,
      ),
      titleLarge: AppTypography.titleLarge(color: AppColors.lightOnSurface),
      titleMedium: AppTypography.titleMedium(color: AppColors.lightOnSurface),
      titleSmall: AppTypography.titleSmall(color: AppColors.lightOnSurface),
      bodyLarge: AppTypography.bodyLarge(color: AppColors.lightOnSurface),
      bodyMedium: AppTypography.bodyMedium(color: AppColors.lightOnSurface),
      bodySmall: AppTypography.bodySmall(
        color: AppColors.lightOnSurfaceVariant,
      ),
      labelLarge: AppTypography.labelLarge(color: AppColors.lightOnSurface),
      labelMedium: AppTypography.labelMedium(
        color: AppColors.lightOnSurfaceVariant,
      ),
      labelSmall: AppTypography.labelSmall(
        color: AppColors.lightOnSurfaceVariant,
      ),
    ),

    // Floating Action Button Theme
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.primary,
      foregroundColor: Colors.white,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    ),

    // Bottom Navigation Bar Theme
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.lightSurface,
      selectedItemColor: AppColors.primary,
      unselectedItemColor: AppColors.lightOnSurfaceVariant,
      type: BottomNavigationBarType.fixed,
      elevation: 8,
      selectedLabelStyle: AppTypography.labelSmall(),
      unselectedLabelStyle: AppTypography.labelSmall(),
    ),

    // Dialog Theme
    dialogTheme: DialogThemeData(
      backgroundColor: AppColors.lightSurface,
      elevation: 24,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
      titleTextStyle: AppTypography.headlineSmall(
        color: AppColors.lightOnSurface,
      ),
      contentTextStyle: AppTypography.bodyMedium(
        color: AppColors.lightOnSurfaceVariant,
      ),
    ),

    // Snackbar Theme
    snackBarTheme: SnackBarThemeData(
      backgroundColor: AppColors.darkSurface,
      contentTextStyle: AppTypography.bodyMedium(
        color: AppColors.darkOnSurface,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      behavior: SnackBarBehavior.floating,
      elevation: 6,
    ),
  );

  // Dark Theme
  static ThemeData get darkTheme => ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,

    // Color Scheme
    colorScheme: ColorScheme.dark(
      primary: AppColors.primaryLight,
      primaryContainer: AppColors.primaryDark,
      secondary: AppColors.accentCyan,
      secondaryContainer: AppColors.accentTeal,
      surface: AppColors.darkSurface,
      error: AppColors.critical,
      onPrimary: AppColors.darkBackground,
      onSecondary: AppColors.darkBackground,
      onSurface: AppColors.darkOnSurface,
      onError: Colors.white,
      outline: AppColors.darkDivider,
      shadow: AppColors.darkShadow,
    ),

    // Scaffold Background
    scaffoldBackgroundColor: AppColors.darkBackground,

    // App Bar Theme
    appBarTheme: AppBarTheme(
      centerTitle: false,
      elevation: 0,
      scrolledUnderElevation: 2,
      backgroundColor: AppColors.darkSurface,
      foregroundColor: AppColors.darkOnSurface,
      surfaceTintColor: AppColors.primaryLight,
      systemOverlayStyle: SystemUiOverlayStyle.light,
      titleTextStyle: AppTypography.titleLarge(color: AppColors.darkOnSurface),
      iconTheme: const IconThemeData(color: AppColors.darkOnSurface, size: 24),
    ),

    // Card Theme
    cardTheme: CardThemeData(
      elevation: 2,
      shadowColor: AppColors.darkShadow,
      surfaceTintColor: AppColors.primaryLight,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    ),

    // Divider Theme
    dividerTheme: DividerThemeData(
      color: AppColors.darkDivider,
      thickness: 1,
      space: 1,
    ),

    // Input Decoration Theme
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.darkSurfaceVariant.withValues(alpha: 0.4),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: AppColors.darkDivider, width: 1),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColors.primaryLight, width: 2),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColors.critical, width: 1),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColors.critical, width: 2),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      hintStyle: AppTypography.bodyMedium(
        color: AppColors.darkOnSurfaceVariant,
      ),
      labelStyle: AppTypography.bodyMedium(
        color: AppColors.darkOnSurfaceVariant,
      ),
    ),

    // Icon Theme
    iconTheme: const IconThemeData(color: AppColors.darkOnSurface, size: 24),

    // Text Theme
    textTheme: TextTheme(
      displayLarge: AppTypography.displayLarge(
        color: AppColors.darkOnBackground,
      ),
      displayMedium: AppTypography.displayMedium(
        color: AppColors.darkOnBackground,
      ),
      displaySmall: AppTypography.displaySmall(
        color: AppColors.darkOnBackground,
      ),
      headlineLarge: AppTypography.headlineLarge(
        color: AppColors.darkOnBackground,
      ),
      headlineMedium: AppTypography.headlineMedium(
        color: AppColors.darkOnBackground,
      ),
      headlineSmall: AppTypography.headlineSmall(
        color: AppColors.darkOnBackground,
      ),
      titleLarge: AppTypography.titleLarge(color: AppColors.darkOnSurface),
      titleMedium: AppTypography.titleMedium(color: AppColors.darkOnSurface),
      titleSmall: AppTypography.titleSmall(color: AppColors.darkOnSurface),
      bodyLarge: AppTypography.bodyLarge(color: AppColors.darkOnSurface),
      bodyMedium: AppTypography.bodyMedium(color: AppColors.darkOnSurface),
      bodySmall: AppTypography.bodySmall(color: AppColors.darkOnSurfaceVariant),
      labelLarge: AppTypography.labelLarge(color: AppColors.darkOnSurface),
      labelMedium: AppTypography.labelMedium(
        color: AppColors.darkOnSurfaceVariant,
      ),
      labelSmall: AppTypography.labelSmall(
        color: AppColors.darkOnSurfaceVariant,
      ),
    ),

    // Floating Action Button Theme
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.primaryLight,
      foregroundColor: AppColors.darkBackground,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    ),

    // Bottom Navigation Bar Theme
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.darkSurface,
      selectedItemColor: AppColors.primaryLight,
      unselectedItemColor: AppColors.darkOnSurfaceVariant,
      type: BottomNavigationBarType.fixed,
      elevation: 8,
      selectedLabelStyle: AppTypography.labelSmall(),
      unselectedLabelStyle: AppTypography.labelSmall(),
    ),

    // Dialog Theme
    dialogTheme: DialogThemeData(
      backgroundColor: AppColors.darkSurface,
      elevation: 24,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
      titleTextStyle: AppTypography.headlineSmall(
        color: AppColors.darkOnSurface,
      ),
      contentTextStyle: AppTypography.bodyMedium(
        color: AppColors.darkOnSurfaceVariant,
      ),
    ),

    // Snackbar Theme
    snackBarTheme: SnackBarThemeData(
      backgroundColor: AppColors.darkSurfaceVariant,
      contentTextStyle: AppTypography.bodyMedium(
        color: AppColors.darkOnSurface,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      behavior: SnackBarBehavior.floating,
      elevation: 6,
    ),
  );
}
