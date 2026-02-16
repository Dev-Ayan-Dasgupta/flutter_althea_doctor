import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/theme/color_palette.dart';
import '../../../../core/theme/typography.dart';
import '../../../../core/utils/responsive.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../shared/models/clinical/clinical_insight.dart';
import '../state/correlation_notifier.dart';
import '../widgets/insight_card.dart';

class ClinicalCorrelationScreen extends ConsumerWidget {
  final String patientId;

  const ClinicalCorrelationScreen({super.key, required this.patientId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(clinicalCorrelationProvider(patientId));
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final isMobile = Responsive.isMobile(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Clinical Insights'),
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_list),
            onPressed: () => _showFilterDialog(context, ref, state),
          ),
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              ref
                  .read(clinicalCorrelationProvider(patientId).notifier)
                  .refresh();
            },
          ),
        ],
      ),
      body: _buildBody(context, ref, state, isDark, isMobile),
    );
  }

  Widget _buildBody(
    BuildContext context,
    WidgetRef ref,
    CorrelationState state,
    bool isDark,
    bool isMobile,
  ) {
    if (state.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (state.error != null) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.error_outline,
              size: 64,
              color: AppColors.critical,
            ),
            const SizedBox(height: 16),
            Text('Error', style: AppTypography.titleLarge()),
            const SizedBox(height: 8),
            Text(
              state.error!,
              style: AppTypography.bodyMedium(
                color: isDark
                    ? AppColors.darkOnSurfaceVariant
                    : AppColors.lightOnSurfaceVariant,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            CustomButton(
              label: 'Retry',
              onPressed: () {
                ref
                    .read(clinicalCorrelationProvider(patientId).notifier)
                    .refresh();
              },
              variant: ButtonVariant.primary,
              icon: const Icon(Icons.refresh),
            ),
          ],
        ),
      );
    }

    return Column(
      children: [
        // Summary header
        _buildSummaryHeader(context, ref, state, isDark, isMobile),

        // Insights list
        Expanded(child: _buildInsightsList(context, ref, state, isDark)),
      ],
    );
  }

  Widget _buildSummaryHeader(
    BuildContext context,
    WidgetRef ref,
    CorrelationState state,
    bool isDark,
    bool isMobile,
  ) {
    final counts = state.severityCounts;

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
                Icons.psychology,
                size: isMobile ? 24 : 32,
                color: AppColors.primary,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'AI Clinical Analysis',
                      style: isMobile
                          ? AppTypography.titleLarge()
                          : AppTypography.headlineSmall(),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '${state.filteredInsights.length} insights detected',
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

          const SizedBox(height: 16),

          // Severity counts
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              _buildSeverityChip(
                context,
                ref,
                'Critical',
                counts[InsightSeverity.critical] ?? 0,
                AppColors.critical,
                InsightSeverity.critical,
                state.filterSeverity,
              ),
              _buildSeverityChip(
                context,
                ref,
                'Warning',
                counts[InsightSeverity.warning] ?? 0,
                AppColors.warning,
                InsightSeverity.warning,
                state.filterSeverity,
              ),
              _buildSeverityChip(
                context,
                ref,
                'Info',
                counts[InsightSeverity.info] ?? 0,
                AppColors.info,
                InsightSeverity.info,
                state.filterSeverity,
              ),
            ],
          ),

          if (state.filterSeverity != null) ...[
            const SizedBox(height: 12),
            CustomButton(
              label: 'Clear Filter',
              onPressed: () {
                ref
                    .read(clinicalCorrelationProvider(patientId).notifier)
                    .clearFilter();
              },
              variant: ButtonVariant.text,
              size: ButtonSize.small,
              icon: const Icon(Icons.clear, size: 16),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildSeverityChip(
    BuildContext context,
    WidgetRef ref,
    String label,
    int count,
    Color color,
    InsightSeverity severity,
    InsightSeverity? currentFilter,
  ) {
    final isSelected = currentFilter == severity;

    return InkWell(
      onTap: () {
        ref
            .read(clinicalCorrelationProvider(patientId).notifier)
            .filterBySeverity(isSelected ? null : severity);
      },
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? color.withOpacity(0.2) : color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isSelected ? color : color.withOpacity(0.3),
            width: isSelected ? 2 : 1,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 8,
              height: 8,
              decoration: BoxDecoration(color: color, shape: BoxShape.circle),
            ),
            const SizedBox(width: 8),
            Text(
              label,
              style: AppTypography.labelMedium(color: isSelected ? color : null)
                  .copyWith(
                    fontWeight: isSelected
                        ? FontWeight.bold
                        : FontWeight.normal,
                  ),
            ),
            const SizedBox(width: 6),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
              decoration: BoxDecoration(
                color: isSelected ? color : color.withOpacity(0.3),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                count.toString(),
                style: AppTypography.labelSmall(
                  color: isSelected ? Colors.white : null,
                ).copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInsightsList(
    BuildContext context,
    WidgetRef ref,
    CorrelationState state,
    bool isDark,
  ) {
    if (state.filteredInsights.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.check_circle_outline,
              size: 64,
              color: AppColors.success,
            ),
            const SizedBox(height: 16),
            Text(
              state.filterSeverity != null
                  ? 'No ${_getSeverityLabel(state.filterSeverity!)} insights'
                  : 'No insights detected',
              style: AppTypography.titleLarge(),
            ),
            const SizedBox(height: 8),
            Text(
              state.filterSeverity != null
                  ? 'Try changing the filter'
                  : 'All vitals within normal range',
              style: AppTypography.bodyMedium(
                color: isDark
                    ? AppColors.darkOnSurfaceVariant
                    : AppColors.lightOnSurfaceVariant,
              ),
            ),
          ],
        ),
      );
    }

    return RefreshIndicator(
      onRefresh: () async {
        await ref
            .read(clinicalCorrelationProvider(patientId).notifier)
            .refresh();
      },
      child: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: state.filteredInsights.length,
        itemBuilder: (context, index) {
          final insight = state.filteredInsights[index];
          return InsightCard(
            insight: insight,
            onAcknowledge: () {
              ref
                  .read(clinicalCorrelationProvider(patientId).notifier)
                  .acknowledgeInsight(insight.id);
            },
          );
        },
      ),
    );
  }

  void _showFilterDialog(
    BuildContext context,
    WidgetRef ref,
    CorrelationState state,
  ) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Filter Insights', style: AppTypography.titleLarge()),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Select severity level:', style: AppTypography.bodyMedium()),
            const SizedBox(height: 16),
            ...InsightSeverity.values.map((severity) {
              return RadioListTile<InsightSeverity?>(
                title: Text(_getSeverityLabel(severity)),
                value: severity,
                groupValue: state.filterSeverity,
                onChanged: (value) {
                  ref
                      .read(clinicalCorrelationProvider(patientId).notifier)
                      .filterBySeverity(value);
                  Navigator.pop(context);
                },
              );
            }),
            RadioListTile<InsightSeverity?>(
              title: const Text('Show All'),
              value: null,
              groupValue: state.filterSeverity,
              onChanged: (value) {
                ref
                    .read(clinicalCorrelationProvider(patientId).notifier)
                    .clearFilter();
                Navigator.pop(context);
              },
            ),
          ],
        ),
        actions: [
          CustomButton(
            label: 'Close',
            onPressed: () => Navigator.pop(context),
            variant: ButtonVariant.text,
          ),
        ],
      ),
    );
  }

  String _getSeverityLabel(InsightSeverity severity) {
    switch (severity) {
      case InsightSeverity.critical:
        return 'Critical';
      case InsightSeverity.warning:
        return 'Warning';
      case InsightSeverity.info:
        return 'Info';
    }
  }
}
