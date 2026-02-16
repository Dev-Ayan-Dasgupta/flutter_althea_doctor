import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/theme/color_palette.dart';
import '../../../../core/theme/typography.dart';
import '../../../../core/utils/responsive.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../domain/entities/clinical_note.dart';
import '../state/scribe_notifier.dart';
import '../widgets/clinical_note_card.dart';
import 'note_editor_screen.dart';
import 'recording_screen.dart';

class AmbientScribeScreen extends ConsumerWidget {
  const AmbientScribeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(ambientScribeProvider);
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      body: _buildBody(context, ref, state, isDark),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const RecordingScreen()),
          );
        },
        icon: const Icon(Icons.mic),
        label: const Text('Start Recording'),
      ),
    );
  }

  Widget _buildBody(
    BuildContext context,
    WidgetRef ref,
    AmbientScribeState state,
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
                ref.read(ambientScribeProvider.notifier).refresh();
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

        // Notes list
        Expanded(child: _buildNotesList(context, ref, state, isDark)),
      ],
    );
  }

  Widget _buildSummaryHeader(
    BuildContext context,
    WidgetRef ref,
    AmbientScribeState state,
    bool isDark,
  ) {
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
                Icons.auto_awesome,
                size: isMobile ? 24 : 32,
                color: AppColors.primary,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'AI Clinical Documentation',
                      style: isMobile
                          ? AppTypography.titleLarge()
                          : AppTypography.headlineSmall(),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '${state.filteredNotes.length} notes',
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

          // Status filters
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              _buildStatusChip(
                context,
                ref,
                'Draft',
                statusCounts[NoteStatus.draft] ?? 0,
                AppColors.info,
                NoteStatus.draft,
                state.filterStatus,
              ),
              _buildStatusChip(
                context,
                ref,
                'Pending',
                statusCounts[NoteStatus.pending] ?? 0,
                AppColors.warning,
                NoteStatus.pending,
                state.filterStatus,
              ),
              _buildStatusChip(
                context,
                ref,
                'Signed',
                statusCounts[NoteStatus.signed] ?? 0,
                AppColors.success,
                NoteStatus.signed,
                state.filterStatus,
              ),
            ],
          ),

          if (state.filterStatus != null) ...[
            const SizedBox(height: 12),
            CustomButton(
              label: 'Clear Filter',
              onPressed: () {
                ref.read(ambientScribeProvider.notifier).clearFilter();
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
    NoteStatus status,
    NoteStatus? currentFilter,
  ) {
    final isSelected = currentFilter == status;

    return InkWell(
      onTap: () {
        ref
            .read(ambientScribeProvider.notifier)
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

  Widget _buildNotesList(
    BuildContext context,
    WidgetRef ref,
    AmbientScribeState state,
    bool isDark,
  ) {
    if (state.filteredNotes.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.note_add_outlined,
              size: 64,
              color: isDark
                  ? AppColors.darkOnSurfaceVariant
                  : AppColors.lightOnSurfaceVariant,
            ),
            const SizedBox(height: 16),
            Text(
              state.filterStatus != null
                  ? 'No matching notes'
                  : 'No clinical notes yet',
              style: AppTypography.titleLarge(),
            ),
            const SizedBox(height: 8),
            Text(
              state.filterStatus != null
                  ? 'Try changing the filter'
                  : 'Start recording to create your first note',
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
        await ref.read(ambientScribeProvider.notifier).refresh();
      },
      child: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: state.filteredNotes.length,
        itemBuilder: (context, index) {
          final note = state.filteredNotes[index];
          return ClinicalNoteCard(
            note: note,
            onTap: () {
              ref.read(ambientScribeProvider.notifier).selectNote(note);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NoteEditorScreen(note: note),
                ),
              );
            },
            onEdit: note.isEditable
                ? () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NoteEditorScreen(note: note),
                      ),
                    );
                  }
                : null,
            onSign: note.status == NoteStatus.pending
                ? () => _signNote(context, ref, note)
                : null,
          );
        },
      ),
    );
  }

  Future<void> _signNote(
    BuildContext context,
    WidgetRef ref,
    ClinicalNote note,
  ) async {
    final confirm = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Sign Note', style: AppTypography.titleLarge()),
        content: Text(
          'Are you sure you want to sign this clinical note? Once signed, it cannot be edited.',
          style: AppTypography.bodyMedium(),
        ),
        actions: [
          CustomButton(
            label: 'Cancel',
            onPressed: () => Navigator.pop(context, false),
            variant: ButtonVariant.outlined,
          ),
          CustomButton(
            label: 'Sign Note',
            onPressed: () => Navigator.pop(context, true),
            variant: ButtonVariant.primary,
          ),
        ],
      ),
    );

    if (confirm == true) {
      final success = await ref
          .read(ambientScribeProvider.notifier)
          .signNote(note.id);

      if (success && context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Clinical note signed successfully'),
            backgroundColor: AppColors.success,
          ),
        );
      }
    }
  }
}
