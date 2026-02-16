import 'package:flutter/material.dart';

/// Brand colors and design tokens for AltheaCare
class AppColors {
  AppColors._();

  // Primary Brand Colors - Light Blue to Dark Blue
  static const Color primaryLight = Color(0xFF64B5F6); // Light Blue
  static const Color primary = Color(0xFF2196F3); // Medium Blue
  static const Color primaryDark = Color(0xFF1976D2); // Dark Blue
  static const Color primaryDeep = Color(0xFF0D47A1); // Deep Blue

  // Accent Colors
  static const Color accentCyan = Color(0xFF00BCD4);
  static const Color accentTeal = Color(0xFF009688);

  // Status Colors
  static const Color critical = Color(0xFFE53935); // Red
  static const Color warning = Color(0xFFFFA726); // Orange
  static const Color success = Color(0xFF66BB6A); // Green
  static const Color info = Color(0xFF42A5F5); // Blue
  static const Color stable = Color(0xFF26A69A); // Teal

  // Neutral Colors - Light Mode
  static const Color lightBackground = Color(0xFFF5F7FA);
  static const Color lightSurface = Color(0xFFFFFFFF);
  static const Color lightSurfaceVariant = Color(0xFFE3F2FD);
  static const Color lightOnBackground = Color(0xFF1A1C1E);
  static const Color lightOnSurface = Color(0xFF1A1C1E);
  static const Color lightOnSurfaceVariant = Color(0xFF49454F);

  // Neutral Colors - Dark Mode
  static const Color darkBackground = Color(0xFF0A0E27);
  static const Color darkSurface = Color(0xFF1A1F3A);
  static const Color darkSurfaceVariant = Color(0xFF252B48);
  static const Color darkOnBackground = Color(0xFFE6E1E5);
  static const Color darkOnSurface = Color(0xFFE6E1E5);
  static const Color darkOnSurfaceVariant = Color(0xFFCAC4D0);

  // Surface Overlays (Low Opacity)
  static Color lightSurfaceOverlay = lightSurface.withValues(alpha: 0.7);
  static Color darkSurfaceOverlay = darkSurface.withValues(alpha: 0.7);

  // Divider Colors
  static Color lightDivider = lightOnSurface.withValues(alpha: 0.12);
  static Color darkDivider = darkOnSurface.withValues(alpha: 0.12);

  // Shadow Colors
  static Color lightShadow = Colors.black.withValues(alpha: 0.08);
  static Color darkShadow = Colors.black.withValues(alpha: 0.24);
}

/// Gradient Definitions
class AppGradients {
  AppGradients._();

  // Primary Gradients
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [AppColors.primaryLight, AppColors.primaryDark],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient primaryGradientVertical = LinearGradient(
    colors: [AppColors.primaryLight, AppColors.primaryDark],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const LinearGradient primaryGradientHorizontal = LinearGradient(
    colors: [AppColors.primaryLight, AppColors.primaryDark],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  // Surface Gradients (Subtle)
  static LinearGradient lightSurfaceGradient = LinearGradient(
    colors: [
      AppColors.lightSurface,
      AppColors.lightSurfaceVariant.withValues(alpha: 0.3),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static LinearGradient darkSurfaceGradient = LinearGradient(
    colors: [
      AppColors.darkSurface,
      AppColors.darkSurfaceVariant.withValues(alpha: 0.5),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  // Status Gradients
  static const LinearGradient criticalGradient = LinearGradient(
    colors: [Color(0xFFEF5350), Color(0xFFE53935)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient warningGradient = LinearGradient(
    colors: [Color(0xFFFFB74D), Color(0xFFFFA726)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient successGradient = LinearGradient(
    colors: [Color(0xFF81C784), Color(0xFF66BB6A)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient stableGradient = LinearGradient(
    colors: [Color(0xFF4DB6AC), Color(0xFF26A69A)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  // Background Gradients
  static const LinearGradient backgroundGradientLight = LinearGradient(
    colors: [Color(0xFFE3F2FD), Color(0xFFBBDEFB), Color(0xFFE1F5FE)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const LinearGradient backgroundGradientDark = LinearGradient(
    colors: [Color(0xFF0A0E27), Color(0xFF1A1F3A), Color(0xFF0D1B2A)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  // Shimmer Gradient (for loading states)
  static const LinearGradient shimmerGradient = LinearGradient(
    colors: [Color(0xFFEBEBF4), Color(0xFFF4F4F4), Color(0xFFEBEBF4)],
    stops: [0.1, 0.3, 0.4],
    begin: Alignment(-1.0, -0.3),
    end: Alignment(1.0, 0.3),
  );
}
