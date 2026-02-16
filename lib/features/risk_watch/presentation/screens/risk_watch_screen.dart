import 'package:flutter/material.dart';
import 'package:flutter_althea_doctor/core/widgets/custom_button.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/theme/color_palette.dart';
import '../../../../core/theme/typography.dart';
import '../../../../core/utils/responsive.dart';
import '../../../../shared/models/clinical/clinical_stability_index.dart';
import '../state/risk_watch_notifier.dart';
import '../widgets/patient_list_item.dart';
import '../widgets/risk_filter_bar.dart';

class RiskWatchScreen extends ConsumerStatefulWidget {
  const RiskWatchScreen({super.key});

  @override
  ConsumerState<RiskWatchScreen> createState() => _RiskWatchScreenState();
}

class _RiskWatchScreenState extends ConsumerState<RiskWatchScreen> {
  final _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(riskWatchProvider);
    final notifier = ref.read(riskWatchProvider.notifier);
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final isMobile = Responsive.isMobile(context);

    return Column(
      children: [
        // Search bar
        Container(
          padding: EdgeInsets.all(isMobile ? 12 : 16),
          decoration: BoxDecoration(
            color: isDark ? AppColors.darkSurface : AppColors.lightSurface,
            border: Border(
              bottom: BorderSide(
                color: isDark ? AppColors.darkDivider : AppColors.lightDivider,
              ),
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    hintText: 'Search patients...',
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: _searchController.text.isNotEmpty
                        ? IconButton(
                            icon: const Icon(Icons.clear),
                            onPressed: () {
                              _searchController.clear();
                              notifier.search('');
                            },
                          )
                        : null,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                  ),
                  onChanged: (value) {
                    notifier.search(value);
                  },
                ),
              ),
              const SizedBox(width: 12),
              IconButton(
                icon: const Icon(Icons.filter_list),
                onPressed: () {
                  _showFilterBottomSheet(context);
                },
                tooltip: 'Filters',
              ),
              IconButton(
                icon: const Icon(Icons.refresh),
                onPressed: () {
                  notifier.refresh();
                },
                tooltip: 'Refresh',
              ),
            ],
          ),
        ),

        // Risk filter bar
        RiskFilterBar(
          selectedRiskLevel: state.filterRiskLevel,
          riskLevelCounts: state.riskLevelCounts,
          onRiskLevelSelected: (level) {
            notifier.filterByRiskLevel(level);
          },
        ),

        // Patient count summary
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: isMobile ? 12 : 16,
            vertical: 8,
          ),
          child: Row(
            children: [
              Text(
                '${state.sortedPatients.length} ${state.sortedPatients.length == 1 ? 'patient' : 'patients'}',
                style: AppTypography.bodyMedium(
                  color: isDark
                      ? AppColors.darkOnSurfaceVariant
                      : AppColors.lightOnSurfaceVariant,
                ),
              ),
              if (state.searchQuery.isNotEmpty ||
                  state.filterRiskLevel != null) ...[
                const SizedBox(width: 8),
                TextButton(
                  onPressed: () {
                    _searchController.clear();
                    notifier.clearFilters();
                  },
                  child: Text(
                    'Clear filters',
                    style: AppTypography.labelMedium(color: AppColors.primary),
                  ),
                ),
              ],
              const Spacer(),
              // Critical count badge
              if (state.riskLevelCounts[ClinicalRiskLevel.critical]! > 0)
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    gradient: AppGradients.criticalGradient,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.priority_high,
                        size: 16,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        '${state.riskLevelCounts[ClinicalRiskLevel.critical]} Critical',
                        style: AppTypography.labelSmall(
                          color: Colors.white,
                        ).copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),

        // Patient list
        Expanded(child: _buildPatientList(state, isDark)),
      ],
    );
  }

  Widget _buildPatientList(RiskWatchState state, bool isDark) {
    if (state.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (state.error != null) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.error_outline, size: 64, color: AppColors.critical),
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
            ElevatedButton.icon(
              onPressed: () {
                ref.read(riskWatchProvider.notifier).refresh();
              },
              icon: const Icon(Icons.refresh),
              label: const Text('Retry'),
            ),
          ],
        ),
      );
    }

    if (state.sortedPatients.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.search_off,
              size: 64,
              color: isDark
                  ? AppColors.darkOnSurfaceVariant
                  : AppColors.lightOnSurfaceVariant,
            ),
            const SizedBox(height: 16),
            Text('No patients found', style: AppTypography.titleLarge()),
            const SizedBox(height: 8),
            Text(
              'Try adjusting your search or filters',
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
        await ref.read(riskWatchProvider.notifier).refresh();
      },
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 8),
        itemCount: state.sortedPatients.length,
        itemBuilder: (context, index) {
          final patient = state.sortedPatients[index];
          return PatientListItem(
            patient: patient,
            onTap: () {
              ref.read(riskWatchProvider.notifier).markAsReviewed(patient.id);
            },
          );
        },
      ),
    );
  }

  void _showFilterBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Container(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('Filters', style: AppTypography.titleLarge()),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Text('Risk Level', style: AppTypography.titleSmall()),
              const SizedBox(height: 12),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: ClinicalRiskLevel.values.map((level) {
                  return FilterChip(
                    label: Text(_getRiskLevelLabel(level)),
                    selected:
                        ref.read(riskWatchProvider).filterRiskLevel == level,
                    onSelected: (selected) {
                      ref
                          .read(riskWatchProvider.notifier)
                          .filterByRiskLevel(selected ? level : null);
                      Navigator.pop(context);
                    },
                  );
                }).toList(),
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: CustomButton(
                  label: 'Clear All Filters',
                  onPressed: () {
                    ref.read(riskWatchProvider.notifier).clearFilters();
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  String _getRiskLevelLabel(ClinicalRiskLevel level) {
    switch (level) {
      case ClinicalRiskLevel.critical:
        return 'Critical';
      case ClinicalRiskLevel.high:
        return 'High Risk';
      case ClinicalRiskLevel.medium:
        return 'Medium Risk';
      case ClinicalRiskLevel.low:
        return 'Low Risk';
      case ClinicalRiskLevel.stable:
        return 'Stable';
    }
  }
}
