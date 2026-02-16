import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Typography system using Baloo Bhaijaan 2
class AppTypography {
  AppTypography._();

  static const String _fontFamily = 'BalooBhaijaan2';

  // Fallback to Google Fonts if local font fails
  static TextStyle _baseStyle(TextStyle style) {
    try {
      return style.copyWith(fontFamily: _fontFamily);
    } catch (e) {
      return GoogleFonts.balooBhaijaan2(textStyle: style);
    }
  }

  // Display Styles (Large Headings)
  static TextStyle displayLarge({Color? color}) => _baseStyle(
    TextStyle(
      fontSize: 57,
      fontWeight: FontWeight.w800,
      letterSpacing: -0.25,
      height: 1.12,
      color: color,
    ),
  );

  static TextStyle displayMedium({Color? color}) => _baseStyle(
    TextStyle(
      fontSize: 45,
      fontWeight: FontWeight.w700,
      letterSpacing: 0,
      height: 1.16,
      color: color,
    ),
  );

  static TextStyle displaySmall({Color? color}) => _baseStyle(
    TextStyle(
      fontSize: 36,
      fontWeight: FontWeight.w700,
      letterSpacing: 0,
      height: 1.22,
      color: color,
    ),
  );

  // Headline Styles
  static TextStyle headlineLarge({Color? color}) => _baseStyle(
    TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.w700,
      letterSpacing: 0,
      height: 1.25,
      color: color,
    ),
  );

  static TextStyle headlineMedium({Color? color}) => _baseStyle(
    TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w600,
      letterSpacing: 0,
      height: 1.29,
      color: color,
    ),
  );

  static TextStyle headlineSmall({Color? color}) => _baseStyle(
    TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      letterSpacing: 0,
      height: 1.33,
      color: color,
    ),
  );

  // Title Styles
  static TextStyle titleLarge({Color? color}) => _baseStyle(
    TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w600,
      letterSpacing: 0,
      height: 1.27,
      color: color,
    ),
  );

  static TextStyle titleMedium({Color? color}) => _baseStyle(
    TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.15,
      height: 1.5,
      color: color,
    ),
  );

  static TextStyle titleSmall({Color? color}) => _baseStyle(
    TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.1,
      height: 1.43,
      color: color,
    ),
  );

  // Body Styles
  static TextStyle bodyLarge({Color? color}) => _baseStyle(
    TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
      height: 1.5,
      color: color,
    ),
  );

  static TextStyle bodyMedium({Color? color}) => _baseStyle(
    TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
      height: 1.43,
      color: color,
    ),
  );

  static TextStyle bodySmall({Color? color}) => _baseStyle(
    TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
      height: 1.33,
      color: color,
    ),
  );

  // Label Styles
  static TextStyle labelLarge({Color? color}) => _baseStyle(
    TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
      height: 1.43,
      color: color,
    ),
  );

  static TextStyle labelMedium({Color? color}) => _baseStyle(
    TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
      height: 1.33,
      color: color,
    ),
  );

  static TextStyle labelSmall({Color? color}) => _baseStyle(
    TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
      height: 1.45,
      color: color,
    ),
  );

  // Special Styles
  static TextStyle caption({Color? color}) => _baseStyle(
    TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
      height: 1.33,
      color: color,
    ),
  );

  static TextStyle overline({Color? color}) => _baseStyle(
    TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w500,
      letterSpacing: 1.5,
      height: 1.6,
      color: color,
    ),
  );

  // Clinical-Specific Styles
  static TextStyle vitalValue({Color? color}) => _baseStyle(
    TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.w700,
      letterSpacing: -0.5,
      height: 1.2,
      color: color,
      fontFeatures: [const FontFeature.tabularFigures()],
    ),
  );

  static TextStyle vitalUnit({Color? color}) => _baseStyle(
    TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.25,
      color: color,
    ),
  );

  static TextStyle statusBadge({Color? color}) => _baseStyle(
    TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.8,
      color: color,
    ),
  );
}
