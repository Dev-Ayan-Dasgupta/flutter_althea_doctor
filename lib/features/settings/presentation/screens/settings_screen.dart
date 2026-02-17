import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/theme/typography.dart';
import '../../../../core/providers/theme_provider.dart';
import '../widgets/settings_list_tile.dart';
import '../widgets/settings_switch_tile.dart';
import '../widgets/settings_section_header.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: ListView(
        children: [
          // Appearance Section
          const SettingsSectionHeader(title: 'Appearance'),
          SettingsListTile(
            icon: Icons.palette,
            title: 'Theme',
            subtitle: _getThemeLabel(themeMode),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => _showThemeDialog(context, ref, themeMode),
          ),
          SettingsListTile(
            icon: Icons.text_fields,
            title: 'Font Size',
            subtitle: 'Medium',
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Font size settings coming soon')),
              );
            },
          ),
          const Divider(),

          // Notifications Section
          const SettingsSectionHeader(title: 'Notifications'),
          SettingsSwitchTile(
            icon: Icons.notifications,
            title: 'Push Notifications',
            subtitle: 'Receive alerts and reminders',
            value: true,
            onChanged: (value) {
              // TODO: Toggle push notifications
            },
          ),
          SettingsSwitchTile(
            icon: Icons.notifications_active,
            title: 'Critical Alerts',
            subtitle: 'High-priority patient alerts',
            value: true,
            onChanged: (value) {
              // TODO: Toggle critical alerts
            },
          ),
          SettingsSwitchTile(
            icon: Icons.schedule,
            title: 'Appointment Reminders',
            subtitle: 'Get notified before appointments',
            value: true,
            onChanged: (value) {
              // TODO: Toggle appointment reminders
            },
          ),
          const Divider(),

          // Language Section
          const SettingsSectionHeader(title: 'Language & Region'),
          SettingsListTile(
            icon: Icons.language,
            title: 'Language',
            subtitle: 'English',
            trailing: const Icon(Icons.chevron_right),
            onTap: () => _showLanguageDialog(context),
          ),
          SettingsListTile(
            icon: Icons.location_on,
            title: 'Region',
            subtitle: 'India',
            trailing: const Icon(Icons.chevron_right),
            onTap: () {},
          ),
          const Divider(),

          // Privacy & Security Section
          const SettingsSectionHeader(title: 'Privacy & Security'),
          SettingsListTile(
            icon: Icons.lock,
            title: 'Change Password',
            trailing: const Icon(Icons.chevron_right),
            onTap: () {},
          ),
          SettingsSwitchTile(
            icon: Icons.fingerprint,
            title: 'Biometric Login',
            subtitle: 'Use fingerprint or face ID',
            value: false,
            onChanged: (value) {},
          ),
          SettingsListTile(
            icon: Icons.download,
            title: 'Download My Data',
            subtitle: 'Export your data',
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Data export coming soon')),
              );
            },
          ),
          const Divider(),

          // Accessibility Section
          const SettingsSectionHeader(title: 'Accessibility'),
          SettingsSwitchTile(
            icon: Icons.accessibility,
            title: 'High Contrast',
            subtitle: 'Increase color contrast',
            value: false,
            onChanged: (value) {},
          ),
          SettingsSwitchTile(
            icon: Icons.zoom_in,
            title: 'Large Text',
            subtitle: 'Increase text size',
            value: false,
            onChanged: (value) {},
          ),
          const Divider(),

          // Data & Storage Section
          const SettingsSectionHeader(title: 'Data & Storage'),
          SettingsListTile(
            icon: Icons.storage,
            title: 'Cache',
            subtitle: '45 MB',
            trailing: TextButton(
              onPressed: () {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(const SnackBar(content: Text('Cache cleared')));
              },
              child: const Text('Clear'),
            ),
          ),
          SettingsSwitchTile(
            icon: Icons.cloud_off,
            title: 'Offline Mode',
            subtitle: 'Work without internet',
            value: false,
            onChanged: (value) {},
          ),
          const Divider(),

          // Advanced Section
          const SettingsSectionHeader(title: 'Advanced'),
          SettingsListTile(
            icon: Icons.bug_report,
            title: 'Developer Options',
            trailing: const Icon(Icons.chevron_right),
            onTap: () {},
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }

  String _getThemeLabel(AppThemeMode mode) {
    switch (mode) {
      case AppThemeMode.light:
        return 'Light';
      case AppThemeMode.dark:
        return 'Dark';
      case AppThemeMode.system:
        return 'System Default';
    }
  }

  void _showThemeDialog(
    BuildContext context,
    WidgetRef ref,
    AppThemeMode currentMode,
  ) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Choose Theme', style: AppTypography.titleLarge()),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            RadioListTile<AppThemeMode>(
              title: const Text('Light'),
              value: AppThemeMode.light,
              groupValue: currentMode,
              onChanged: (value) {
                ref.read(themeProvider.notifier).setTheme(value!);
                Navigator.pop(context);
              },
            ),
            RadioListTile<AppThemeMode>(
              title: const Text('Dark'),
              value: AppThemeMode.dark,
              groupValue: currentMode,
              onChanged: (value) {
                ref.read(themeProvider.notifier).setTheme(value!);
                Navigator.pop(context);
              },
            ),
            RadioListTile<AppThemeMode>(
              title: const Text('System Default'),
              value: AppThemeMode.system,
              groupValue: currentMode,
              onChanged: (value) {
                ref.read(themeProvider.notifier).setTheme(value!);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  void _showLanguageDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Choose Language', style: AppTypography.titleLarge()),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            RadioListTile<String>(
              title: const Text('English'),
              value: 'en',
              groupValue: 'en',
              onChanged: (value) => Navigator.pop(context),
            ),
            RadioListTile<String>(
              title: const Text('हिंदी (Hindi)'),
              value: 'hi',
              groupValue: 'en',
              onChanged: (value) {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Language support coming soon')),
                );
              },
            ),
            RadioListTile<String>(
              title: const Text('বাংলা (Bengali)'),
              value: 'bn',
              groupValue: 'en',
              onChanged: (value) {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Language support coming soon')),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
