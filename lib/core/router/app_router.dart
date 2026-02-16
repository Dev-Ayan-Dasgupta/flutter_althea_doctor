import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../utils/constants.dart';

/// App router configuration using go_router
class AppRouter {
  AppRouter._();

  static final GoRouter router = GoRouter(
    initialLocation: RoutePaths.splash,
    debugLogDiagnostics: true,
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

      // Home Shell with Bottom Navigation
      ShellRoute(
        builder: (context, state, child) {
          return HomeShell(child: child);
        },
        routes: [
          // Home Dashboard
          GoRoute(
            path: RoutePaths.home,
            name: 'home',
            builder: (context, state) => const HomeDashboard(),
          ),

          // Risk Watch (Command Center)
          GoRoute(
            path: RoutePaths.riskWatch,
            name: 'risk-watch',
            builder: (context, state) => const RiskWatchScreen(),
          ),

          // Digital Twin
          GoRoute(
            path: '${RoutePaths.digitalTwin}/:patientId',
            name: 'digital-twin',
            builder: (context, state) {
              final patientId = state.pathParameters['patientId']!;
              return DigitalTwinScreen(patientId: patientId);
            },
          ),

          // Clinical Correlation
          GoRoute(
            path: RoutePaths.clinicalCorrelation,
            name: 'clinical-correlation',
            builder: (context, state) => const ClinicalCorrelationScreen(),
          ),

          // Order Execution
          GoRoute(
            path: RoutePaths.orderExecution,
            name: 'order-execution',
            builder: (context, state) => const OrderExecutionScreen(),
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

          // Collaboration (MDT War Room)
          GoRoute(
            path: RoutePaths.collaboration,
            name: 'collaboration',
            builder: (context, state) => const CollaborationScreen(),
          ),

          // Wallet
          GoRoute(
            path: RoutePaths.wallet,
            name: 'wallet',
            builder: (context, state) => const WalletScreen(),
          ),

          // Scheduling
          GoRoute(
            path: RoutePaths.scheduling,
            name: 'scheduling',
            builder: (context, state) => const SchedulingScreen(),
          ),

          // Portfolio Summary
          GoRoute(
            path: RoutePaths.portfolioSummary,
            name: 'portfolio-summary',
            builder: (context, state) => const PortfolioSummaryScreen(),
          ),
        ],
      ),

      // Profile (outside shell)
      GoRoute(
        path: RoutePaths.profile,
        name: 'profile',
        builder: (context, state) => const ProfileScreen(),
      ),
    ],
    errorBuilder: (context, state) => ErrorScreen(error: state.error),
  );
}

// Placeholder screens (will be implemented in phases)

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Splash Screen - Phase 1')));
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Login Screen - Phase 1')));
  }
}

class HomeShell extends StatelessWidget {
  final Widget child;

  const HomeShell({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Patients'),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Schedule',
          ),
        ],
      ),
    );
  }
}

class HomeDashboard extends StatelessWidget {
  const HomeDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Home Dashboard - Phase 2+')),
    );
  }
}

class RiskWatchScreen extends StatelessWidget {
  const RiskWatchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Risk Watch - Phase 2')));
  }
}

class DigitalTwinScreen extends StatelessWidget {
  final String patientId;

  const DigitalTwinScreen({super.key, required this.patientId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Digital Twin - Phase 3\nPatient: $patientId')),
    );
  }
}

class ClinicalCorrelationScreen extends StatelessWidget {
  const ClinicalCorrelationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Clinical Correlation - Phase 4')),
    );
  }
}

class OrderExecutionScreen extends StatelessWidget {
  const OrderExecutionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Order Execution - Phase 5')),
    );
  }
}

class TelepresenceScreen extends StatelessWidget {
  const TelepresenceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Telepresence - Phase 6')));
  }
}

class AmbientScribeScreen extends StatelessWidget {
  const AmbientScribeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Ambient Scribe - Phase 7')),
    );
  }
}

class CollaborationScreen extends StatelessWidget {
  const CollaborationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Collaboration - Phase 8')));
  }
}

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Wallet - Phase 8')));
  }
}

class SchedulingScreen extends StatelessWidget {
  const SchedulingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Scheduling - Phase 8')));
  }
}

class PortfolioSummaryScreen extends StatelessWidget {
  const PortfolioSummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Portfolio Summary - Phase 9')),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: const Center(child: Text('Profile Screen')),
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
        child: Text('Error: ${error?.toString() ?? 'Unknown error'}'),
      ),
    );
  }
}
