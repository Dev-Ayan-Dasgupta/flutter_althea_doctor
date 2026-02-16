import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/theme/color_palette.dart';
import '../../../../core/theme/typography.dart';
import '../../../../core/utils/responsive.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../domain/entities/consultation.dart';
import '../state/telepresence_notifier.dart';
import '../widgets/consultation_card.dart';
import 'video_call_screen.dart';
import 'schedule_consultation_screen.dart';

class TelepresenceScreen extends ConsumerWidget {
  const TelepresenceScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(
      telepresenceProvider('doc-001'),
    ); // TODO: Get from auth
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      body: _buildBody(context, ref, state, isDark),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ScheduleConsultationScreen(),
            ),
          );
        },
        icon: const Icon(Icons.add),
        label: const Text('Schedule'),
      ),
    );
  }

  Widget _buildBody(
    BuildContext context,
    WidgetRef ref,
    TelepresenceState state,
    bool isDark,
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
                ref.read(telepresenceProvider('doc-001').notifier).refresh();
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
        _buildSummaryHeader(context, ref, state, isDark),

        // Consultations list
        Expanded(child: _buildConsultationsList(context, ref, state, isDark)),
      ],
    );
  }

  Widget _buildSummaryHeader(
    BuildContext context,
    WidgetRef ref,
    TelepresenceState state,
    bool isDark,
  ) {
    final upcoming = state.upcomingConsultations;
    final statusCounts = state.statusCounts;
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
                Icons.video_call,
                size: isMobile ? 24 : 32,
                color: AppColors.primary,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Video Consultations',
                      style: isMobile
                          ? AppTypography.titleLarge()
                          : AppTypography.headlineSmall(),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '${upcoming.length} upcoming',
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

          // Status counts
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              _buildStatusChip(
                context,
                ref,
                'Scheduled',
                statusCounts[ConsultationStatus.scheduled] ?? 0,
                AppColors.info,
                ConsultationStatus.scheduled,
                state.filterStatus,
              ),
              _buildStatusChip(
                context,
                ref,
                'In Progress',
                statusCounts[ConsultationStatus.inProgress] ?? 0,
                AppColors.success,
                ConsultationStatus.inProgress,
                state.filterStatus,
              ),
              _buildStatusChip(
                context,
                ref,
                'Completed',
                statusCounts[ConsultationStatus.completed] ?? 0,
                AppColors.stable,
                ConsultationStatus.completed,
                state.filterStatus,
              ),
            ],
          ),

          if (state.filterStatus != null) ...[
            const SizedBox(height: 12),
            CustomButton(
              label: 'Clear Filter',
              onPressed: () {
                ref
                    .read(telepresenceProvider('doc-001').notifier)
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

  Widget _buildStatusChip(
    BuildContext context,
    WidgetRef ref,
    String label,
    int count,
    Color color,
    ConsultationStatus status,
    ConsultationStatus? currentFilter,
  ) {
    final isSelected = currentFilter == status;

    return InkWell(
      onTap: () {
        ref
            .read(telepresenceProvider('doc-001').notifier)
            .filterByStatus(isSelected ? null : status);
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

  Widget _buildConsultationsList(
    BuildContext context,
    WidgetRef ref,
    TelepresenceState state,
    bool isDark,
  ) {
    if (state.filteredConsultations.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.video_call_outlined,
              size: 64,
              color: isDark
                  ? AppColors.darkOnSurfaceVariant
                  : AppColors.lightOnSurfaceVariant,
            ),
            const SizedBox(height: 16),
            Text(
              state.filterStatus != null
                  ? 'No matching consultations'
                  : 'No consultations scheduled',
              style: AppTypography.titleLarge(),
            ),
            const SizedBox(height: 8),
            Text(
              state.filterStatus != null
                  ? 'Try changing the filter'
                  : 'Schedule your first consultation',
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
        await ref.read(telepresenceProvider('doc-001').notifier).refresh();
      },
      child: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: state.filteredConsultations.length,
        itemBuilder: (context, index) {
          final consultation = state.filteredConsultations[index];
          return ConsultationCard(
            consultation: consultation,
            onJoin: consultation.canJoin
                ? () => _joinCall(context, ref, consultation)
                : null,
            onCancel: consultation.canCancel
                ? () => _showCancelDialog(context, ref, consultation)
                : null,
          );
        },
      ),
    );
  }

  void _joinCall(
    BuildContext context,
    WidgetRef ref,
    Consultation consultation,
  ) async {
    // Start consultation
    final success = await ref
        .read(telepresenceProvider('doc-001').notifier)
        .startConsultation(consultation.id);

    if (success && context.mounted) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => VideoCallScreen(consultation: consultation),
        ),
      );
    }
  }

  void _showCancelDialog(
    BuildContext context,
    WidgetRef ref,
    Consultation consultation,
  ) {
    final reasonController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Cancel Consultation', style: AppTypography.titleLarge()),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Are you sure you want to cancel this consultation?',
              style: AppTypography.bodyMedium(),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: reasonController,
              decoration: const InputDecoration(
                labelText: 'Reason for cancellation',
                hintText: 'Enter reason...',
              ),
              maxLines: 3,
            ),
          ],
        ),
        actions: [
          CustomButton(
            label: 'Keep',
            onPressed: () => Navigator.pop(context),
            variant: ButtonVariant.outlined,
          ),
          CustomButton(
            label: 'Cancel Consultation',
            onPressed: () async {
              final success = await ref
                  .read(telepresenceProvider('doc-001').notifier)
                  .cancelConsultation(consultation.id, reasonController.text);

              if (context.mounted) {
                Navigator.pop(context);
                if (success) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Consultation cancelled'),
                      backgroundColor: AppColors.success,
                    ),
                  );
                }
              }
            },
            variant: ButtonVariant.primary,
          ),
        ],
      ),
    );
  }
}
