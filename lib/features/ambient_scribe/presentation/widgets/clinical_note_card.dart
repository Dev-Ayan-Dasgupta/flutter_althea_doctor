import 'package:flutter/material.dart';
import '../../../../core/theme/color_palette.dart';
import '../../../../core/theme/typography.dart';
import '../../../../core/utils/extensions.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../domain/entities/clinical_note.dart';

/// Card displaying a clinical note
class ClinicalNoteCard extends StatelessWidget {
  final ClinicalNote note;
  final VoidCallback? onTap;
  final VoidCallback? onSign;
  final VoidCallback? onEdit;

  const ClinicalNoteCard({
    super.key,
    required this.note,
    this.onTap,
    this.onSign,
    this.onEdit,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isDark ? AppColors.darkSurface : AppColors.lightSurface,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: _getStatusColor().withValues(alpha: 0.3),
            width: 1.5,
          ),
          boxShadow: [
            BoxShadow(
              color: (isDark ? AppColors.darkShadow : AppColors.lightShadow)
                  .withValues(alpha: 0.05),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(
              children: [
                // Patient avatar
                CircleAvatar(
                  radius: 20,
                  backgroundColor: AppColors.primary.withValues(alpha: 0.1),
                  child: Text(
                    note.patientName[0].toUpperCase(),
                    style: AppTypography.titleSmall(color: AppColors.primary),
                  ),
                ),

                const SizedBox(width: 12),

                // Patient name and date
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        note.patientName,
                        style: AppTypography.titleMedium(),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 2),
                      Text(
                        note.createdAt.toFormattedDateTime(),
                        style: AppTypography.bodySmall(
                          color: isDark
                              ? AppColors.darkOnSurfaceVariant
                              : AppColors.lightOnSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                ),

                // Status badge
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: _getStatusColor().withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: _getStatusColor(), width: 1),
                  ),
                  child: Text(
                    _getStatusLabel(),
                    style: AppTypography.labelSmall(
                      color: _getStatusColor(),
                    ).copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),

            // Format badge
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.info.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.description,
                        size: 14,
                        color: AppColors.info,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        note.format.name.toUpperCase(),
                        style: AppTypography.labelSmall(color: AppColors.info),
                      ),
                    ],
                  ),
                ),

                if (note.wordCount != null) ...[
                  const SizedBox(width: 8),
                  Text(
                    '${note.wordCount} words',
                    style: AppTypography.bodySmall(
                      color: isDark
                          ? AppColors.darkOnSurfaceVariant
                          : AppColors.lightOnSurfaceVariant,
                    ),
                  ),
                ],

                if (note.confidence != null) ...[
                  const SizedBox(width: 12),
                  Row(
                    children: [
                      Icon(
                        Icons.psychology,
                        size: 14,
                        color: _getConfidenceColor(note.confidence!),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        '${note.confidence}% AI',
                        style: AppTypography.bodySmall(
                          color: _getConfidenceColor(note.confidence!),
                        ),
                      ),
                    ],
                  ),
                ],
              ],
            ),

            const SizedBox(height: 12),

            // Preview snippets
            if (note.subjective != null && note.subjective!.isNotEmpty) ...[
              _buildSectionPreview(
                'Subjective',
                note.subjective!,
                Icons.person_outline,
                isDark,
              ),
              const SizedBox(height: 8),
            ],

            if (note.assessment != null && note.assessment!.isNotEmpty) ...[
              _buildSectionPreview(
                'Assessment',
                note.assessment!,
                Icons.analytics_outlined,
                isDark,
              ),
              const SizedBox(height: 8),
            ],

            // Extracted information
            if (note.diagnoses != null && note.diagnoses!.isNotEmpty) ...[
              const SizedBox(height: 4),
              Wrap(
                spacing: 6,
                runSpacing: 6,
                children: note.diagnoses!.take(3).map((diagnosis) {
                  return Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.critical.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(
                        color: AppColors.critical.withValues(alpha: 0.3),
                        width: 1,
                      ),
                    ),
                    child: Text(diagnosis, style: AppTypography.labelSmall()),
                  );
                }).toList(),
              ),
            ],

            // ICD codes
            if (note.icdCodes != null && note.icdCodes!.isNotEmpty) ...[
              const SizedBox(height: 12),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color:
                      (isDark
                              ? AppColors.darkSurfaceVariant
                              : AppColors.lightSurfaceVariant)
                          .withValues(alpha: 0.3),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.medical_information,
                      size: 16,
                      color: AppColors.success,
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        'ICD Codes: ${note.icdCodes!.map((c) => c.code).join(", ")}',
                        style: AppTypography.labelSmall(),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ],

            // Footer with review info
            if (note.reviewed == true) ...[
              const SizedBox(height: 12),
              Row(
                children: [
                  Icon(Icons.verified, size: 16, color: AppColors.success),
                  const SizedBox(width: 6),
                  Text(
                    'Reviewed by ${note.reviewedBy}',
                    style: AppTypography.bodySmall(color: AppColors.success),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    note.reviewedAt!.toRelativeTime(),
                    style: AppTypography.bodySmall(
                      color: isDark
                          ? AppColors.darkOnSurfaceVariant
                          : AppColors.lightOnSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ],

            // Action buttons
            if (note.isEditable) ...[
              const SizedBox(height: 12),
              Row(
                children: [
                  if (onEdit != null)
                    Expanded(
                      child: CustomButton(
                        label: 'Edit',
                        onPressed: onEdit,
                        variant: ButtonVariant.outlined,
                        size: ButtonSize.small,
                        icon: const Icon(Icons.edit, size: 16),
                      ),
                    ),
                  if (onEdit != null && onSign != null)
                    const SizedBox(width: 8),
                  if (onSign != null && note.status == NoteStatus.pending)
                    Expanded(
                      child: CustomButton(
                        label: 'Sign',
                        onPressed: onSign,
                        variant: ButtonVariant.primary,
                        size: ButtonSize.small,
                        icon: const Icon(Icons.draw, size: 16),
                      ),
                    ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildSectionPreview(
    String label,
    String content,
    IconData icon,
    bool isDark,
  ) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color:
            (isDark
                    ? AppColors.darkSurfaceVariant
                    : AppColors.lightSurfaceVariant)
                .withValues(alpha: 0.3),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            size: 16,
            color: isDark
                ? AppColors.darkOnSurfaceVariant
                : AppColors.lightOnSurfaceVariant,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: AppTypography.labelSmall(
                    color: isDark
                        ? AppColors.darkOnSurfaceVariant
                        : AppColors.lightOnSurfaceVariant,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  content,
                  style: AppTypography.bodySmall(),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Color _getStatusColor() {
    switch (note.status) {
      case NoteStatus.draft:
        return AppColors.info;
      case NoteStatus.pending:
        return AppColors.warning;
      case NoteStatus.reviewed:
        return AppColors.primary;
      case NoteStatus.signed:
        return AppColors.success;
      case NoteStatus.archived:
        return AppColors.stable;
    }
  }

  Color _getConfidenceColor(int confidence) {
    if (confidence >= 90) return AppColors.success;
    if (confidence >= 75) return AppColors.info;
    return AppColors.warning;
  }

  String _getStatusLabel() {
    switch (note.status) {
      case NoteStatus.draft:
        return 'Draft';
      case NoteStatus.pending:
        return 'Pending';
      case NoteStatus.reviewed:
        return 'Reviewed';
      case NoteStatus.signed:
        return 'Signed';
      case NoteStatus.archived:
        return 'Archived';
    }
  }
}
