import 'package:flutter/material.dart';
import '../../../../core/theme/color_palette.dart';
import '../../../../core/theme/typography.dart';
import '../../../../core/utils/extensions.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../domain/entities/consultation.dart';

/// Card displaying a consultation
class ConsultationCard extends StatelessWidget {
  final Consultation consultation;
  final VoidCallback? onJoin;
  final VoidCallback? onCancel;
  final VoidCallback? onTap;

  const ConsultationCard({
    super.key,
    required this.consultation,
    this.onJoin,
    this.onCancel,
    this.onTap,
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
            color: _getStatusColor().withOpacity(0.3),
            width: 1.5,
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(
              children: [
                // Patient avatar
                CircleAvatar(
                  radius: 24,
                  backgroundColor: _getTypeColor().withOpacity(0.1),
                  child: Icon(Icons.person, color: _getTypeColor()),
                ),

                const SizedBox(width: 12),

                // Patient name and time
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        consultation.patientName,
                        style: AppTypography.titleMedium(),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 2),
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
                            _getTimeDisplay(),
                            style: AppTypography.bodySmall(
                              color: isDark
                                  ? AppColors.darkOnSurfaceVariant
                                  : AppColors.lightOnSurfaceVariant,
                            ),
                          ),
                        ],
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
                    color: _getStatusColor().withOpacity(0.1),
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

            // Type badge
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: _getTypeColor().withOpacity(0.1),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(_getTypeIcon(), size: 14, color: _getTypeColor()),
                      const SizedBox(width: 4),
                      Text(
                        _getTypeLabel(),
                        style: AppTypography.labelSmall(color: _getTypeColor()),
                      ),
                    ],
                  ),
                ),
                if (consultation.recordingEnabled == true) ...[
                  const SizedBox(width: 8),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.critical.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.fiber_manual_record,
                          size: 14,
                          color: AppColors.critical,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          'Recording',
                          style: AppTypography.labelSmall(
                            color: AppColors.critical,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ],
            ),

            // Reason
            if (consultation.reason != null) ...[
              const SizedBox(height: 12),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color:
                      (isDark
                              ? AppColors.darkSurfaceVariant
                              : AppColors.lightSurfaceVariant)
                          .withOpacity(0.3),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.info_outline,
                      size: 16,
                      color: isDark
                          ? AppColors.darkOnSurfaceVariant
                          : AppColors.lightOnSurfaceVariant,
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        consultation.reason!,
                        style: AppTypography.bodyMedium(),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ],

            // Notes (for completed consultations)
            if (consultation.notes != null) ...[
              const SizedBox(height: 12),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: AppColors.success.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: AppColors.success.withOpacity(0.3),
                    width: 1,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.note_outlined,
                      size: 16,
                      color: AppColors.success,
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Consultation Notes',
                            style: AppTypography.labelMedium(
                              color: AppColors.success,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            consultation.notes!,
                            style: AppTypography.bodySmall(),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],

            // Metrics (for completed consultations)
            if (consultation.metrics != null) ...[
              const SizedBox(height: 12),
              Wrap(
                spacing: 12,
                runSpacing: 8,
                children: [
                  _buildMetricChip(
                    Icons.timer,
                    '${consultation.metrics!.callDuration.inMinutes} min',
                    isDark,
                  ),
                  if (consultation.metrics!.connectionQuality != null)
                    _buildMetricChip(
                      Icons.signal_cellular_alt,
                      consultation.metrics!.connectionQuality!,
                      isDark,
                    ),
                  if (consultation.metrics!.screenShared == true)
                    _buildMetricChip(
                      Icons.screen_share,
                      'Screen shared',
                      isDark,
                    ),
                  if (consultation.metrics!.vitalsShared == true)
                    _buildMetricChip(Icons.favorite, 'Vitals shared', isDark),
                ],
              ),
            ],

            // Action buttons
            if (consultation.status == ConsultationStatus.scheduled ||
                consultation.status == ConsultationStatus.inProgress) ...[
              const SizedBox(height: 12),
              Row(
                children: [
                  if (consultation.canJoin && onJoin != null)
                    Expanded(
                      child: CustomButton(
                        label:
                            consultation.status == ConsultationStatus.inProgress
                            ? 'Rejoin Call'
                            : 'Join Call',
                        onPressed: onJoin,
                        variant: ButtonVariant.gradient,
                        size: ButtonSize.medium,
                        icon: const Icon(Icons.video_call, size: 18),
                      ),
                    ),
                  if (consultation.canCancel && onCancel != null) ...[
                    if (consultation.canJoin) const SizedBox(width: 8),
                    if (!consultation.canJoin)
                      Expanded(
                        child: CustomButton(
                          label: 'Cancel',
                          onPressed: onCancel,
                          variant: ButtonVariant.outlined,
                          size: ButtonSize.medium,
                        ),
                      )
                    else
                      IconButton(
                        icon: const Icon(Icons.cancel_outlined),
                        color: AppColors.critical,
                        onPressed: onCancel,
                        tooltip: 'Cancel consultation',
                      ),
                  ],
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildMetricChip(IconData icon, String label, bool isDark) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color:
            (isDark
                    ? AppColors.darkSurfaceVariant
                    : AppColors.lightSurfaceVariant)
                .withOpacity(0.5),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14, color: AppColors.info),
          const SizedBox(width: 4),
          Text(label, style: AppTypography.labelSmall()),
        ],
      ),
    );
  }

  String _getTimeDisplay() {
    if (consultation.status == ConsultationStatus.completed) {
      return 'Completed ${consultation.endedAt!.toRelativeTime()}';
    } else if (consultation.status == ConsultationStatus.inProgress) {
      return 'Started ${consultation.startedAt!.toRelativeTime()}';
    } else {
      final now = DateTime.now();
      final diff = consultation.scheduledAt.difference(now);

      if (diff.inMinutes < 60) {
        return 'In ${diff.inMinutes} minutes';
      } else if (diff.inHours < 24) {
        return 'In ${diff.inHours} hours';
      } else {
        return consultation.scheduledAt.toFormattedDateTime();
      }
    }
  }

  Color _getStatusColor() {
    switch (consultation.status) {
      case ConsultationStatus.scheduled:
        return AppColors.info;
      case ConsultationStatus.waitingRoom:
        return AppColors.warning;
      case ConsultationStatus.inProgress:
        return AppColors.success;
      case ConsultationStatus.completed:
        return AppColors.stable;
      case ConsultationStatus.cancelled:
        return AppColors.critical;
      case ConsultationStatus.noShow:
        return AppColors.critical;
    }
  }

  Color _getTypeColor() {
    switch (consultation.type) {
      case ConsultationType.routine:
        return AppColors.primary;
      case ConsultationType.urgent:
        return AppColors.warning;
      case ConsultationType.followUp:
        return AppColors.info;
      case ConsultationType.emergency:
        return AppColors.critical;
      case ConsultationType.specialist:
        return AppColors.accentCyan;
    }
  }

  IconData _getTypeIcon() {
    switch (consultation.type) {
      case ConsultationType.routine:
        return Icons.event;
      case ConsultationType.urgent:
        return Icons.priority_high;
      case ConsultationType.followUp:
        return Icons.update;
      case ConsultationType.emergency:
        return Icons.local_hospital;
      case ConsultationType.specialist:
        return Icons.medical_services;
    }
  }

  String _getStatusLabel() {
    switch (consultation.status) {
      case ConsultationStatus.scheduled:
        return 'Scheduled';
      case ConsultationStatus.waitingRoom:
        return 'Waiting';
      case ConsultationStatus.inProgress:
        return 'In Progress';
      case ConsultationStatus.completed:
        return 'Completed';
      case ConsultationStatus.cancelled:
        return 'Cancelled';
      case ConsultationStatus.noShow:
        return 'No Show';
    }
  }

  String _getTypeLabel() {
    switch (consultation.type) {
      case ConsultationType.routine:
        return 'Routine';
      case ConsultationType.urgent:
        return 'Urgent';
      case ConsultationType.followUp:
        return 'Follow-up';
      case ConsultationType.emergency:
        return 'Emergency';
      case ConsultationType.specialist:
        return 'Specialist';
    }
  }
}
