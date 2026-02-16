import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/entities/app_notification.dart';
import '../../data/services/mock_notification_service.dart';

part 'notification_notifier.g.dart';

class NotificationState {
  final List<AppNotification> notifications;
  final bool isLoading;
  final String? error;
  final NotificationType? filterType;

  NotificationState({
    this.notifications = const [],
    this.isLoading = false,
    this.error,
    this.filterType,
  });

  NotificationState copyWith({
    List<AppNotification>? notifications,
    bool? isLoading,
    String? error,
    NotificationType? filterType,
    bool clearError = false,
    bool clearFilter = false,
  }) {
    return NotificationState(
      notifications: notifications ?? this.notifications,
      isLoading: isLoading ?? this.isLoading,
      error: clearError ? null : (error ?? this.error),
      filterType: clearFilter ? null : (filterType ?? this.filterType),
    );
  }

  List<AppNotification> get filteredNotifications {
    if (filterType == null) return notifications;
    return notifications.where((n) => n.type == filterType).toList();
  }

  int get unreadCount => notifications.where((n) => n.isRead != true).length;

  Map<NotificationType, int> get typeCounts {
    final counts = <NotificationType, int>{};
    for (final type in NotificationType.values) {
      counts[type] = notifications.where((n) => n.type == type).length;
    }
    return counts;
  }
}

@riverpod
class Notifications extends _$Notifications {
  @override
  NotificationState build() {
    _loadNotifications();
    return NotificationState(isLoading: true);
  }

  Future<void> _loadNotifications() async {
    state = state.copyWith(isLoading: true, clearError: true);

    try {
      await Future.delayed(const Duration(milliseconds: 500));

      final notifications = MockNotificationService.generateNotifications(25);

      state = state.copyWith(notifications: notifications, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: 'Failed to load notifications: $e',
      );
    }
  }

  void markAsRead(String notificationId) {
    final updated = state.notifications.map((n) {
      if (n.id == notificationId) {
        return n.copyWith(isRead: true);
      }
      return n;
    }).toList();

    state = state.copyWith(notifications: updated);
  }

  void markAllAsRead() {
    final updated = state.notifications.map((n) {
      return n.copyWith(isRead: true);
    }).toList();

    state = state.copyWith(notifications: updated);
  }

  void filterByType(NotificationType? type) {
    state = state.copyWith(filterType: type);
  }

  void clearFilter() {
    state = state.copyWith(clearFilter: true);
  }

  Future<void> refresh() async => _loadNotifications();
}
