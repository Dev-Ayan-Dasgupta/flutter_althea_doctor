import 'package:flutter/material.dart';
import '../../../../core/theme/color_palette.dart';
import '../../../../core/theme/typography.dart';
import '../../../../core/utils/responsive.dart';
import '../../../../shared/models/clinical/clinical_stability_index.dart';

/// Horizontal filter bar for risk levels
class RiskFilterBar extends StatelessWidget {
  final ClinicalRiskLevel? selectedRiskLevel;
  final Map<ClinicalRiskLevel, int> riskLevelCounts;
  final Function(ClinicalRiskLevel?) onRiskLevelSelected;

  const RiskFilterBar({
    super.key,
    this.selectedRiskLevel,
    required this.riskLevelCounts,
    required this.onRiskLevelSelected,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final isMobile = Responsive.isMobile(context);

    return Container(
      height: isMobile ? 60 : 70,
      padding: EdgeInsets.symmetric(horizontal: isMobile ? 8 : 12, vertical: 8),
      decoration: BoxDecoration(
        color: isDark ? AppColors.darkSurface : AppColors.lightSurface,
        border: Border(
          bottom: BorderSide(
            color: isDark ? AppColors.darkDivider : AppColors.lightDivider,
          ),
        ),
      ),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _buildFilterChip(
            context,
            'All',
            riskLevelCounts.values.reduce((a, b) => a + b),
            selectedRiskLevel == null,
            null,
            () => onRiskLevelSelected(null),
          ),
          const SizedBox(width: 8),
          ...ClinicalRiskLevel.values.map((level) {
            return Padding(
              padding: const EdgeInsets.only(right: 8),
              child: _buildFilterChip(
                context,
                _getRiskLevelLabel(level),
                riskLevelCounts[level] ?? 0,
                selectedRiskLevel == level,
                level,
                () => onRiskLevelSelected(
                  selectedRiskLevel == level ? null : level,
                ),
              ),
            );
          }),
        ],
      ),
    );
  }

  Widget _buildFilterChip(
    BuildContext context,
    String label,
    int count,
    bool isSelected,
    ClinicalRiskLevel? level,
    VoidCallback onTap,
  ) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final color = level != null ? _getRiskColor(level) : AppColors.primary;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected
              ? color.withOpacity(0.2)
              : (isDark
                    ? AppColors.darkSurfaceVariant.withOpacity(0.3)
                    : AppColors.lightSurfaceVariant.withOpacity(0.5)),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isSelected ? color : Colors.transparent,
            width: 2,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (level != null)
              Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(color: color, shape: BoxShape.circle),
              ),
            if (level != null) const SizedBox(width: 8),
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
                color: isSelected
                    ? color
                    : (isDark
                          ? AppColors.darkSurfaceVariant
                          : AppColors.lightSurfaceVariant),
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

  String _getRiskLevelLabel(ClinicalRiskLevel level) {
    switch (level) {
      case ClinicalRiskLevel.critical:
        return 'Critical';
      case ClinicalRiskLevel.high:
        return 'High';
      case ClinicalRiskLevel.medium:
        return 'Medium';
      case ClinicalRiskLevel.low:
        return 'Low';
      case ClinicalRiskLevel.stable:
        return 'Stable';
    }
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
}
