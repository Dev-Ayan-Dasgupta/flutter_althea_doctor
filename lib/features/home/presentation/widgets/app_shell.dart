import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theme/color_palette.dart';
import '../../../../core/theme/typography.dart';
import '../../../../core/utils/responsive.dart';
import '../../../../core/utils/constants.dart';
import '../../../auth/presentation/providers/auth_providers.dart';
import '../../../auth/presentation/state/auth_notifier.dart';

/// App shell with responsive navigation (bottom nav for mobile, sidebar for tablet/desktop)
class AppShell extends ConsumerStatefulWidget {
  final Widget child;
  final String currentPath;

  const AppShell({super.key, required this.child, required this.currentPath});

  @override
  ConsumerState<AppShell> createState() => _AppShellState();
}

class _AppShellState extends ConsumerState<AppShell> {
  int _selectedIndex = 0;

  @override
  void didUpdateWidget(AppShell oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.currentPath != widget.currentPath) {
      _updateSelectedIndex();
    }
  }

  @override
  void initState() {
    super.initState();
    _updateSelectedIndex();
  }

  void _updateSelectedIndex() {
    final path = widget.currentPath;

    if (path.startsWith(RoutePaths.home)) {
      _selectedIndex = 0;
    } else if (path.startsWith(RoutePaths.riskWatch)) {
      _selectedIndex = 1;
    } else if (path.startsWith(RoutePaths.scheduling)) {
      _selectedIndex = 2;
    } else if (path.startsWith(RoutePaths.wallet)) {
      _selectedIndex = 3;
    } else if (path.startsWith(RoutePaths.portfolioSummary)) {
      _selectedIndex = 4;
    } else {
      _selectedIndex = 0;
    }

    if (mounted) {
      setState(() {});
    }
  }

  void _onDestinationSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        context.go(RoutePaths.home);
        break;
      case 1:
        context.go(RoutePaths.riskWatch);
        break;
      case 2:
        context.go(RoutePaths.scheduling);
        break;
      case 3:
        context.go(RoutePaths.wallet);
        break;
      case 4:
        context.go(RoutePaths.portfolioSummary);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: _buildMobileLayout(context),
      tablet: _buildTabletDesktopLayout(context),
      desktop: _buildTabletDesktopLayout(context),
    );
  }

  // Mobile layout with bottom navigation
  Widget _buildMobileLayout(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: Text(_getPageTitle()),
        actions: [
          _buildNotificationButton(context),
          _buildProfileButton(context),
        ],
      ),
      body: widget.child,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: (isDark ? AppColors.darkShadow : AppColors.lightShadow)
                  .withValues(alpha: 0.1),
              blurRadius: 8,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: NavigationBar(
          selectedIndex: _selectedIndex,
          onDestinationSelected: _onDestinationSelected,
          destinations: _getNavigationDestinations(),
        ),
      ),
    );
  }

  // Tablet/Desktop layout with sidebar
  Widget _buildTabletDesktopLayout(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      body: Row(
        children: [
          // Sidebar
          NavigationRail(
            extended: Responsive.isDesktop(context),
            selectedIndex: _selectedIndex,
            onDestinationSelected: _onDestinationSelected,
            backgroundColor: isDark
                ? AppColors.darkSurface
                : AppColors.lightSurface,
            leading: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: AppGradients.primaryGradient,
                ),
                child: const Icon(
                  Icons.medical_services_rounded,
                  color: Colors.white,
                  size: 24,
                ),
              ),
            ),
            trailing: Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  if (Responsive.isDesktop(context)) ...[
                    _buildSidebarProfileCard(context),
                    const SizedBox(height: 16),
                  ],
                  IconButton(
                    icon: const Icon(Icons.settings_outlined),
                    onPressed: () {
                      // TODO: Navigate to settings
                    },
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
            destinations: _getNavigationRailDestinations(),
          ),

          // Vertical divider
          VerticalDivider(
            width: 1,
            thickness: 1,
            color: isDark ? AppColors.darkDivider : AppColors.lightDivider,
          ),

          // Main content
          Expanded(
            child: Column(
              children: [
                // Top app bar
                Container(
                  height: 64,
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  decoration: BoxDecoration(
                    color: isDark
                        ? AppColors.darkSurface
                        : AppColors.lightSurface,
                    border: Border(
                      bottom: BorderSide(
                        color: isDark
                            ? AppColors.darkDivider
                            : AppColors.lightDivider,
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      Text(_getPageTitle(), style: AppTypography.titleLarge()),
                      const Spacer(),
                      _buildNotificationButton(context),
                      const SizedBox(width: 16),
                      if (!Responsive.isDesktop(context))
                        _buildProfileButton(context),
                    ],
                  ),
                ),

                // Content
                Expanded(child: widget.child),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Profile card for desktop sidebar
  Widget _buildSidebarProfileCard(BuildContext context) {
    final doctor = ref.watch(currentDoctorProvider);
    final isDark = Theme.of(context).brightness == Brightness.dark;

    if (doctor == null) return const SizedBox.shrink();

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: isDark
            ? AppColors.darkSurfaceVariant.withValues(alpha: 0.3)
            : AppColors.lightSurfaceVariant.withValues(alpha: 0.3),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          CircleAvatar(
            radius: 24,
            backgroundColor: AppColors.primary,
            child: Text(
              doctor.initials,
              style: AppTypography.titleMedium(color: Colors.white),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            doctor.name,
            style: AppTypography.labelMedium(),
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            doctor.primarySpecialization,
            style: AppTypography.bodySmall(
              color: isDark
                  ? AppColors.darkOnSurfaceVariant
                  : AppColors.lightOnSurfaceVariant,
            ),
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  // Notification button
  Widget _buildNotificationButton(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          icon: const Icon(Icons.notifications_outlined),
          onPressed: () {
            // TODO: Navigate to notifications
          },
        ),
        // Notification badge
        Positioned(
          right: 8,
          top: 8,
          child: Container(
            width: 8,
            height: 8,
            decoration: const BoxDecoration(
              color: AppColors.critical,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ],
    );
  }

  // Profile button
  Widget _buildProfileButton(BuildContext context) {
    final doctor = ref.watch(currentDoctorProvider);

    return PopupMenuButton<String>(
      offset: const Offset(0, 48),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: CircleAvatar(
          radius: 18,
          backgroundColor: AppColors.primary,
          child: doctor != null
              ? Text(
                  doctor.initials,
                  style: AppTypography.labelSmall(color: Colors.white),
                )
              : const Icon(Icons.person, size: 18, color: Colors.white),
        ),
      ),
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 'profile',
          child: Row(
            children: [
              const Icon(Icons.person_outline),
              const SizedBox(width: 12),
              Text('Profile', style: AppTypography.bodyMedium()),
            ],
          ),
        ),
        PopupMenuItem(
          value: 'settings',
          child: Row(
            children: [
              const Icon(Icons.settings_outlined),
              const SizedBox(width: 12),
              Text('Settings', style: AppTypography.bodyMedium()),
            ],
          ),
        ),
        const PopupMenuDivider(),
        PopupMenuItem(
          value: 'logout',
          child: Row(
            children: [
              const Icon(Icons.logout, color: AppColors.critical),
              const SizedBox(width: 12),
              Text(
                'Logout',
                style: AppTypography.bodyMedium(color: AppColors.critical),
              ),
            ],
          ),
        ),
      ],
      onSelected: (value) {
        switch (value) {
          case 'profile':
            context.push(RoutePaths.profile);
            break;
          case 'settings':
            // TODO: Navigate to settings
            break;
          case 'logout':
            _handleLogout();
            break;
        }
      },
    );
  }

  void _handleLogout() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Logout', style: AppTypography.titleLarge()),
        content: Text(
          'Are you sure you want to logout?',
          style: AppTypography.bodyMedium(),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text('Cancel', style: AppTypography.labelLarge()),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              ref.read(authProvider.notifier).logout();
              context.go(RoutePaths.login);
            },
            child: Text(
              'Logout',
              style: AppTypography.labelLarge(color: AppColors.critical),
            ),
          ),
        ],
      ),
    );
  }

  String _getPageTitle() {
    switch (_selectedIndex) {
      case 0:
        return 'Dashboard';
      case 1:
        return 'Risk Watch';
      case 2:
        return 'Schedule';
      case 3:
        return 'Wallet';
      case 4:
        return 'Portfolio';
      default:
        return AppConstants.appName;
    }
  }

  List<NavigationDestination> _getNavigationDestinations() {
    return const [
      NavigationDestination(
        icon: Icon(Icons.dashboard_outlined),
        selectedIcon: Icon(Icons.dashboard),
        label: 'Dashboard',
      ),
      NavigationDestination(
        icon: Icon(Icons.monitor_heart_outlined),
        selectedIcon: Icon(Icons.monitor_heart),
        label: 'Risk Watch',
      ),
      NavigationDestination(
        icon: Icon(Icons.calendar_today_outlined),
        selectedIcon: Icon(Icons.calendar_today),
        label: 'Schedule',
      ),
      NavigationDestination(
        icon: Icon(Icons.account_balance_wallet_outlined),
        selectedIcon: Icon(Icons.account_balance_wallet),
        label: 'Wallet',
      ),
      NavigationDestination(
        icon: Icon(Icons.analytics_outlined),
        selectedIcon: Icon(Icons.analytics),
        label: 'Portfolio',
      ),
    ];
  }

  List<NavigationRailDestination> _getNavigationRailDestinations() {
    return const [
      NavigationRailDestination(
        icon: Icon(Icons.dashboard_outlined),
        selectedIcon: Icon(Icons.dashboard),
        label: Text('Dashboard'),
      ),
      NavigationRailDestination(
        icon: Icon(Icons.monitor_heart_outlined),
        selectedIcon: Icon(Icons.monitor_heart),
        label: Text('Risk Watch'),
      ),
      NavigationRailDestination(
        icon: Icon(Icons.calendar_today_outlined),
        selectedIcon: Icon(Icons.calendar_today),
        label: Text('Schedule'),
      ),
      NavigationRailDestination(
        icon: Icon(Icons.account_balance_wallet_outlined),
        selectedIcon: Icon(Icons.account_balance_wallet),
        label: Text('Wallet'),
      ),
      NavigationRailDestination(
        icon: Icon(Icons.analytics_outlined),
        selectedIcon: Icon(Icons.analytics),
        label: Text('Portfolio'),
      ),
    ];
  }
}
