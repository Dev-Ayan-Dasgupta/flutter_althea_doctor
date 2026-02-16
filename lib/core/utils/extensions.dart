import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../router/app_router.dart';
import '../services/export.dart';
import '../theme/export.dart';
import 'export.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize encryption service for HIPAA compliance
  await EncryptionService().initialize();

  runApp(const ProviderScope(child: AltheaExpertsApp()));
}

class AltheaExpertsApp extends StatelessWidget {
  const AltheaExpertsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: AppConstants.appName,
      debugShowCheckedModeBanner: false,

      // Theme configuration
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,

      // Router configuration
      routerConfig: AppRouter.router,

      // Localization (future expansion)
      // locale: const Locale('en', 'IN'),
      // supportedLocales: const [
      //   Locale('en', 'IN'),
      //   Locale('hi', 'IN'),
      // ],
    );
  }
}
