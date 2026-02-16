import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/theme/color_palette.dart';
import '../../../../core/theme/typography.dart';
import '../../../../core/utils/responsive.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../domain/entities/clinical_order.dart';
import '../state/order_notifier.dart';
import '../widgets/order_card.dart';
import 'create_medication_screen.dart';

class OrderExecutionScreen extends ConsumerWidget {
  final String patientId;
  final String patientName;

  const OrderExecutionScreen({
    super.key,
    required this.patientId,
    required this.patientName,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(orderExecutionProvider(patientId));
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Orders & Prescriptions'),
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_list),
            onPressed: () => _showFilterDialog(context, ref, state),
          ),
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              ref.read(orderExecutionProvider(patientId).notifier).refresh();
            },
          ),
        ],
      ),
      body: _buildBody(context, ref, state, isDark),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _showCreateOrderDialog(context),
        icon: const Icon(Icons.add),
        label: const Text('New Order'),
      ),
    );
  }

  Widget _buildBody(
    BuildContext context,
    WidgetRef ref,
    OrderExecutionState state,
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
                ref.read(orderExecutionProvider(patientId).notifier).refresh();
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

        // Orders list
        Expanded(child: _buildOrdersList(context, ref, state, isDark)),
      ],
    );
  }

  Widget _buildSummaryHeader(
    BuildContext context,
    WidgetRef ref,
    OrderExecutionState state,
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
                Icons.assignment,
                size: isMobile ? 24 : 32,
                color: AppColors.primary,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Active Orders',
                      style: isMobile
                          ? AppTypography.titleLarge()
                          : AppTypography.headlineSmall(),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '${state.filteredOrders.length} orders',
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
                'Pending',
                statusCounts[OrderStatus.pending] ?? 0,
                AppColors.warning,
                OrderStatus.pending,
                state.filterStatus,
              ),
              _buildStatusChip(
                context,
                ref,
                'Approved',
                statusCounts[OrderStatus.approved] ?? 0,
                AppColors.primary,
                OrderStatus.approved,
                state.filterStatus,
              ),
              _buildStatusChip(
                context,
                ref,
                'Completed',
                statusCounts[OrderStatus.completed] ?? 0,
                AppColors.success,
                OrderStatus.completed,
                state.filterStatus,
              ),
            ],
          ),

          if (state.filterStatus != null || state.filterType != null) ...[
            const SizedBox(height: 12),
            CustomButton(
              label: 'Clear Filters',
              onPressed: () {
                ref
                    .read(orderExecutionProvider(patientId).notifier)
                    .clearFilters();
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
    OrderStatus status,
    OrderStatus? currentFilter,
  ) {
    final isSelected = currentFilter == status;

    return InkWell(
      onTap: () {
        ref
            .read(orderExecutionProvider(patientId).notifier)
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

  Widget _buildOrdersList(
    BuildContext context,
    WidgetRef ref,
    OrderExecutionState state,
    bool isDark,
  ) {
    if (state.filteredOrders.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.assignment_outlined,
              size: 64,
              color: isDark
                  ? AppColors.darkOnSurfaceVariant
                  : AppColors.lightOnSurfaceVariant,
            ),
            const SizedBox(height: 16),
            Text(
              state.filterStatus != null || state.filterType != null
                  ? 'No matching orders'
                  : 'No orders yet',
              style: AppTypography.titleLarge(),
            ),
            const SizedBox(height: 8),
            Text(
              state.filterStatus != null || state.filterType != null
                  ? 'Try changing the filters'
                  : 'Create your first order',
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
        await ref.read(orderExecutionProvider(patientId).notifier).refresh();
      },
      child: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: state.filteredOrders.length,
        itemBuilder: (context, index) {
          final order = state.filteredOrders[index];
          return OrderCard(
            order: order,
            onStatusChange: (newStatus) {
              ref
                  .read(orderExecutionProvider(patientId).notifier)
                  .updateOrderStatus(order.id, newStatus);
            },
            onCancel: () => _showCancelDialog(context, ref, order),
          );
        },
      ),
    );
  }

  void _showFilterDialog(
    BuildContext context,
    WidgetRef ref,
    OrderExecutionState state,
  ) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Filter Orders', style: AppTypography.titleLarge()),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Order Type:', style: AppTypography.titleSmall()),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: OrderType.values.map((type) {
                return FilterChip(
                  label: Text(_getOrderTypeLabel(type)),
                  selected: state.filterType == type,
                  onSelected: (selected) {
                    ref
                        .read(orderExecutionProvider(patientId).notifier)
                        .filterByType(selected ? type : null);
                    Navigator.pop(context);
                  },
                );
              }).toList(),
            ),
          ],
        ),
        actions: [
          CustomButton(
            label: 'Close',
            onPressed: () => Navigator.pop(context),
            variant: ButtonVariant.text,
          ),
        ],
      ),
    );
  }

  void _showCreateOrderDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Create New Order', style: AppTypography.titleLarge()),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.medication, color: AppColors.warning),
              title: const Text('Medication'),
              subtitle: const Text('Prescribe medication'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CreateMedicationScreen(
                      patientId: patientId,
                      patientName: patientName,
                    ),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.science, color: AppColors.info),
              title: const Text('Lab Test'),
              subtitle: const Text('Order laboratory tests'),
              onTap: () {
                Navigator.pop(context);
                // TODO: Implement lab order screen
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Lab order coming soon')),
                );
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.medical_services,
                color: AppColors.primary,
              ),
              title: const Text('Imaging'),
              subtitle: const Text('Order imaging studies'),
              onTap: () {
                Navigator.pop(context);
                // TODO: Implement imaging order screen
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Imaging order coming soon')),
                );
              },
            ),
          ],
        ),
        actions: [
          CustomButton(
            label: 'Cancel',
            onPressed: () => Navigator.pop(context),
            variant: ButtonVariant.text,
          ),
        ],
      ),
    );
  }

  void _showCancelDialog(
    BuildContext context,
    WidgetRef ref,
    ClinicalOrder order,
  ) {
    final reasonController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Cancel Order', style: AppTypography.titleLarge()),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Are you sure you want to cancel this order?',
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
            label: 'Keep Order',
            onPressed: () => Navigator.pop(context),
            variant: ButtonVariant.outlined,
          ),
          CustomButton(
            label: 'Cancel Order',
            onPressed: () async {
              final success = await ref
                  .read(orderExecutionProvider(patientId).notifier)
                  .cancelOrder(order.id, reasonController.text);

              if (context.mounted) {
                Navigator.pop(context);
                if (success) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Order cancelled'),
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

  String _getOrderTypeLabel(OrderType type) {
    switch (type) {
      case OrderType.medication:
        return 'Medication';
      case OrderType.lab:
        return 'Lab';
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
}
