import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/entities/consultation.dart';
import '../../data/services/mock_consultation_service.dart';

part 'telepresence_notifier.g.dart';

/// Telepresence state
class TelepresenceState {
  final List<Consultation> consultations;
  final Consultation? activeConsultation;
  final List<CallParticipant> participants;
  final bool isLoading;
  final String? error;
  final ConsultationStatus? filterStatus;

  TelepresenceState({
    this.consultations = const [],
    this.activeConsultation,
    this.participants = const [],
    this.isLoading = false,
    this.error,
    this.filterStatus,
  });

  TelepresenceState copyWith({
    List<Consultation>? consultations,
    Consultation? activeConsultation,
    List<CallParticipant>? participants,
    bool? isLoading,
    String? error,
    ConsultationStatus? filterStatus,
    bool clearError = false,
    bool clearActive = false,
    bool clearFilter = false,
  }) {
    return TelepresenceState(
      consultations: consultations ?? this.consultations,
      activeConsultation: clearActive
          ? null
          : (activeConsultation ?? this.activeConsultation),
      participants: participants ?? this.participants,
      isLoading: isLoading ?? this.isLoading,
      error: clearError ? null : (error ?? this.error),
      filterStatus: clearFilter ? null : (filterStatus ?? this.filterStatus),
    );
  }

  /// Get filtered consultations
  List<Consultation> get filteredConsultations {
    if (filterStatus == null) return consultations;
    return consultations.where((c) => c.status == filterStatus).toList();
  }

  /// Get upcoming consultations
  List<Consultation> get upcomingConsultations {
    return consultations
        .where(
          (c) =>
              c.status == ConsultationStatus.scheduled &&
              c.scheduledAt.isAfter(DateTime.now()),
        )
        .toList()
      ..sort((a, b) => a.scheduledAt.compareTo(b.scheduledAt));
  }

  /// Get consultations count by status
  Map<ConsultationStatus, int> get statusCounts {
    final counts = <ConsultationStatus, int>{};
    for (final status in ConsultationStatus.values) {
      counts[status] = consultations.where((c) => c.status == status).length;
    }
    return counts;
  }
}

/// Telepresence notifier
@riverpod
class Telepresence extends _$Telepresence {
  @override
  TelepresenceState build(String doctorId) {
    _loadConsultations(doctorId);
    return TelepresenceState(isLoading: true);
  }

  /// Load consultations
  Future<void> _loadConsultations(String doctorId) async {
    state = state.copyWith(isLoading: true, clearError: true);

    try {
      await Future.delayed(const Duration(milliseconds: 500));

      final consultations = MockConsultationService.generateConsultations(
        doctorId: doctorId,
        count: 10,
      );

      state = state.copyWith(consultations: consultations, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: 'Failed to load consultations: $e',
      );
    }
  }

  /// Schedule consultation
  Future<bool> scheduleConsultation({
    required String patientId,
    required String patientName,
    required DateTime scheduledAt,
    required ConsultationType type,
    String? reason,
    bool recordingEnabled = false,
  }) async {
    try {
      final consultation = await MockConsultationService.scheduleConsultation(
        patientId: patientId,
        patientName: patientName,
        doctorId: doctorId,
        doctorName: 'Dr. Rajesh Kumar', // TODO: Get from auth
        scheduledAt: scheduledAt,
        type: type,
        reason: reason,
        recordingEnabled: recordingEnabled,
      );

      final updated = [consultation, ...state.consultations];
      state = state.copyWith(consultations: updated);

      return true;
    } catch (e) {
      state = state.copyWith(error: 'Failed to schedule: $e');
      return false;
    }
  }

  /// Start consultation
  Future<bool> startConsultation(String consultationId) async {
    try {
      final consultation = await MockConsultationService.startConsultation(
        consultationId,
      );

      // Load participants
      final participants = MockConsultationService.generateParticipants();

      final updated = state.consultations.map((c) {
        return c.id == consultationId ? consultation : c;
      }).toList();

      state = state.copyWith(
        consultations: updated,
        activeConsultation: consultation,
        participants: participants,
      );

      return true;
    } catch (e) {
      state = state.copyWith(error: 'Failed to start: $e');
      return false;
    }
  }

  /// End consultation
  Future<bool> endConsultation(String consultationId, String? notes) async {
    try {
      final consultation = await MockConsultationService.endConsultation(
        consultationId,
        notes,
      );

      final updated = state.consultations.map((c) {
        return c.id == consultationId ? consultation : c;
      }).toList();

      state = state.copyWith(
        consultations: updated,
        clearActive: true,
        participants: [],
      );

      return true;
    } catch (e) {
      state = state.copyWith(error: 'Failed to end: $e');
      return false;
    }
  }

  /// Cancel consultation
  Future<bool> cancelConsultation(String consultationId, String reason) async {
    try {
      await MockConsultationService.cancelConsultation(consultationId, reason);

      final updated = state.consultations.map((c) {
        if (c.id == consultationId) {
          return c.copyWith(status: ConsultationStatus.cancelled);
        }
        return c;
      }).toList();

      state = state.copyWith(consultations: updated);

      return true;
    } catch (e) {
      state = state.copyWith(error: 'Failed to cancel: $e');
      return false;
    }
  }

  /// Filter by status
  void filterByStatus(ConsultationStatus? status) {
    state = state.copyWith(filterStatus: status);
  }

  /// Clear filter
  void clearFilter() {
    state = state.copyWith(clearFilter: true);
  }

  /// Refresh
  Future<void> refresh() async {
    await _loadConsultations(doctorId);
  }
}
