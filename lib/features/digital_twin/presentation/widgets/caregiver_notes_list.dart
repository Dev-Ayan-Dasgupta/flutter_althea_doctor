import 'package:flutter/material.dart';
import '../../../../core/theme/color_palette.dart';
import '../../../../core/theme/typography.dart';
import '../../../../core/utils/export.dart';
import '../../domain/entities/vitals_timeline.dart';

/// List of caregiver notes
class CaregiverNotesList extends StatelessWidget {
  final List<CaregiverNote> notes;

  const CaregiverNotesList({super.key, required this.notes});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    if (notes.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.note_outlined,
              size: 48,
              color: isDark
                  ? AppColors.darkOnSurfaceVariant
                  : AppColors.lightOnSurfaceVariant,
            ),
            const SizedBox(height: 8),
            Text(
              'No caregiver notes',
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

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: notes.length,
      itemBuilder: (context, index) {
        final note = notes[index];
        return _CaregiverNoteCard(note: note);
      },
    );
  }
}

class _CaregiverNoteCard extends StatelessWidget {
  final CaregiverNote note;

  const _CaregiverNoteCard({required this.note});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isDark ? AppColors.darkSurface : AppColors.lightSurface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: _getNoteTypeColor().withValues(alpha: 0.3),
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: _getNoteTypeColor().withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      _getNoteTypeIcon(),
                      size: 14,
                      color: _getNoteTypeColor(),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      _getNoteTypeLabel(),
                      style: AppTypography.labelSmall(
                        color: _getNoteTypeColor(),
                      ).copyWith(fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Text(
                note.timestamp.toRelativeTime(),
                style: AppTypography.bodySmall(
                  color: isDark
                      ? AppColors.darkOnSurfaceVariant
                      : AppColors.lightOnSurfaceVariant,
                ),
              ),
            ],
          ),

          const SizedBox(height: 12),

          // Content
          Text(note.content, style: AppTypography.bodyMedium()),

          const SizedBox(height: 8),

          // Footer
          Row(
            children: [
              CircleAvatar(
                radius: 12,
                backgroundColor: AppColors.primary,
                child: Text(
                  note.authorName.split(' ').first[0].toUpperCase(),
                  style: AppTypography.labelSmall(color: Colors.white),
                ),
              ),
              const SizedBox(width: 8),
              Text(
                note.authorName,
                style: AppTypography.labelSmall(
                  color: isDark
                      ? AppColors.darkOnSurfaceVariant
                      : AppColors.lightOnSurfaceVariant,
                ),
              ),
              if (note.tags != null && note.tags!.isNotEmpty) ...[
                const SizedBox(width: 12),
                Expanded(
                  child: Wrap(
                    spacing: 6,
                    runSpacing: 4,
                    children: note.tags!.map((tag) {
                      return Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          color:
                              (isDark
                                      ? AppColors.darkSurfaceVariant
                                      : AppColors.lightSurfaceVariant)
                                  .withValues(alpha: 0.5),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(tag, style: AppTypography.labelSmall()),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }

  Color _getNoteTypeColor() {
    switch (note.type) {
      case CaregiverNoteType.observation:
        return AppColors.info;
      case CaregiverNoteType.activity:
        return AppColors.success;
      case CaregiverNoteType.feeding:
        return AppColors.stable;
      case CaregiverNoteType.hygiene:
        return AppColors.primary;
      case CaregiverNoteType.medication:
        return AppColors.warning;
      case CaregiverNoteType.incident:
        return AppColors.critical;
      case CaregiverNoteType.communication:
        return AppColors.accentCyan;
    }
  }

  IconData _getNoteTypeIcon() {
    switch (note.type) {
      case CaregiverNoteType.observation:
        return Icons.visibility;
      case CaregiverNoteType.activity:
        return Icons.directions_walk;
      case CaregiverNoteType.feeding:
        return Icons.restaurant;
      case CaregiverNoteType.hygiene:
        return Icons.shower;
      case CaregiverNoteType.medication:
        return Icons.medication;
      case CaregiverNoteType.incident:
        return Icons.warning;
      case CaregiverNoteType.communication:
        return Icons.chat;
    }
  }

  String _getNoteTypeLabel() {
    switch (note.type) {
      case CaregiverNoteType.observation:
        return 'Observation';
      case CaregiverNoteType.activity:
        return 'Activity';
      case CaregiverNoteType.feeding:
        return 'Feeding';
      case CaregiverNoteType.hygiene:
        return 'Hygiene';
      case CaregiverNoteType.medication:
        return 'Medication';
      case CaregiverNoteType.incident:
        return 'Incident';
      case CaregiverNoteType.communication:
        return 'Communication';
    }
  }
}
