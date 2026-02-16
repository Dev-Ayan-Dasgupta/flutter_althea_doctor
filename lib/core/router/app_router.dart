import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../features/ambient_scribe/presentation/screens/ambient_scribe_screen.dart';
import '../../features/auth/presentation/providers/auth_providers.dart';
import '../../features/clinical_correlation/presentation/screens/clinical_correlation_screen.dart';
import '../../features/collaboration/presentation/screens/collaboration_screen.dart';
import '../../features/digital_twin/presentation/screens/digital_twin_screen.dart';
import '../../features/order_execution/presentation/screens/order_execution_screen.dart';
import '../../features/risk_watch/presentation/screens/risk_watch_screen.dart';
import '../../features/telepresence/presentation/screens/telepresence_screen.dart';
import '../../features/wallet/presentation/screens/wallet_screen.dart';
import '../utils/constants.dart';
import '../../features/auth/presentation/screens/splash_screen.dart';
import '../../features/auth/presentation/screens/login_screen.dart';
import '../../features/home/presentation/widgets/app_shell.dart';
import '../../features/home/presentation/screens/profile_screen.dart';

/// Router provider
final routerProvider = Provider<GoRouter>((ref) {
  final isAuthenticated = ref.watch(isAuthenticatedProvider);

  return GoRouter(
    initialLocation: RoutePaths.splash,
    debugLogDiagnostics: true,
    redirect: (context, state) {
      final isOnSplash = state.matchedLocation == RoutePaths.splash;
      final isOnLogin = state.matchedLocation == RoutePaths.login;

      // Allow splash screen always
      if (isOnSplash) return null;

      // If not authenticated and not on login, redirect to login
      if (!isAuthenticated && !isOnLogin) {
        return RoutePaths.login;
      }

      // If authenticated and on login, redirect to home
      if (isAuthenticated && isOnLogin) {
        return RoutePaths.home;
      }

      // No redirect needed
      return null;
    },
    routes: [
      // Splash Screen
      GoRoute(
        path: RoutePaths.splash,
        name: 'splash',
        builder: (context, state) => const SplashScreen(),
      ),

      // Login Screen
      GoRoute(
        path: RoutePaths.login,
        name: 'login',
        builder: (context, state) => const LoginScreen(),
      ),

      // Protected Routes with App Shell
      ShellRoute(
        builder: (context, state, child) {
          return AppShell(currentPath: state.matchedLocation, child: child);
        },
        routes: [
          // Home Dashboard
          GoRoute(
            path: RoutePaths.home,
            name: 'home',
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const HomeDashboard(),
            ),
          ),

          // Risk Watch
          GoRoute(
            path: RoutePaths.riskWatch,
            name: 'risk-watch',
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const RiskWatchScreen(),
            ),
            routes: [
              // Digital Twin (nested under risk watch)
              GoRoute(
                path: 'patient/:patientId',
                name: 'digital-twin',
                builder: (context, state) {
                  final patientId = state.pathParameters['patientId']!;

                  return DefaultTabController(
                    length: 7,
                    child: DigitalTwinScreen(patientId: patientId),
                  );
                },
                routes: [
                  // Add nested order execution route
                  GoRoute(
                    path: 'orders',
                    name: 'orders',
                    builder: (context, state) {
                      final patientId = state.pathParameters['patientId']!;
                      final patientName =
                          state.uri.queryParameters['name'] ??
                          'Unknown Patient';

                      return OrderExecutionScreen(
                        patientId: patientId,
                        patientName: patientName,
                      );
                    },
                  ),
                ],
              ),
            ],
          ),

          // Scheduling
          GoRoute(
            path: RoutePaths.scheduling,
            name: 'scheduling',
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const SchedulingScreen(),
            ),
          ),

          // Wallet
          GoRoute(
            path: RoutePaths.wallet,
            name: 'wallet',
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const WalletScreen(),
            ),
          ),

          // Portfolio Summary
          GoRoute(
            path: RoutePaths.portfolioSummary,
            name: 'portfolio-summary',
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const PortfolioSummaryScreen(),
            ),
          ),

          // Clinical Correlation
          GoRoute(
            path: RoutePaths.clinicalCorrelation,
            name: 'clinical-correlation',
            builder: (context, state) =>
                const ClinicalCorrelationScreen(patientId: 'demo-patient'),
          ),

          // Telepresence
          GoRoute(
            path: RoutePaths.telepresence,
            name: 'telepresence',
            builder: (context, state) => const TelepresenceScreen(),
          ),

          // Ambient Scribe
          GoRoute(
            path: RoutePaths.ambientScribe,
            name: 'ambient-scribe',
            builder: (context, state) => const AmbientScribeScreen(),
          ),

          // Collaboration
          GoRoute(
            path: RoutePaths.collaboration,
            name: 'collaboration',
            builder: (context, state) => const CollaborationScreen(),
          ),
        ],
      ),

      // Profile (outside shell, full screen)
      GoRoute(
        path: RoutePaths.profile,
        name: 'profile',
        builder: (context, state) => const ProfileScreen(),
      ),
    ],
    errorBuilder: (context, state) => ErrorScreen(error: state.error),
  );
});

// Placeholder screens (will be implemented in phases)

class HomeDashboard extends StatelessWidget {
  const HomeDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.construction, size: 64, color: Colors.grey),
          const SizedBox(height: 16),
          Text(
            'Home Dashboard',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 8),
          Text(
            'Coming in Phase 2+',
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

class SchedulingScreen extends StatelessWidget {
  const SchedulingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.calendar_today, size: 64, color: Colors.grey),
          const SizedBox(height: 16),
          Text('Scheduling', style: Theme.of(context).textTheme.headlineSmall),
          const SizedBox(height: 8),
          Text(
            'Phase 8: Smart Scheduling',
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

class PortfolioSummaryScreen extends StatelessWidget {
  const PortfolioSummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.analytics, size: 64, color: Colors.grey),
          const SizedBox(height: 16),
          Text(
            'AI Portfolio Summary',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 8),
          Text(
            'Phase 9: Clinical Intelligence Dashboard',
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

class ErrorScreen extends StatelessWidget {
  final Exception? error;

  const ErrorScreen({super.key, this.error});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, size: 64, color: Colors.red),
            const SizedBox(height: 16),
            Text('Error', style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 8),
            Text(
              error?.toString() ?? 'Unknown error',
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
