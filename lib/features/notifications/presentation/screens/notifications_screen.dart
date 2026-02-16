import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/theme/color_palette.dart';
import '../../../../core/theme/typography.dart';
import '../../../../core/utils/responsive.dart';
import '../../domain/entities/app_notification.dart';
import '../state/notification_notifier.dart';
import '../widgets/notification_card.dart';

class NotificationsScreen extends ConsumerWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(notificationsProvider);
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        actions: [
          if (state.unreadCount > 0)
            TextButton(
              onPressed: () {
                ref.read(notificationsProvider.notifier).markAllAsRead();
              },
              child: const Text('Mark all read'),
            ),
          PopupMenuButton<String>(
            onSelected: (value) {
              if (value == 'filter') {
                _showFilterDialog(context, ref, state);
              }
            },
            itemBuilder: (context) => [
              const PopupMenuItem(value: 'filter', child: Text('Filter')),
            ],
          ),
        ],
      ),
      body: state.isLoading
          ? const Center(child: CircularProgressIndicator())
          : Column(
              children: [
                _buildHeader(context, state, isDark),
                if (state.filterType != null)
                  _buildFilterChip(context, ref, state),
                Expanded(
                  child: _buildNotificationsList(context, ref, state, isDark),
                ),
              ],
            ),
    );
  }

  Widget _buildHeader(
    BuildContext context,
    NotificationState state,
    bool isDark,
  ) {
    final isMobile = Responsive.isMobile(context);

    return Container(
      padding: EdgeInsets.all(isMobile ? 16 : 20),
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${state.filteredNotifications.length} Notifications',
                  style: AppTypography.titleMedium(),
                ),
                if (state.unreadCount > 0)
                  Text(
                    '${state.unreadCount} unread',
                    style: AppTypography.bodySmall(
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
    );
  }

  Widget _buildFilterChip(
    BuildContext context,
    WidgetRef ref,
    NotificationState state,
  ) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Chip(
        label: Text('Filter: ${state.filterType!.name}'),
        onDeleted: () {
          ref.read(notificationsProvider.notifier).clearFilter();
        },
        deleteIcon: const Icon(Icons.close, size: 18),
      ),
    );
  }

  Widget _buildNotificationsList(
    BuildContext context,
    WidgetRef ref,
    NotificationState state,
    bool isDark,
  ) {
    if (state.filteredNotifications.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.notifications_none,
              size: 64,
              color: isDark
                  ? AppColors.darkOnSurfaceVariant
                  : AppColors.lightOnSurfaceVariant,
            ),
            const SizedBox(height: 16),
            Text(
              state.filterType != null
                  ? 'No ${state.filterType!.name} notifications'
                  : 'No notifications',
              style: AppTypography.titleMedium(),
            ),
          ],
        ),
      );
    }

    return RefreshIndicator(
      onRefresh: () async {
        await ref.read(notificationsProvider.notifier).refresh();
      },
      child: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: state.filteredNotifications.length,
        itemBuilder: (context, index) {
          final notification = state.filteredNotifications[index];
          return NotificationCard(
            notification: notification,
            onTap: () {
              ref
                  .read(notificationsProvider.notifier)
                  .markAsRead(notification.id);
            },
          );
        },
      ),
    );
  }

  void _showFilterDialog(
    BuildContext context,
    WidgetRef ref,
    NotificationState state,
  ) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Filter Notifications', style: AppTypography.titleLarge()),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children:
              NotificationType.values.map((type) {
                return RadioListTile<NotificationType?>(
                  title: Text(type.name),
                  value: type,
                  groupValue: state.filterType,
                  onChanged: (value) {
                    ref
                        .read(notificationsProvider.notifier)
                        .filterByType(value);
                    Navigator.pop(context);
                  },
                );
              }).toList()..add(
                RadioListTile<NotificationType?>(
                  title: const Text('All'),
                  value: null,
                  groupValue: state.filterType,
                  onChanged: (value) {
                    ref.read(notificationsProvider.notifier).clearFilter();
                    Navigator.pop(context);
                  },
                ),
              ),
        ),
      ),
    );
  }
}
