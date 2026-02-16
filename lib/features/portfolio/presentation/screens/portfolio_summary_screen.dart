import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/theme/color_palette.dart';
import '../../../../core/theme/typography.dart';
import '../../../../core/utils/responsive.dart';
import '../../domain/entities/portfolio_summary.dart';
import '../state/portfolio_notifier.dart';

class PortfolioSummaryScreen extends ConsumerWidget {
  const PortfolioSummaryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(
      portfolioProvider('doc-001'),
    ); // TODO: Get from auth
    final isDark = Theme.of(context).brightness == Brightness.dark;

    if (state.isLoading) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    if (state.summary == null) {
      return const Scaffold(body: Center(child: Text('No portfolio data')));
    }

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          await ref.read(portfolioProvider('doc-001').notifier).refresh();
        },
        child: CustomScrollView(
          slivers: [
            // Header
            SliverToBoxAdapter(
              child: _buildHeader(context, state.summary!, isDark),
            ),

            // Metrics cards
            SliverToBoxAdapter(
              child: _buildMetricsCards(
                context,
                state.summary!.metrics,
                isDark,
              ),
            ),

            // Risk distribution
            SliverToBoxAdapter(
              child: _buildRiskDistribution(
                context,
                state.summary!.riskDistribution,
                isDark,
              ),
            ),

            // AI Insights
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  'AI Insights & Recommendations',
                  style: AppTypography.titleLarge(),
                ),
              ),
            ),

            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                final insight = state.summary!.insights[index];
                return _buildInsightCard(insight, isDark);
              }, childCount: state.summary!.insights.length),
            ),

            // Clinical outcomes
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  'Clinical Outcomes',
                  style: AppTypography.titleLarge(),
                ),
              ),
            ),

            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                final outcome = state.summary!.outcomes[index];
                return _buildOutcomeCard(outcome, isDark);
              }, childCount: state.summary!.outcomes.length),
            ),

            // Top conditions
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  'Top Conditions',
                  style: AppTypography.titleLarge(),
                ),
              ),
            ),

            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                final condition = state.summary!.topConditions[index];
                return _buildConditionCard(condition, isDark);
              }, childCount: state.summary!.topConditions.length),
            ),

            const SliverToBoxAdapter(child: SizedBox(height: 20)),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(
    BuildContext context,
    PortfolioSummary summary,
    bool isDark,
  ) {
    final isMobile = Responsive.isMobile(context);

    return Container(
      padding: EdgeInsets.all(isMobile ? 16 : 20),
      decoration: BoxDecoration(
        gradient: isDark
            ? AppGradients.darkSurfaceGradient
            : AppGradients.lightSurfaceGradient,
        border: Border(
          bottom: BorderSide(
            color: isDark ? AppColors.darkDivider : AppColors.lightDivider,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.analytics,
                size: isMobile ? 24 : 32,
                color: AppColors.primary,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'AI Portfolio Summary',
                      style: isMobile
                          ? AppTypography.titleLarge()
                          : AppTypography.headlineSmall(),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Last updated: ${_formatTime(summary.generatedAt)}',
                      style: AppTypography.bodyMedium(
                        color: isDark
                            ? AppColors.darkOnSurfaceVariant
                            : AppColors.lightOnSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMetricsCards(
    BuildContext context,
    PortfolioMetrics metrics,
    bool isDark,
  ) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: _buildMetricCard(
                  'Total Patients',
                  metrics.totalPatients.toString(),
                  Icons.people,
                  AppColors.primary,
                  isDark,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _buildMetricCard(
                  'Active',
                  metrics.activePatients.toString(),
                  Icons.check_circle,
                  AppColors.success,
                  isDark,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: _buildMetricCard(
                  'Critical',
                  metrics.criticalPatients.toString(),
                  Icons.warning,
                  AppColors.critical,
                  isDark,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _buildMetricCard(
                  'Avg CSI',
                  metrics.averageCSI.toStringAsFixed(1),
                  Icons.analytics,
                  AppColors.info,
                  isDark,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMetricCard(
    String label,
    String value,
    IconData icon,
    Color color,
    bool isDark,
  ) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isDark ? AppColors.darkSurface : AppColors.lightSurface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withOpacity(0.3)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: color, size: 24),
          const SizedBox(height: 8),
          Text(
            value,
            style: AppTypography.headlineSmall().copyWith(
              color: color,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: AppTypography.bodySmall(
              color: isDark
                  ? AppColors.darkOnSurfaceVariant
                  : AppColors.lightOnSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRiskDistribution(
    BuildContext context,
    RiskDistribution distribution,
    bool isDark,
  ) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isDark ? AppColors.darkSurface : AppColors.lightSurface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: isDark ? AppColors.darkDivider : AppColors.lightDivider,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Risk Distribution', style: AppTypography.titleMedium()),
          const SizedBox(height: 16),
          _buildRiskBar(
            'Critical',
            distribution.critical,
            AppColors.critical,
            distribution.total,
          ),
          const SizedBox(height: 8),
          _buildRiskBar(
            'High',
            distribution.high,
            AppColors.warning,
            distribution.total,
          ),
          const SizedBox(height: 8),
          _buildRiskBar(
            'Medium',
            distribution.medium,
            AppColors.info,
            distribution.total,
          ),
          const SizedBox(height: 8),
          _buildRiskBar(
            'Low',
            distribution.low,
            AppColors.success,
            distribution.total,
          ),
          const SizedBox(height: 8),
          _buildRiskBar(
            'Stable',
            distribution.stable,
            AppColors.stable,
            distribution.total,
          ),
        ],
      ),
    );
  }

  Widget _buildRiskBar(String label, int count, Color color, int total) {
    final percentage = (count / total * 100).toInt();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(label, style: AppTypography.bodyMedium()),
            Text('$count ($percentage%)', style: AppTypography.bodySmall()),
          ],
        ),
        const SizedBox(height: 4),
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: LinearProgressIndicator(
            value: count / total,
            minHeight: 8,
            backgroundColor: color.withOpacity(0.2),
            valueColor: AlwaysStoppedAnimation(color),
          ),
        ),
      ],
    );
  }

  Widget _buildInsightCard(AIInsight insight, bool isDark) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isDark ? AppColors.darkSurface : AppColors.lightSurface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: _getPriorityColor(insight.priority).withOpacity(0.3),
          width: 2,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: _getPriorityColor(insight.priority).withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.lightbulb,
                  color: _getPriorityColor(insight.priority),
                  size: 20,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(insight.title, style: AppTypography.titleSmall()),
                    if (insight.affectedPatientCount != null)
                      Text(
                        '${insight.affectedPatientCount} patients affected',
                        style: AppTypography.bodySmall(
                          color: isDark
                              ? AppColors.darkOnSurfaceVariant
                              : AppColors.lightOnSurfaceVariant,
                        ),
                      ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: _getPriorityColor(insight.priority).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  insight.priority.name.toUpperCase(),
                  style: AppTypography.labelSmall(
                    color: _getPriorityColor(insight.priority),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(insight.description, style: AppTypography.bodyMedium()),
          const SizedBox(height: 12),
          Text('Action Items:', style: AppTypography.labelMedium()),
          const SizedBox(height: 8),
          ...insight.actionItems.map(
            (item) => Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 6),
                    width: 6,
                    height: 6,
                    decoration: BoxDecoration(
                      color: _getPriorityColor(insight.priority),
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(child: Text(item, style: AppTypography.bodySmall())),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOutcomeCard(ClinicalOutcome outcome, bool isDark) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isDark ? AppColors.darkSurface : AppColors.lightSurface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: isDark ? AppColors.darkDivider : AppColors.lightDivider,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(outcome.category, style: AppTypography.titleMedium()),
              Text(
                '${outcome.improvementRate.toStringAsFixed(1)}% improved',
                style: AppTypography.titleSmall(color: AppColors.success),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: _buildOutcomeMetric(
                  'Total',
                  outcome.total,
                  AppColors.info,
                ),
              ),
              Expanded(
                child: _buildOutcomeMetric(
                  'Improved',
                  outcome.improved,
                  AppColors.success,
                ),
              ),
              Expanded(
                child: _buildOutcomeMetric(
                  'Stable',
                  outcome.stable,
                  AppColors.stable,
                ),
              ),
              Expanded(
                child: _buildOutcomeMetric(
                  'Declined',
                  outcome.declined,
                  AppColors.critical,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildOutcomeMetric(String label, int value, Color color) {
    return Column(
      children: [
        Text(
          value.toString(),
          style: AppTypography.titleLarge(
            color: color,
          ).copyWith(fontWeight: FontWeight.bold),
        ),
        Text(label, style: AppTypography.bodySmall()),
      ],
    );
  }

  Widget _buildConditionCard(TopCondition condition, bool isDark) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isDark ? AppColors.darkSurface : AppColors.lightSurface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: isDark ? AppColors.darkDivider : AppColors.lightDivider,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(condition.name, style: AppTypography.titleSmall()),
                const SizedBox(height: 4),
                Text(
                  '${condition.patientCount} patients • Avg CSI: ${condition.averageCSI.toStringAsFixed(1)}',
                  style: AppTypography.bodySmall(
                    color: isDark
                        ? AppColors.darkOnSurfaceVariant
                        : AppColors.lightOnSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: _getTrendColor(condition.trend).withOpacity(0.1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  _getTrendIcon(condition.trend),
                  size: 16,
                  color: _getTrendColor(condition.trend),
                ),
                const SizedBox(width: 4),
                Text(
                  condition.trend,
                  style: AppTypography.labelSmall(
                    color: _getTrendColor(condition.trend),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Color _getPriorityColor(InsightPriority priority) {
    switch (priority) {
      case InsightPriority.high:
        return AppColors.critical;
      case InsightPriority.medium:
        return AppColors.warning;
      case InsightPriority.low:
        return AppColors.info;
    }
  }

  Color _getTrendColor(String trend) {
    switch (trend) {
      case 'improving':
        return AppColors.success;
      case 'stable':
        return AppColors.info;
      case 'declining':
        return AppColors.critical;
      default:
        return AppColors.stable;
    }
  }

  IconData _getTrendIcon(String trend) {
    switch (trend) {
      case 'improving':
        return Icons.trending_up;
      case 'stable':
        return Icons.trending_flat;
      case 'declining':
        return Icons.trending_down;
      default:
        return Icons.remove;
    }
  }

  String _formatTime(DateTime time) {
    final now = DateTime.now();
    final diff = now.difference(time);

    if (diff.inMinutes < 60) {
      return '${diff.inMinutes}m ago';
    } else if (diff.inHours < 24) {
      return '${diff.inHours}h ago';
    } else {
      return '${diff.inDays}d ago';
    }
  }
}
