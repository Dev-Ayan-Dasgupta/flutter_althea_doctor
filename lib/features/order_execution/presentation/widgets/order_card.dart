import 'package:flutter/material.dart';
import '../../../../core/theme/color_palette.dart';
import '../../../../core/theme/typography.dart';
import '../../../../core/utils/extensions.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../domain/entities/clinical_order.dart';

/// Card displaying a clinical order
class OrderCard extends StatelessWidget {
  final ClinicalOrder order;
  final VoidCallback? onTap;
  final Function(OrderStatus)? onStatusChange;
  final VoidCallback? onCancel;

  const OrderCard({
    super.key,
    required this.order,
    this.onTap,
    this.onStatusChange,
    this.onCancel,
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
                // Type icon
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: _getTypeColor().withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(_getTypeIcon(), size: 20, color: _getTypeColor()),
                ),

                const SizedBox(width: 12),

                // Title and type
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        order.title,
                        style: AppTypography.titleMedium(),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 2),
                      Text(
                        _getTypeLabel(),
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

                // Urgent badge
                if (order.urgent == true) ...[
                  const SizedBox(width: 8),
                  Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: AppColors.critical.withOpacity(0.1),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.priority_high,
                      size: 16,
                      color: AppColors.critical,
                    ),
                  ),
                ],
              ],
            ),

            const SizedBox(height: 12),

            // Description
            if (order.description != null) ...[
              Text(
                order.description!,
                style: AppTypography.bodyMedium(
                  color: isDark
                      ? AppColors.darkOnSurfaceVariant
                      : AppColors.lightOnSurfaceVariant,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 12),
            ],

            // Order-specific details
            _buildOrderDetails(context, isDark),

            const SizedBox(height: 12),

            // Footer
            Row(
              children: [
                Icon(
                  Icons.person_outline,
                  size: 14,
                  color: isDark
                      ? AppColors.darkOnSurfaceVariant
                      : AppColors.lightOnSurfaceVariant,
                ),
                const SizedBox(width: 4),
                Text(
                  order.orderedByName,
                  style: AppTypography.bodySmall(
                    color: isDark
                        ? AppColors.darkOnSurfaceVariant
                        : AppColors.lightOnSurfaceVariant,
                  ),
                ),
                const SizedBox(width: 12),
                Icon(
                  Icons.access_time,
                  size: 14,
                  color: isDark
                      ? AppColors.darkOnSurfaceVariant
                      : AppColors.lightOnSurfaceVariant,
                ),
                const SizedBox(width: 4),
                Text(
                  order.orderedAt.toRelativeTime(),
                  style: AppTypography.bodySmall(
                    color: isDark
                        ? AppColors.darkOnSurfaceVariant
                        : AppColors.lightOnSurfaceVariant,
                  ),
                ),
                const Spacer(),

                // Action buttons
                if (order.status == OrderStatus.pending &&
                    onStatusChange != null)
                  CustomButton(
                    label: 'Approve',
                    onPressed: () => onStatusChange!(OrderStatus.approved),
                    variant: ButtonVariant.primary,
                    size: ButtonSize.small,
                  ),
                if (order.canBeCancelled && onCancel != null) ...[
                  const SizedBox(width: 8),
                  IconButton(
                    icon: const Icon(Icons.cancel_outlined),
                    iconSize: 20,
                    color: AppColors.critical,
                    onPressed: onCancel,
                    tooltip: 'Cancel order',
                  ),
                ],
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOrderDetails(BuildContext context, bool isDark) {
    // Medication details
    if (order.medicationDetails != null) {
      final med = order.medicationDetails!;
      return Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color:
              (isDark
                      ? AppColors.darkSurfaceVariant
                      : AppColors.lightSurfaceVariant)
                  .withOpacity(0.3),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildDetailRow(
              Icons.medication,
              'Dosage',
              '${med.dosage} • ${med.route}',
              isDark,
            ),
            const SizedBox(height: 6),
            _buildDetailRow(
              Icons.schedule,
              'Frequency',
              med.frequencyDisplay,
              isDark,
            ),
            const SizedBox(height: 6),
            _buildDetailRow(
              Icons.calendar_today,
              'Duration',
              '${med.durationDays} days',
              isDark,
            ),
            if (med.instructions != null) ...[
              const SizedBox(height: 6),
              _buildDetailRow(
                Icons.info_outline,
                'Instructions',
                med.instructions!,
                isDark,
              ),
            ],
          ],
        ),
      );
    }

    // Lab details
    if (order.labDetails != null) {
      final lab = order.labDetails!;
      return Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color:
              (isDark
                      ? AppColors.darkSurfaceVariant
                      : AppColors.lightSurfaceVariant)
                  .withOpacity(0.3),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Tests:', style: AppTypography.labelMedium()),
            const SizedBox(height: 6),
            Wrap(
              spacing: 6,
              runSpacing: 6,
              children: lab.tests.map((test) {
                return Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.info.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(test, style: AppTypography.labelSmall()),
                );
              }).toList(),
            ),
            if (lab.fasting == true) ...[
              const SizedBox(height: 8),
              Row(
                children: [
                  const Icon(
                    Icons.no_meals,
                    size: 16,
                    color: AppColors.warning,
                  ),
                  const SizedBox(width: 6),
                  Text(
                    'Fasting required',
                    style: AppTypography.labelSmall(color: AppColors.warning),
                  ),
                ],
              ),
            ],
          ],
        ),
      );
    }

    // Procedure details
    if (order.procedureDetails != null) {
      final proc = order.procedureDetails!;
      return Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color:
              (isDark
                      ? AppColors.darkSurfaceVariant
                      : AppColors.lightSurfaceVariant)
                  .withOpacity(0.3),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (proc.indication != null)
              _buildDetailRow(
                Icons.info_outline,
                'Indication',
                proc.indication!,
                isDark,
              ),
            if (proc.location != null) ...[
              const SizedBox(height: 6),
              _buildDetailRow(
                Icons.location_on,
                'Location',
                proc.location!,
                isDark,
              ),
            ],
          ],
        ),
      );
    }

    return const SizedBox.shrink();
  }

  Widget _buildDetailRow(
    IconData icon,
    String label,
    String value,
    bool isDark,
  ) {
    return Row(
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
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '$label: ',
                  style: AppTypography.labelSmall(
                    color: isDark
                        ? AppColors.darkOnSurfaceVariant
                        : AppColors.lightOnSurfaceVariant,
                  ),
                ),
                TextSpan(text: value, style: AppTypography.bodySmall()),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Color _getStatusColor() {
    switch (order.status) {
      case OrderStatus.draft:
        return AppColors.info;
      case OrderStatus.pending:
        return AppColors.warning;
      case OrderStatus.approved:
        return AppColors.primary;
      case OrderStatus.inProgress:
        return AppColors.info;
      case OrderStatus.completed:
        return AppColors.success;
      case OrderStatus.cancelled:
        return AppColors.critical;
    }
  }

  Color _getTypeColor() {
    switch (order.orderType) {
      case OrderType.medication:
        return AppColors.warning;
      case OrderType.lab:
        return AppColors.info;
      case OrderType.imaging:
        return AppColors.primary;
      case OrderType.procedure:
        return AppColors.critical;
      case OrderType.referral:
        return AppColors.stable;
      case OrderType.other:
        return AppColors.accentCyan;
    }
  }

  IconData _getTypeIcon() {
    switch (order.orderType) {
      case OrderType.medication:
        return Icons.medication;
      case OrderType.lab:
        return Icons.science;
      case OrderType.imaging:
        return Icons.medical_services;
      case OrderType.procedure:
        return Icons.healing;
      case OrderType.referral:
        return Icons.person_add;
      case OrderType.other:
        return Icons.assignment;
    }
  }

  String _getTypeLabel() {
    switch (order.orderType) {
      case OrderType.medication:
        return 'Medication';
      case OrderType.lab:
        return 'Laboratory';
      case OrderType.imaging:
        return 'Imaging';
      case OrderType.procedure:
        return 'Procedure';
      case OrderType.referral:
        return 'Referral';
      case OrderType.other:
        return 'Other';
    }
  }

  String _getStatusLabel() {
    switch (order.status) {
      case OrderStatus.draft:
        return 'Draft';
      case OrderStatus.pending:
        return 'Pending';
      case OrderStatus.approved:
        return 'Approved';
      case OrderStatus.inProgress:
        return 'In Progress';
      case OrderStatus.completed:
        return 'Completed';
      case OrderStatus.cancelled:
        return 'Cancelled';
    }
  }
}
