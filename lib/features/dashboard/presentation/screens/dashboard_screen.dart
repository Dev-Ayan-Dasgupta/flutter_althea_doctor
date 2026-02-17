import 'package:flutter/material.dart';
import 'package:flutter_althea_doctor/features/risk_watch/domain/entities/patient_summary.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/theme/color_palette.dart';
import '../../../../core/theme/typography.dart';
import '../../../../core/utils/responsive.dart';
import '../../../risk_watch/presentation/state/risk_watch_notifier.dart';
import '../../../wallet/presentation/state/wallet_notifier.dart';
import '../../../portfolio/presentation/state/portfolio_notifier.dart';
import '../../../scheduling/presentation/state/scheduling_notifier.dart';
import '../../../../shared/models/clinical/clinical_stability_index.dart';
import '../widgets/dashboard_stat_card.dart';
import '../widgets/dashboard_quick_action_card.dart';
import '../widgets/dashboard_patient_list.dart';

class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final riskWatchState = ref.watch(riskWatchProvider);
    final walletState = ref.watch(walletProvider('doc-001'));
    final portfolioState = ref.watch(portfolioProvider('doc-001'));
    final schedulingState = ref.watch(schedulingProvider('doc-001'));

    final isDark = Theme.of(context).brightness == Brightness.dark;
    final isMobile = Responsive.isMobile(context);

    return RefreshIndicator(
      onRefresh: () async {
        await Future.wait([
          ref.read(riskWatchProvider.notifier).refresh(),
          ref.read(walletProvider('doc-001').notifier).refresh(),
          ref.read(portfolioProvider('doc-001').notifier).refresh(),
          ref.read(schedulingProvider('doc-001').notifier).refresh(),
        ]);
      },
      child: ListView(
        padding: Responsive.padding(context),
        children: [
          const SizedBox(height: 20),

          // Welcome Section
          _buildWelcomeSection(context, isDark),

          const SizedBox(height: 24),

          // Stats Overview
          Text('Today\'s Overview', style: AppTypography.titleLarge()),
          const SizedBox(height: 16),

          // Stats Grid
          _buildStatsGrid(
            context,
            riskWatchState,
            walletState,
            schedulingState,
            portfolioState,
            isMobile,
          ),

          const SizedBox(height: 32),

          // Quick Actions
          Text('Quick Actions', style: AppTypography.titleLarge()),
          const SizedBox(height: 16),

          _buildQuickActions(context, isMobile),

          const SizedBox(height: 32),

          // Critical Patients
          if (_getCriticalPatients(riskWatchState).isNotEmpty) ...[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Critical Patients', style: AppTypography.titleLarge()),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/risk-watch');
                  },
                  child: const Text('View All'),
                ),
              ],
            ),
            const SizedBox(height: 16),

            DashboardPatientList(
              patients: _getCriticalPatients(riskWatchState).take(5).toList(),
            ),

            const SizedBox(height: 32),
          ],

          // Today's Appointments
          if (schedulingState.todayAppointments.isNotEmpty) ...[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Today\'s Appointments',
                  style: AppTypography.titleLarge(),
                ),
                TextButton(
                  onPressed: () {
                    // TODO: Navigate to scheduling screen
                  },
                  child: const Text('View All'),
                ),
              ],
            ),
            const SizedBox(height: 16),

            ...schedulingState.todayAppointments
                .take(3)
                .map(
                  (appointment) => Container(
                    margin: const EdgeInsets.only(bottom: 12),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: isDark
                          ? AppColors.darkSurface
                          : AppColors.lightSurface,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: isDark
                            ? AppColors.darkDivider
                            : AppColors.lightDivider,
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.access_time, color: AppColors.info),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                appointment.patientName,
                                style: AppTypography.titleSmall(),
                              ),
                              Text(
                                _formatTime(appointment.scheduledTime),
                                style: AppTypography.bodySmall(
                                  color: isDark
                                      ? AppColors.darkOnSurfaceVariant
                                      : AppColors.lightOnSurfaceVariant,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.chevron_right,
                          color: isDark
                              ? AppColors.darkOnSurfaceVariant
                              : AppColors.lightOnSurfaceVariant,
                        ),
                      ],
                    ),
                  ),
                ),
          ],

          const SizedBox(height: 40),
        ],
      ),
    );
  }

  // Helper method to get critical patients
  List<PatientSummary> _getCriticalPatients(RiskWatchState state) {
    return state.patients
        .where((p) => p.csi.riskLevel == ClinicalRiskLevel.critical)
        .toList();
  }

  Widget _buildWelcomeSection(BuildContext context, bool isDark) {
    final hour = DateTime.now().hour;
    String greeting;
    IconData greetingIcon;

    if (hour < 12) {
      greeting = 'Good Morning';
      greetingIcon = Icons.wb_sunny;
    } else if (hour < 17) {
      greeting = 'Good Afternoon';
      greetingIcon = Icons.wb_sunny_outlined;
    } else {
      greeting = 'Good Evening';
      greetingIcon = Icons.nights_stay;
    }

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: isDark
            ? AppGradients.darkSurfaceGradient
            : AppGradients.lightSurfaceGradient,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.primary.withOpacity(0.3)),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: AppColors.primary.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(greetingIcon, color: AppColors.primary, size: 32),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  greeting,
                  style: AppTypography.titleMedium(
                    color: isDark
                        ? AppColors.darkOnSurfaceVariant
                        : AppColors.lightOnSurfaceVariant,
                  ),
                ),
                const SizedBox(height: 4),
                Text('Dr. Rajesh Kumar', style: AppTypography.headlineSmall()),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatsGrid(
    BuildContext context,
    RiskWatchState riskWatchState,
    WalletState walletState,
    SchedulingState schedulingState,
    PortfolioState portfolioState,
    bool isMobile,
  ) {
    final criticalCount = _getCriticalPatients(riskWatchState).length;

    return GridView.count(
      crossAxisCount: isMobile ? 2 : 4,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      childAspectRatio: 1.2,
      children: [
        DashboardStatCard(
          icon: Icons.people,
          title: 'Total Patients',
          value:
              portfolioState.summary?.metrics.totalPatients.toString() ??
              riskWatchState.patients.length.toString(),
          color: AppColors.primary,
          onTap: () => Navigator.pushNamed(context, '/risk-watch'),
        ),
        DashboardStatCard(
          icon: Icons.warning,
          title: 'Critical',
          value: criticalCount.toString(),
          color: AppColors.critical,
          onTap: () => Navigator.pushNamed(context, '/risk-watch'),
        ),
        DashboardStatCard(
          icon: Icons.event,
          title: 'Appointments',
          value: schedulingState.todayAppointments.length.toString(),
          color: AppColors.info,
          onTap: () {
            // TODO: Navigate to scheduling
          },
        ),
        DashboardStatCard(
          icon: Icons.account_balance_wallet,
          title: 'Earnings',
          value: walletState.summary != null
              ? '₹${(walletState.summary!.todayEarnings / 1000).toStringAsFixed(1)}k'
              : '₹0',
          color: AppColors.success,
          onTap: () {
            // TODO: Navigate to wallet
          },
        ),
      ],
    );
  }

  Widget _buildQuickActions(BuildContext context, bool isMobile) {
    final actions = [
      {
        'icon': Icons.video_call,
        'label': 'Start Consultation',
        'color': AppColors.success,
        'route': '/telepresence',
      },
      {
        'icon': Icons.mic,
        'label': 'AI Scribe',
        'color': AppColors.info,
        'route': '/ambient-scribe',
      },
      {
        'icon': Icons.add,
        'label': 'Add Patient',
        'color': AppColors.primary,
        'route': '/risk-watch',
      },
      {
        'icon': Icons.calendar_today,
        'label': 'Schedule',
        'color': AppColors.warning,
        'route': '/scheduling',
      },
    ];

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: isMobile ? 2 : 4,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        childAspectRatio: 1.3,
      ),
      itemCount: actions.length,
      itemBuilder: (context, index) {
        final action = actions[index];
        return DashboardQuickActionCard(
          icon: action['icon'] as IconData,
          label: action['label'] as String,
          color: action['color'] as Color,
          onTap: () => Navigator.pushNamed(context, action['route'] as String),
        );
      },
    );
  }

  String _formatTime(DateTime time) {
    return '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';
  }
}
