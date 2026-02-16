import 'package:freezed_annotation/freezed_annotation.dart';

part 'clinical_note.freezed.dart';

/// Clinical note generated from consultation
@freezed
abstract class ClinicalNote with _$ClinicalNote {
  const factory ClinicalNote({
    required String id,
    required String consultationId,
    required String patientId,
    required String patientName,
    required String doctorId,
    required String doctorName,
    required DateTime createdAt,
    DateTime? updatedAt,
    required NoteStatus status,
    required NoteFormat format,
    // SOAP components
    String? subjective,
    String? objective,
    String? assessment,
    String? plan,
    // Extracted information
    List<String>? symptoms,
    List<String>? diagnoses,
    List<String>? medications,
    List<String>? procedures,
    List<String>? followUpInstructions,
    // Clinical codes
    List<ClinicalCode>? icdCodes,
    List<ClinicalCode>? cptCodes,
    // Metadata
    String? transcriptId,
    int? wordCount,
    int? confidence, // AI confidence score (0-100)
    bool? reviewed,
    String? reviewedBy,
    DateTime? reviewedAt,
  }) = _ClinicalNote;

  const ClinicalNote._();

  /// Check if note is editable
  bool get isEditable {
    return status == NoteStatus.draft || status == NoteStatus.pending;
  }

  /// Get formatted SOAP note
  String get formattedSOAP {
    final buffer = StringBuffer();

    if (subjective != null && subjective!.isNotEmpty) {
      buffer.writeln('SUBJECTIVE:');
      buffer.writeln(subjective);
      buffer.writeln();
    }

    if (objective != null && objective!.isNotEmpty) {
      buffer.writeln('OBJECTIVE:');
      buffer.writeln(objective);
      buffer.writeln();
    }

    if (assessment != null && assessment!.isNotEmpty) {
      buffer.writeln('ASSESSMENT:');
      buffer.writeln(assessment);
      buffer.writeln();
    }

    if (plan != null && plan!.isNotEmpty) {
      buffer.writeln('PLAN:');
      buffer.writeln(plan);
    }

    return buffer.toString();
  }
}

/// Note status
enum NoteStatus {
  draft, // Being edited
  pending, // Awaiting review
  reviewed, // Reviewed by doctor
  signed, // Signed and finalized
  archived, // Archived
}

/// Note format
enum NoteFormat {
  soap, // SOAP format
  narrative, // Narrative format
  structured, // Structured format
}

/// Clinical code (ICD-11, CPT, etc.)
@freezed
abstract class ClinicalCode with _$ClinicalCode {
  const factory ClinicalCode({
    required String code,
    required String description,
    required CodeType type,
    int? confidence, // AI confidence (0-100)
  }) = _ClinicalCode;
}

/// Code types
enum CodeType {
  icd11, // ICD-11 diagnosis codes
  cpt, // CPT procedure codes
  loinc, // LOINC lab codes
  snomed, // SNOMED clinical terms
}

/// Transcript segment
@freezed
abstract class TranscriptSegment with _$TranscriptSegment {
  const factory TranscriptSegment({
    required String id,
    required String speaker, // 'doctor' or 'patient'
    required String text,
    required double startTime, // seconds
    required double endTime, // seconds
    int? confidence, // 0-100
    List<String>? keywords,
  }) = _TranscriptSegment;
}

/// Complete transcript
@freezed
abstract class Transcript with _$Transcript {
  const factory Transcript({
    required String id,
    required String consultationId,
    required DateTime createdAt,
    required List<TranscriptSegment> segments,
    required int totalDuration, // seconds
    String? language,
    int? overallConfidence,
  }) = _Transcript;

  const Transcript._();

  /// Get full text
  String get fullText {
    return segments.map((s) => '${s.speaker}: ${s.text}').join('\n\n');
  }

  /// Get patient statements only
  String get patientStatements {
    return segments
        .where((s) => s.speaker.toLowerCase() == 'patient')
        .map((s) => s.text)
        .join('\n\n');
  }

  /// Get doctor statements only
  String get doctorStatements {
    return segments
        .where((s) => s.speaker.toLowerCase() == 'doctor')
        .map((s) => s.text)
        .join('\n\n');
  }
}

/// Note template
@freezed
abstract class NoteTemplate with _$NoteTemplate {
  const factory NoteTemplate({
    required String id,
    required String name,
    required String description,
    required NoteFormat format,
    String? subjectiveTemplate,
    String? objectiveTemplate,
    String? assessmentTemplate,
    String? planTemplate,
    List<String>? defaultSections,
    bool? isDefault,
  }) = _NoteTemplate;
}
