import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/entities/clinical_note.dart';
import '../../data/services/mock_scribe_service.dart';

part 'scribe_notifier.g.dart';

/// Ambient scribe state
class AmbientScribeState {
  final List<ClinicalNote> notes;
  final ClinicalNote? currentNote;
  final Transcript? currentTranscript;
  final List<NoteTemplate> templates;
  final bool isLoading;
  final bool isRecording;
  final bool isTranscribing;
  final String? error;
  final NoteStatus? filterStatus;

  AmbientScribeState({
    this.notes = const [],
    this.currentNote,
    this.currentTranscript,
    this.templates = const [],
    this.isLoading = false,
    this.isRecording = false,
    this.isTranscribing = false,
    this.error,
    this.filterStatus,
  });

  AmbientScribeState copyWith({
    List<ClinicalNote>? notes,
    ClinicalNote? currentNote,
    Transcript? currentTranscript,
    List<NoteTemplate>? templates,
    bool? isLoading,
    bool? isRecording,
    bool? isTranscribing,
    String? error,
    NoteStatus? filterStatus,
    bool clearError = false,
    bool clearCurrent = false,
    bool clearFilter = false,
  }) {
    return AmbientScribeState(
      notes: notes ?? this.notes,
      currentNote: clearCurrent ? null : (currentNote ?? this.currentNote),
      currentTranscript: clearCurrent
          ? null
          : (currentTranscript ?? this.currentTranscript),
      templates: templates ?? this.templates,
      isLoading: isLoading ?? this.isLoading,
      isRecording: isRecording ?? this.isRecording,
      isTranscribing: isTranscribing ?? this.isTranscribing,
      error: clearError ? null : (error ?? this.error),
      filterStatus: clearFilter ? null : (filterStatus ?? this.filterStatus),
    );
  }

  /// Get filtered notes
  List<ClinicalNote> get filteredNotes {
    if (filterStatus == null) return notes;
    return notes.where((n) => n.status == filterStatus).toList();
  }

  /// Get status counts
  Map<NoteStatus, int> get statusCounts {
    final counts = <NoteStatus, int>{};
    for (final status in NoteStatus.values) {
      counts[status] = notes.where((n) => n.status == status).length;
    }
    return counts;
  }
}

/// Ambient scribe notifier
@riverpod
class AmbientScribe extends _$AmbientScribe {
  @override
  AmbientScribeState build() {
    _loadNotes();
    return AmbientScribeState(isLoading: true);
  }

  /// Load notes
  Future<void> _loadNotes() async {
    state = state.copyWith(isLoading: true, clearError: true);

    try {
      await Future.delayed(const Duration(milliseconds: 500));

      final notes = MockScribeService.generateNotesList(10);
      final templates = MockScribeService.getNoteTemplates();

      state = state.copyWith(
        notes: notes,
        templates: templates,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: 'Failed to load notes: $e',
      );
    }
  }

  /// Start recording
  Future<void> startRecording(String consultationId) async {
    state = state.copyWith(isRecording: true);

    // TODO: Implement actual audio recording
    await Future.delayed(const Duration(seconds: 1));
  }

  /// Stop recording and transcribe
  Future<void> stopRecordingAndTranscribe(String consultationId) async {
    state = state.copyWith(isRecording: false, isTranscribing: true);

    try {
      // Simulate transcription delay
      await Future.delayed(const Duration(seconds: 2));

      // Generate mock transcript
      final transcript = MockScribeService.generateMockTranscript(
        consultationId,
      );

      state = state.copyWith(
        currentTranscript: transcript,
        isTranscribing: false,
      );
    } catch (e) {
      state = state.copyWith(
        isTranscribing: false,
        error: 'Transcription failed: $e',
      );
    }
  }

  /// Generate clinical note from transcript
  Future<void> generateNoteFromTranscript({
    required String consultationId,
    required String patientId,
    required String patientName,
  }) async {
    if (state.currentTranscript == null) return;

    state = state.copyWith(isLoading: true);

    try {
      await Future.delayed(const Duration(seconds: 2));

      final note = MockScribeService.generateClinicalNote(
        consultationId: consultationId,
        patientId: patientId,
        patientName: patientName,
        transcript: state.currentTranscript!,
      );

      final updatedNotes = [note, ...state.notes];

      state = state.copyWith(
        notes: updatedNotes,
        currentNote: note,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: 'Failed to generate note: $e',
      );
    }
  }

  /// Update note
  Future<void> updateNote(ClinicalNote updatedNote) async {
    try {
      final note = await MockScribeService.updateNote(updatedNote);

      final updatedNotes = state.notes.map((n) {
        return n.id == note.id ? note : n;
      }).toList();

      state = state.copyWith(
        notes: updatedNotes,
        currentNote: state.currentNote?.id == note.id
            ? note
            : state.currentNote,
      );
    } catch (e) {
      state = state.copyWith(error: 'Failed to update note: $e');
    }
  }

  /// Sign note
  Future<bool> signNote(String noteId) async {
    try {
      final signedNote = await MockScribeService.signNote(noteId);

      final updatedNotes = state.notes.map((n) {
        return n.id == noteId ? signedNote : n;
      }).toList();

      state = state.copyWith(notes: updatedNotes);
      return true;
    } catch (e) {
      state = state.copyWith(error: 'Failed to sign note: $e');
      return false;
    }
  }

  /// Filter by status
  void filterByStatus(NoteStatus? status) {
    state = state.copyWith(filterStatus: status);
  }

  /// Clear filter
  void clearFilter() {
    state = state.copyWith(clearFilter: true);
  }

  /// Select note
  void selectNote(ClinicalNote note) {
    state = state.copyWith(currentNote: note);
  }

  /// Clear current note
  void clearCurrentNote() {
    state = state.copyWith(clearCurrent: true);
  }

  /// Refresh
  Future<void> refresh() async {
    await _loadNotes();
  }
}
