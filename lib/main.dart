import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'core/theme/app_theme.dart';
import 'core/providers/theme_provider.dart';
import 'core/router/app_router.dart';
import 'core/widgets/offline_banner.dart';

void main() {
  runApp(const ProviderScope(child: AltheaExpertsApp()));
}

class AltheaExpertsApp extends ConsumerWidget {
  const AltheaExpertsApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch the theme state to trigger rebuilds
    ref.watch(themeProvider);

    // Get the Flutter ThemeMode from the notifier
    final themeModeFlutter = ref.read(themeProvider.notifier).flutterThemeMode;

    return MaterialApp.router(
      title: 'AltheaCare Doctor',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeModeFlutter,
      routerConfig: AppRouter.router,
      builder: (context, child) {
        return OfflineBanner(child: child ?? const SizedBox());
      },
    );
  }
}
