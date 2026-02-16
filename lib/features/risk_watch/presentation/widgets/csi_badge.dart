import 'package:flutter/material.dart';
import '../../../../core/theme/color_palette.dart';
import '../../../../core/theme/typography.dart';
import '../../../../shared/models/clinical/clinical_stability_index.dart';

/// Badge displaying Clinical Stability Index
class CSIBadge extends StatelessWidget {
  final ClinicalStabilityIndex csi;
  final bool showScore;
  final double size;

  const CSIBadge({
    super.key,
    required this.csi,
    this.showScore = true,
    this.size = 40,
  });

  @override
  Widget build(BuildContext context) {
    final color = _getRiskColor();
    final gradient = _getRiskGradient();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Circular indicator
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            gradient: gradient,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: color.withOpacity(0.3),
                blurRadius: 8,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Center(
            child: Text(
              csi.score.toInt().toString(),
              style: AppTypography.titleMedium(
                color: Colors.white,
              ).copyWith(fontWeight: FontWeight.bold),
            ),
          ),
        ),

        if (showScore) ...[
          const SizedBox(height: 4),
          Text(
            csi.riskLabel,
            style: AppTypography.labelSmall(
              color: color,
            ).copyWith(fontWeight: FontWeight.w600),
          ),
        ],
      ],
    );
  }

  Color _getRiskColor() {
    switch (csi.riskLevel) {
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

  Gradient _getRiskGradient() {
    switch (csi.riskLevel) {
      case ClinicalRiskLevel.critical:
        return AppGradients.criticalGradient;
      case ClinicalRiskLevel.high:
        return AppGradients.warningGradient;
      case ClinicalRiskLevel.medium:
        return AppGradients.primaryGradient;
      case ClinicalRiskLevel.low:
        return AppGradients.successGradient;
      case ClinicalRiskLevel.stable:
        return AppGradients.stableGradient;
    }
  }
}

/// Compact CSI indicator (for list items)
class CSIIndicator extends StatelessWidget {
  final ClinicalStabilityIndex csi;

  const CSIIndicator({super.key, required this.csi});

  @override
  Widget build(BuildContext context) {
    final color = _getRiskColor();

    return Container(
      width: 4,
      height: 48,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }

  Color _getRiskColor() {
    switch (csi.riskLevel) {
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
}
