import 'dart:math';
import '../../domain/entities/consultation.dart';

/// Mock service for consultation management
class MockConsultationService {
  static final _random = Random(42);

  /// Generate mock consultations
  static List<Consultation> generateConsultations({
    required String doctorId,
    int count = 10,
  }) {
    final consultations = <Consultation>[];
    final now = DateTime.now();

    // Upcoming consultation (today)
    consultations.add(
      Consultation(
        id: 'consult-001',
        patientId: 'patient-001',
        patientName: 'Ramesh Sharma',
        doctorId: doctorId,
        doctorName: 'Dr. Rajesh Kumar',
        type: ConsultationType.routine,
        status: ConsultationStatus.scheduled,
        scheduledAt: now.add(const Duration(hours: 2)),
        reason: 'Routine follow-up for hypertension management',
        consentGiven: true,
        recordingEnabled: false,
      ),
    );

    // In progress consultation
    consultations.add(
      Consultation(
        id: 'consult-002',
        patientId: 'patient-002',
        patientName: 'Sunita Patel',
        doctorId: doctorId,
        doctorName: 'Dr. Rajesh Kumar',
        type: ConsultationType.urgent,
        status: ConsultationStatus.inProgress,
        scheduledAt: now.subtract(const Duration(minutes: 10)),
        startedAt: now.subtract(const Duration(minutes: 8)),
        roomId: 'room-active-001',
        roomToken: 'token-xyz-123',
        reason: 'Chest pain and shortness of breath',
        participants: ['family-001'],
        recordingEnabled: true,
        consentGiven: true,
      ),
    );

    // Recent completed consultation
    consultations.add(
      Consultation(
        id: 'consult-003',
        patientId: 'patient-003',
        patientName: 'Anjali Verma',
        doctorId: doctorId,
        doctorName: 'Dr. Rajesh Kumar',
        type: ConsultationType.followUp,
        status: ConsultationStatus.completed,
        scheduledAt: now.subtract(const Duration(hours: 4)),
        startedAt: now.subtract(const Duration(hours: 4)),
        endedAt: now.subtract(const Duration(hours: 3, minutes: 45)),
        reason: 'Post-discharge follow-up',
        notes: 'Patient recovering well. Continue current medications.',
        consentGiven: true,
        recordingEnabled: true,
        metrics: const ConsultationMetrics(
          callDuration: Duration(minutes: 15),
          participantCount: 2,
          screenShared: true,
          vitalsShared: true,
          connectionQuality: 'excellent',
          reconnectCount: 0,
        ),
      ),
    );

    // Add more past consultations
    for (int i = 4; i < count; i++) {
      final scheduledTime = now.subtract(Duration(days: i - 3));
      consultations.add(
        Consultation(
          id: 'consult-00$i',
          patientId: 'patient-00$i',
          patientName: 'Patient ${String.fromCharCode(65 + i)}',
          doctorId: doctorId,
          doctorName: 'Dr. Rajesh Kumar',
          type: _randomConsultationType(),
          status: ConsultationStatus.completed,
          scheduledAt: scheduledTime,
          startedAt: scheduledTime.add(const Duration(minutes: 2)),
          endedAt: scheduledTime.add(
            Duration(minutes: 15 + _random.nextInt(20)),
          ),
          reason: 'Medical consultation',
          consentGiven: true,
          recordingEnabled: _random.nextBool(),
          metrics: ConsultationMetrics(
            callDuration: Duration(minutes: 15 + _random.nextInt(20)),
            participantCount: 2,
            screenShared: _random.nextBool(),
            vitalsShared: _random.nextBool(),
            connectionQuality: _randomQuality(),
            reconnectCount: _random.nextInt(3),
          ),
        ),
      );
    }

    return consultations;
  }

  /// Schedule new consultation
  static Future<Consultation> scheduleConsultation({
    required String patientId,
    required String patientName,
    required String doctorId,
    required String doctorName,
    required DateTime scheduledAt,
    required ConsultationType type,
    String? reason,
    bool recordingEnabled = false,
  }) async {
    await Future.delayed(const Duration(milliseconds: 500));

    return Consultation(
      id: 'consult-${DateTime.now().millisecondsSinceEpoch}',
      patientId: patientId,
      patientName: patientName,
      doctorId: doctorId,
      doctorName: doctorName,
      type: type,
      status: ConsultationStatus.scheduled,
      scheduledAt: scheduledAt,
      reason: reason,
      recordingEnabled: recordingEnabled,
      consentGiven: false,
    );
  }

  /// Start consultation (generate room details)
  static Future<Consultation> startConsultation(String consultationId) async {
    await Future.delayed(const Duration(milliseconds: 800));

    // In real implementation, this would call video service API
    return Consultation(
      id: consultationId,
      patientId: 'mock-patient',
      patientName: 'Mock Patient',
      doctorId: 'mock-doctor',
      doctorName: 'Mock Doctor',
      type: ConsultationType.routine,
      status: ConsultationStatus.inProgress,
      scheduledAt: DateTime.now(),
      startedAt: DateTime.now(),
      roomId: 'room-${_random.nextInt(10000)}',
      roomToken: 'token-${_random.nextInt(100000)}',
      consentGiven: true,
    );
  }

  /// End consultation
  static Future<Consultation> endConsultation(
    String consultationId,
    String? notes,
  ) async {
    await Future.delayed(const Duration(milliseconds: 500));

    return Consultation(
      id: consultationId,
      patientId: 'mock-patient',
      patientName: 'Mock Patient',
      doctorId: 'mock-doctor',
      doctorName: 'Mock Doctor',
      type: ConsultationType.routine,
      status: ConsultationStatus.completed,
      scheduledAt: DateTime.now().subtract(const Duration(minutes: 30)),
      startedAt: DateTime.now().subtract(const Duration(minutes: 20)),
      endedAt: DateTime.now(),
      notes: notes,
      consentGiven: true,
    );
  }

  /// Cancel consultation
  static Future<bool> cancelConsultation(
    String consultationId,
    String reason,
  ) async {
    await Future.delayed(const Duration(milliseconds: 300));
    return true;
  }

  /// Generate mock call participants
  static List<CallParticipant> generateParticipants() {
    return [
      CallParticipant(
        id: 'doc-001',
        name: 'Dr. Rajesh Kumar',
        role: ParticipantRole.doctor,
        audioEnabled: true,
        videoEnabled: true,
        isHost: true,
        joinedAt: DateTime.now().subtract(const Duration(minutes: 5)),
        connectionQuality: 'excellent',
      ),
      CallParticipant(
        id: 'patient-001',
        name: 'Ramesh Sharma',
        role: ParticipantRole.patient,
        audioEnabled: true,
        videoEnabled: true,
        isHost: false,
        joinedAt: DateTime.now().subtract(const Duration(minutes: 4)),
        connectionQuality: 'good',
      ),
      CallParticipant(
        id: 'family-001',
        name: 'Priya Sharma (Daughter)',
        role: ParticipantRole.family,
        audioEnabled: true,
        videoEnabled: false,
        isHost: false,
        joinedAt: DateTime.now().subtract(const Duration(minutes: 3)),
        connectionQuality: 'fair',
      ),
    ];
  }

  // Helper methods
  static ConsultationType _randomConsultationType() {
    final types = [
      ConsultationType.routine,
      ConsultationType.followUp,
      ConsultationType.urgent,
    ];
    return types[_random.nextInt(types.length)];
  }

  static String _randomQuality() {
    final qualities = ['excellent', 'good', 'fair'];
    return qualities[_random.nextInt(qualities.length)];
  }
}
