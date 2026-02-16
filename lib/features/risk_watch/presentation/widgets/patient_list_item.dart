import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theme/color_palette.dart';
import '../../../../core/theme/typography.dart';
import '../../../../core/utils/constants.dart';
import '../../../../core/utils/responsive.dart';
import '../../../../shared/models/clinical/clinical_stability_index.dart';
import '../../domain/entities/patient_summary.dart';
import 'csi_badge.dart';

/// Patient list item for risk watch
class PatientListItem extends StatelessWidget {
  final PatientSummary patient;
  final VoidCallback? onTap;

  const PatientListItem({super.key, required this.patient, this.onTap});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final isMobile = Responsive.isMobile(context);

    return InkWell(
      onTap:
          onTap ??
          () {
            context.push('${RoutePaths.riskWatch}/patient/${patient.id}');
          },
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: isMobile ? 12 : 16,
          vertical: 6,
        ),
        padding: EdgeInsets.all(isMobile ? 12 : 16),
        decoration: BoxDecoration(
          color: isDark ? AppColors.darkSurface : AppColors.lightSurface,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isDark ? AppColors.darkDivider : AppColors.lightDivider,
            width: 1,
          ),
          boxShadow: [
            BoxShadow(
              color: (isDark ? AppColors.darkShadow : AppColors.lightShadow)
                  .withOpacity(0.05),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // CSI Indicator (left edge)
            CSIIndicator(csi: patient.csi),

            const SizedBox(width: 12),

            // Avatar
            CircleAvatar(
              radius: isMobile ? 20 : 24,
              backgroundColor: _getAvatarColor(),
              child: Text(
                patient.initials,
                style: AppTypography.titleSmall(color: Colors.white),
              ),
            ),

            const SizedBox(width: 12),

            // Patient info
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Name and age
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          patient.name,
                          style: isMobile
                              ? AppTypography.titleMedium()
                              : AppTypography.titleLarge(),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      if (patient.needsUrgentReview)
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 2,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.critical.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                              color: AppColors.critical,
                              width: 1,
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.priority_high,
                                size: 12,
                                color: AppColors.critical,
                              ),
                              const SizedBox(width: 2),
                              Text(
                                'URGENT',
                                style: AppTypography.labelSmall(
                                  color: AppColors.critical,
                                ).copyWith(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                    ],
                  ),

                  const SizedBox(height: 4),

                  // Age, gender, room
                  Text(
                    '${patient.age}y • ${_formatGender(patient.gender)} • Room ${patient.roomNumber ?? 'N/A'}',
                    style: AppTypography.bodySmall(
                      color: isDark
                          ? AppColors.darkOnSurfaceVariant
                          : AppColors.lightOnSurfaceVariant,
                    ),
                  ),

                  const SizedBox(height: 8),

                  // Active alerts
                  if (patient.activeAlerts.isNotEmpty) ...[
                    Wrap(
                      spacing: 6,
                      runSpacing: 4,
                      children: patient.activeAlerts.take(2).map((alert) {
                        return Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.warning.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.warning_amber_rounded,
                                size: 12,
                                color: AppColors.warning,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                alert,
                                style: AppTypography.labelSmall(
                                  color: AppColors.warning,
                                ),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                    const SizedBox(height: 8),
                  ],

                  // Vitals summary
                  if (!isMobile)
                    Wrap(
                      spacing: 12,
                      runSpacing: 4,
                      children: [
                        _buildVitalChip(
                          'BP',
                          '${patient.latestVitals['systolic']?.toInt()}/${patient.latestVitals['diastolic']?.toInt()}',
                          Icons.favorite,
                          isDark,
                        ),
                        _buildVitalChip(
                          'HR',
                          '${patient.latestVitals['heartRate']?.toInt()}',
                          Icons.monitor_heart,
                          isDark,
                        ),
                        _buildVitalChip(
                          'SpO2',
                          '${patient.latestVitals['spO2']?.toInt()}%',
                          Icons.air,
                          isDark,
                        ),
                        _buildVitalChip(
                          'Glucose',
                          '${patient.latestVitals['glucose']?.toInt()}',
                          Icons.water_drop,
                          isDark,
                        ),
                      ],
                    ),

                  const SizedBox(height: 8),

                  // Last reviewed
                  Row(
                    children: [
                      Icon(
                        Icons.access_time,
                        size: 14,
                        color: isDark
                            ? AppColors.darkOnSurfaceVariant
                            : AppColors.lightOnSurfaceVariant,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        'Reviewed: ${patient.timeSinceReview}',
                        style: AppTypography.bodySmall(
                          color: isDark
                              ? AppColors.darkOnSurfaceVariant
                              : AppColors.lightOnSurfaceVariant,
                        ),
                      ),
                      if (patient.hasUnreadNotes) ...[
                        const SizedBox(width: 12),
                        Container(
                          width: 8,
                          height: 8,
                          decoration: const BoxDecoration(
                            color: AppColors.info,
                            shape: BoxShape.circle,
                          ),
                        ),
                        const SizedBox(width: 4),
                        Text(
                          'New notes',
                          style: AppTypography.bodySmall(color: AppColors.info),
                        ),
                      ],
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(width: 12),

            // CSI Badge (right side)
            CSIBadge(csi: patient.csi, size: isMobile ? 40 : 50),
          ],
        ),
      ),
    );
  }

  Widget _buildVitalChip(
    String label,
    String value,
    IconData icon,
    bool isDark,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: isDark
            ? AppColors.darkSurfaceVariant.withOpacity(0.3)
            : AppColors.lightSurfaceVariant.withOpacity(0.5),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 12, color: AppColors.primary),
          const SizedBox(width: 4),
          Text('$label: $value', style: AppTypography.labelSmall()),
        ],
      ),
    );
  }

  Color _getAvatarColor() {
    switch (patient.csi.riskLevel) {
      case ClinicalRiskLevel.critical:
        return AppColors.critical;
      case ClinicalRiskLevel.high:
        return AppColors.warning;
      case ClinicalRiskLevel.medium:
        return AppColors.info;
      case ClinicalRiskLevel.low:
        return AppColors.success;
      case ClinicalRiskLevel.stable:
        return AppColors.stable;
    }
  }

  String _formatGender(String gender) {
    switch (gender.toLowerCase()) {
      case 'male':
        return 'M';
      case 'female':
        return 'F';
      default:
        return 'U';
    }
  }
}
