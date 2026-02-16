import 'package:flutter_althea_doctor/core/providers/theme_provider.dart'
    as flutter;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'theme_provider.g.dart';

enum ThemeMode { light, dark, system }

@riverpod
class ThemeNotifier extends _$ThemeNotifier {
  static const String _themeKey = 'theme_mode';

  @override
  ThemeMode build() {
    _loadTheme();
    return ThemeMode.system;
  }

  Future<void> _loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final themeName = prefs.getString(_themeKey) ?? 'system';
    state = ThemeMode.values.firstWhere(
      (e) => e.name == themeName,
      orElse: () => ThemeMode.system,
    );
  }

  Future<void> setTheme(ThemeMode mode) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_themeKey, mode.name);
    state = mode;
  }

  ThemeModeFlutter get flutterThemeMode {
    switch (state) {
      case ThemeMode.light:
        return ThemeModeFlutter.light;
      case ThemeMode.dark:
        return ThemeModeFlutter.dark;
      case ThemeMode.system:
        return ThemeModeFlutter.system;
    }
  }
}

// Alias to avoid conflict with Flutter's ThemeMode
typedef ThemeModeFlutter = flutter.ThemeMode;
