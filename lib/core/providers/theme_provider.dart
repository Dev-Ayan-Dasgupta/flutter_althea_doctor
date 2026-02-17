import 'package:flutter/material.dart' as material;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'theme_provider.g.dart';

enum AppThemeMode { light, dark, system }

@riverpod
class ThemeNotifier extends _$ThemeNotifier {
  static const String _themeKey = 'theme_mode';

  @override
  AppThemeMode build() {
    _loadTheme();
    return AppThemeMode.system;
  }

  Future<void> _loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final themeName = prefs.getString(_themeKey) ?? 'system';
    state = AppThemeMode.values.firstWhere(
      (e) => e.name == themeName,
      orElse: () => AppThemeMode.system,
    );
  }

  Future<void> setTheme(AppThemeMode mode) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_themeKey, mode.name);
    state = mode;
  }

  material.ThemeMode get flutterThemeMode {
    switch (state) {
      case AppThemeMode.light:
        return material.ThemeMode.light;
      case AppThemeMode.dark:
        return material.ThemeMode.dark;
      case AppThemeMode.system:
        return material.ThemeMode.system;
    }
    throw UnimplementedError('Unknown theme mode: $state');
  }
}
