import 'dart:math';
import '../../domain/entities/app_notification.dart';

class MockNotificationService {
  static final _random = Random(42);

  static List<AppNotification> generateNotifications(int count) {
    return List.generate(count, (i) => _generateNotification(i));
  }

  static AppNotification _generateNotification(int index) {
    final types = NotificationType.values;
    final type = types[_random.nextInt(types.length)];

    return AppNotification(
      id: 'notif-$index',
      type: type,
      title: _getTitleForType(type, index),
      body: _getBodyForType(type, index),
      timestamp: DateTime.now().subtract(Duration(hours: index)),
      isRead: _random.nextBool(),
      data: {'patientId': 'patient-$index'},
    );
  }

  static String _getTitleForType(NotificationType type, int index) {
    switch (type) {
      case NotificationType.alert:
        return 'Critical Alert: Patient ${String.fromCharCode(65 + index)}';
      case NotificationType.reminder:
        return 'Appointment Reminder';
      case NotificationType.message:
        return 'New Message from Dr. Sharma';
      case NotificationType.consultation:
        return 'Consultation Request';
      case NotificationType.system:
        return 'System Update Available';
    }
  }

  static String _getBodyForType(NotificationType type, int index) {
    switch (type) {
      case NotificationType.alert:
        return 'Patient vitals abnormal. Immediate attention required.';
      case NotificationType.reminder:
        return 'Appointment with Patient ${String.fromCharCode(65 + index)} in 30 minutes.';
      case NotificationType.message:
        return 'Need your input on patient case...';
      case NotificationType.consultation:
        return 'Video consultation scheduled for 3:00 PM.';
      case NotificationType.system:
        return 'New features and improvements available.';
    }
  }
}
