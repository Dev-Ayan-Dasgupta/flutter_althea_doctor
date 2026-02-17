import 'package:go_router/go_router.dart';
import '../../features/auth/presentation/screens/login_screen.dart';
import '../../features/auth/presentation/screens/splash_screen.dart';
import '../../features/dashboard/presentation/screens/dashboard_screen.dart';
import '../../features/home/presentation/widgets/app_shell.dart';
import '../../features/onboarding/presentations/screens/onboarding_screen.dart';
import '../../features/risk_watch/presentation/screens/risk_watch_screen.dart';
import '../../features/telepresence/presentation/screens/telepresence_screen.dart';
import '../../features/ambient_scribe/presentation/screens/ambient_scribe_screen.dart';
import '../../features/notifications/presentation/screens/notifications_screen.dart';
import '../../features/settings/presentation/screens/settings_screen.dart';
import '../../features/profile/presentation/screens/view_profile_screen.dart';
import '../../features/profile/presentation/screens/edit_profile_screen.dart';
import '../../features/menu/presentation/screens/menu_screen.dart';
import '../../features/menu/presentation/screens/about_screen.dart';
import '../../features/menu/presentation/screens/help_support_screen.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      // Splash
      GoRoute(path: '/', builder: (context, state) => const SplashScreen()),

      // Onboarding
      GoRoute(
        path: '/onboarding',
        builder: (context, state) => const OnboardingScreen(),
      ),

      // Auth
      GoRoute(path: '/login', builder: (context, state) => const LoginScreen()),

      // Main App Shell Routes
      ShellRoute(
        builder: (context, state, child) => AppShell(child: child),
        routes: [
          // Dashboard
          GoRoute(
            path: '/dashboard',
            builder: (context, state) => const DashboardScreen(),
          ),

          // Risk Watch
          GoRoute(
            path: '/risk-watch',
            builder: (context, state) => const RiskWatchScreen(),
          ),

          // Telepresence
          GoRoute(
            path: '/telepresence',
            builder: (context, state) => const TelepresenceScreen(),
          ),

          // Ambient Scribe
          GoRoute(
            path: '/ambient-scribe',
            builder: (context, state) => const AmbientScribeScreen(),
          ),

          // More/Menu
          GoRoute(
            path: '/more',
            builder: (context, state) => const MenuScreen(),
          ),
        ],
      ),

      // Standalone Routes (no shell)
      GoRoute(
        path: '/notifications',
        builder: (context, state) => const NotificationsScreen(),
      ),
      GoRoute(
        path: '/settings',
        builder: (context, state) => const SettingsScreen(),
      ),
      GoRoute(
        path: '/profile',
        builder: (context, state) => const ViewProfileScreen(),
      ),
      GoRoute(
        path: '/profile/edit',
        builder: (context, state) => const EditProfileScreen(),
      ),
      GoRoute(path: '/about', builder: (context, state) => const AboutScreen()),
      GoRoute(
        path: '/help',
        builder: (context, state) => const HelpSupportScreen(),
      ),
    ],
  );
}
