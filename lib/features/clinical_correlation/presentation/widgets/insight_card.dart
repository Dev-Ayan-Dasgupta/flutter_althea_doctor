import 'package:flutter/material.dart';
import '../../../../core/theme/color_palette.dart';
import '../../../../core/theme/typography.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../shared/models/clinical/clinical_insight.dart';

/// Card displaying a clinical insight
class InsightCard extends StatelessWidget {
  final ClinicalInsight insight;
  final VoidCallback? onAcknowledge;
  final bool showActions;

  const InsightCard({
    super.key,
    required this.insight,
    this.onAcknowledge,
    this.showActions = true,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: isDark ? AppColors.darkSurface : AppColors.lightSurface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: _getSeverityColor().withValues(alpha: 0.5),
          width: 2,
        ),
        boxShadow: [
          BoxShadow(
            color: _getSeverityColor().withValues(alpha: 0.1),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              gradient: _getSeverityGradient().scale(0.2),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(14),
                topRight: Radius.circular(14),
              ),
            ),
            child: Row(
              children: [
                // Severity indicator
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: _getSeverityColor(),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(_getSeverityIcon(), size: 16, color: Colors.white),
                      const SizedBox(width: 6),
                      Text(
                        _getSeverityLabel(),
                        style: AppTypography.labelSmall(
                          color: Colors.white,
                        ).copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),

                const SizedBox(width: 12),

                // Type badge
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color:
                        (isDark
                                ? AppColors.darkSurfaceVariant
                                : AppColors.lightSurfaceVariant)
                            .withValues(alpha: 0.7),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        _getTypeIcon(),
                        size: 14,
                        color: _getSeverityColor(),
                      ),
                      const SizedBox(width: 4),
                      Text(_getTypeLabel(), style: AppTypography.labelSmall()),
                    ],
                  ),
                ),

                const Spacer(),

                // Confidence score
                if (insight.confidenceScore != null)
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.psychology,
                          size: 12,
                          color: isDark
                              ? AppColors.darkOnSurface
                              : AppColors.lightOnSurface,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          '${(insight.confidenceScore! * 100).toInt()}%',
                          style: AppTypography.labelSmall().copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),

          // Content
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
                Text(insight.title, style: AppTypography.titleMedium()),

                const SizedBox(height: 8),

                // Description
                Text(
                  insight.description,
                  style: AppTypography.bodyMedium(
                    color: isDark
                        ? AppColors.darkOnSurfaceVariant
                        : AppColors.lightOnSurfaceVariant,
                  ),
                ),

                const SizedBox(height: 16),

                // Evidence points
                if (insight.evidencePoints.isNotEmpty) ...[
                  Text('Evidence:', style: AppTypography.titleSmall()),
                  const SizedBox(height: 8),
                  ...insight.evidencePoints.map((evidence) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 6),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 6),
                            width: 6,
                            height: 6,
                            decoration: BoxDecoration(
                              color: _getSeverityColor(),
                              shape: BoxShape.circle,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              evidence,
                              style: AppTypography.bodySmall(),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                  const SizedBox(height: 12),
                ],

                // Recommendation
                if (insight.recommendation != null) ...[
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: AppColors.info.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: AppColors.info.withValues(alpha: 0.3),
                        width: 1,
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.lightbulb_outline,
                          size: 20,
                          color: AppColors.info,
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Recommendation',
                                style: AppTypography.labelMedium(
                                  color: AppColors.info,
                                ).copyWith(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                insight.recommendation!,
                                style: AppTypography.bodySmall(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                ],

                // Affected vitals and medications
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    if (insight.affectedVitals != null)
                      ...insight.affectedVitals!.map((vital) {
                        return _buildChip(
                          vital,
                          Icons.favorite,
                          AppColors.critical,
                          isDark,
                        );
                      }),
                    if (insight.relatedMedications != null)
                      ...insight.relatedMedications!.map((med) {
                        return _buildChip(
                          med,
                          Icons.medication,
                          AppColors.warning,
                          isDark,
                        );
                      }),
                  ],
                ),

                // Actions
                if (showActions && !insight.acknowledged!) ...[
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: CustomButton(
                          label: 'Acknowledge',
                          onPressed: onAcknowledge,
                          variant: ButtonVariant.outlined,
                          size: ButtonSize.medium,
                          icon: const Icon(
                            Icons.check_circle_outline,
                            size: 18,
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: CustomButton(
                          label: 'Add to EMR',
                          onPressed: () {
                            // TODO: Implement add to EMR
                          },
                          variant: ButtonVariant.primary,
                          size: ButtonSize.medium,
                          icon: const Icon(Icons.note_add, size: 18),
                        ),
                      ),
                    ],
                  ),
                ],

                // Acknowledged badge
                if (insight.acknowledged!) ...[
                  const SizedBox(height: 12),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.success.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.check_circle,
                          size: 16,
                          color: AppColors.success,
                        ),
                        const SizedBox(width: 6),
                        Text(
                          'Acknowledged',
                          style: AppTypography.labelSmall(
                            color: AppColors.success,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildChip(String label, IconData icon, Color color, bool isDark) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color:
            (isDark
                    ? AppColors.darkSurfaceVariant
                    : AppColors.lightSurfaceVariant)
                .withValues(alpha: 0.5),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: color.withValues(alpha: 0.3), width: 1),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14, color: color),
          const SizedBox(width: 6),
          Text(label, style: AppTypography.labelSmall()),
        ],
      ),
    );
  }

  Color _getSeverityColor() {
    switch (insight.severity) {
      case InsightSeverity.critical:
        return AppColors.critical;
      case InsightSeverity.warning:
        return AppColors.warning;
      case InsightSeverity.info:
        return AppColors.info;
    }
  }

  Gradient _getSeverityGradient() {
    switch (insight.severity) {
      case InsightSeverity.critical:
        return AppGradients.criticalGradient;
      case InsightSeverity.warning:
        return AppGradients.warningGradient;
      case InsightSeverity.info:
        return AppGradients.primaryGradient;
    }
  }

  IconData _getSeverityIcon() {
    switch (insight.severity) {
      case InsightSeverity.critical:
        return Icons.error;
      case InsightSeverity.warning:
        return Icons.warning;
      case InsightSeverity.info:
        return Icons.info;
    }
  }

  String _getSeverityLabel() {
    switch (insight.severity) {
      case InsightSeverity.critical:
        return 'CRITICAL';
      case InsightSeverity.warning:
        return 'WARNING';
      case InsightSeverity.info:
        return 'INFO';
    }
  }

  IconData _getTypeIcon() {
    switch (insight.type) {
      case InsightType.correlation:
        return Icons.link;
      case InsightType.trend:
        return Icons.trending_up;
      case InsightType.deviation:
        return Icons.show_chart;
      case InsightType.prediction:
        return Icons.psychology;
      case InsightType.medication:
        return Icons.medication;
      case InsightType.activity:
        return Icons.directions_walk;
    }
  }

  String _getTypeLabel() {
    switch (insight.type) {
      case InsightType.correlation:
        return 'Correlation';
      case InsightType.trend:
        return 'Trend';
      case InsightType.deviation:
        return 'Deviation';
      case InsightType.prediction:
        return 'Prediction';
      case InsightType.medication:
        return 'Medication';
      case InsightType.activity:
        return 'Activity';
    }
  }
}

/// Extension for Gradient scaling
extension GradientScale on Gradient {
  Gradient scale(double opacity) {
    if (this is LinearGradient) {
      final linear = this as LinearGradient;
      return LinearGradient(
        colors: linear.colors.map((c) => c.withValues(alpha: opacity)).toList(),
        begin: linear.begin,
        end: linear.end,
      );
    }
    return this;
  }
}
