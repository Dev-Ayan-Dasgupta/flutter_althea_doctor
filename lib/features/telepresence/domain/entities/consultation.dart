import 'package:freezed_annotation/freezed_annotation.dart';

part 'consultation.freezed.dart';

/// Video consultation session
@freezed
abstract class Consultation with _$Consultation {
  const factory Consultation({
    required String id,
    required String patientId,
    required String patientName,
    String? patientAvatarUrl,
    required String doctorId,
    required String doctorName,
    String? doctorAvatarUrl,
    required ConsultationType type,
    required ConsultationStatus status,
    required DateTime scheduledAt,
    DateTime? startedAt,
    DateTime? endedAt,
    String? roomId,
    String? roomToken,
    String? reason,
    String? notes,
    List<String>? participants, // Additional participants (family, nurses)
    bool? recordingEnabled,
    bool? consentGiven,
    List<String>? attachments,
    ConsultationMetrics? metrics,
  }) = _Consultation;

  const Consultation._();

  /// Get duration if call ended
  Duration? get duration {
    if (startedAt == null || endedAt == null) return null;
    return endedAt!.difference(startedAt!);
  }

  /// Check if consultation is active
  bool get isActive {
    return status == ConsultationStatus.inProgress;
  }

  /// Check if consultation can be joined
  bool get canJoin {
    return status == ConsultationStatus.scheduled &&
        DateTime.now().isAfter(
          scheduledAt.subtract(const Duration(minutes: 5)),
        );
  }

  /// Check if consultation can be cancelled
  bool get canCancel {
    return status == ConsultationStatus.scheduled;
  }
}

/// Consultation types
enum ConsultationType {
  routine, // Regular follow-up
  urgent, // Urgent consultation
  followUp, // Post-procedure follow-up
  emergency, // Emergency consultation
  specialist, // Specialist consultation
}

/// Consultation status
enum ConsultationStatus {
  scheduled, // Scheduled, not started
  waitingRoom, // Patient in waiting room
  inProgress, // Call in progress
  completed, // Call completed
  cancelled, // Cancelled
  noShow, // Patient didn't show up
}

/// Consultation metrics
@freezed
abstract class ConsultationMetrics with _$ConsultationMetrics {
  const factory ConsultationMetrics({
    required Duration callDuration,
    int? participantCount,
    bool? screenShared,
    bool? vitalsShared,
    String? connectionQuality, // excellent, good, fair, poor
    int? reconnectCount,
  }) = _ConsultationMetrics;
}

/// Call participant
@freezed
abstract class CallParticipant with _$CallParticipant {
  const factory CallParticipant({
    required String id,
    required String name,
    required ParticipantRole role,
    String? avatarUrl,
    required bool audioEnabled,
    required bool videoEnabled,
    required bool isHost,
    DateTime? joinedAt,
    String? connectionQuality,
  }) = _CallParticipant;
}

/// Participant roles
enum ParticipantRole { doctor, patient, family, nurse, specialist }

/// In-call message
@freezed
abstract class CallMessage with _$CallMessage {
  const factory CallMessage({
    required String id,
    required String senderId,
    required String senderName,
    required String content,
    required MessageType type,
    required DateTime timestamp,
    String? metadata,
  }) = _CallMessage;
}

/// Message types
enum MessageType { text, systemNotification, vitalAlert, fileShare }
