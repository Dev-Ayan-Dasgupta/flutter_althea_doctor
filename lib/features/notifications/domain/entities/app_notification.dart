import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_notification.freezed.dart';

@freezed
abstract class AppNotification with _$AppNotification {
  const factory AppNotification({
    required String id,
    required NotificationType type,
    required String title,
    required String body,
    required DateTime timestamp,
    bool? isRead,
    String? actionUrl,
    Map<String, dynamic>? data,
  }) = _AppNotification;

  const AppNotification._();

  String get typeLabel {
    switch (type) {
      case NotificationType.alert:
        return 'Alert';
      case NotificationType.reminder:
        return 'Reminder';
      case NotificationType.message:
        return 'Message';
      case NotificationType.consultation:
        return 'Consultation';
      case NotificationType.system:
        return 'System';
    }
  }
}

enum NotificationType { alert, reminder, message, consultation, system }
