import 'package:flutter/material.dart';
import '../../../../core/theme/color_palette.dart';
import '../../../../core/theme/typography.dart';
import '../../../risk_watch/domain/entities/patient_summary.dart';
import '../../../../shared/models/clinical/clinical_stability_index.dart';

class DashboardPatientList extends StatelessWidget {
  final List<PatientSummary> patients;

  const DashboardPatientList({super.key, required this.patients});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Column(
      children: patients.map((patient) {
        return Container(
          margin: const EdgeInsets.only(bottom: 12),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: isDark ? AppColors.darkSurface : AppColors.lightSurface,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: _getRiskColor(patient.csi.riskLevel).withOpacity(0.3),
              width: 2,
            ),
          ),
          child: Row(
            children: [
              CircleAvatar(
                radius: 24,
                backgroundColor: _getRiskColor(
                  patient.csi.riskLevel,
                ).withOpacity(0.1),
                child: Text(
                  patient.name.isNotEmpty ? patient.name[0].toUpperCase() : '?',
                  style: AppTypography.titleMedium(
                    color: _getRiskColor(patient.csi.riskLevel),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(patient.name, style: AppTypography.titleSmall()),
                    Text(
                      'CSI: ${patient.csi.score.toStringAsFixed(1)}',
                      style: AppTypography.bodySmall(
                        color: _getRiskColor(patient.csi.riskLevel),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: _getRiskColor(patient.csi.riskLevel).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  _getRiskLevelLabel(patient.csi.riskLevel),
                  style: AppTypography.labelSmall(
                    color: _getRiskColor(patient.csi.riskLevel),
                  ),
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }

  Color _getRiskColor(ClinicalRiskLevel level) {
    switch (level) {
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

  String _getRiskLevelLabel(ClinicalRiskLevel level) {
    switch (level) {
      case ClinicalRiskLevel.critical:
        return 'CRITICAL';
      case ClinicalRiskLevel.high:
        return 'HIGH';
      case ClinicalRiskLevel.medium:
        return 'MEDIUM';
      case ClinicalRiskLevel.low:
        return 'LOW';
      case ClinicalRiskLevel.stable:
        return 'STABLE';
    }
  }
}
