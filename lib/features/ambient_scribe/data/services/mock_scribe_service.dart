import 'dart:math';
import '../../domain/entities/clinical_note.dart';

/// Mock service for ambient scribe
class MockScribeService {
  static final _random = Random(42);

  /// Generate mock transcript
  static Transcript generateMockTranscript(String consultationId) {
    final segments = [
      const TranscriptSegment(
        id: 'seg-001',
        speaker: 'doctor',
        text: 'Good morning. How are you feeling today?',
        startTime: 0.0,
        endTime: 2.5,
        confidence: 98,
      ),
      const TranscriptSegment(
        id: 'seg-002',
        speaker: 'patient',
        text:
            'I have been experiencing chest pain for the past two days. It gets worse when I walk or climb stairs.',
        startTime: 3.0,
        endTime: 9.5,
        confidence: 95,
        keywords: ['chest pain', 'two days', 'walking', 'stairs'],
      ),
      const TranscriptSegment(
        id: 'seg-003',
        speaker: 'doctor',
        text: 'Can you describe the pain? Is it sharp or dull?',
        startTime: 10.0,
        endTime: 13.0,
        confidence: 97,
      ),
      const TranscriptSegment(
        id: 'seg-004',
        speaker: 'patient',
        text:
            'It feels like pressure or tightness in my chest. Sometimes it radiates to my left arm.',
        startTime: 13.5,
        endTime: 19.0,
        confidence: 94,
        keywords: ['pressure', 'tightness', 'radiates', 'left arm'],
      ),
      const TranscriptSegment(
        id: 'seg-005',
        speaker: 'doctor',
        text: 'Do you have any shortness of breath or nausea?',
        startTime: 19.5,
        endTime: 22.0,
        confidence: 98,
      ),
      const TranscriptSegment(
        id: 'seg-006',
        speaker: 'patient',
        text:
            'Yes, I feel a little short of breath, especially when the pain comes.',
        startTime: 22.5,
        endTime: 26.5,
        confidence: 96,
        keywords: ['shortness of breath', 'pain'],
      ),
      const TranscriptSegment(
        id: 'seg-007',
        speaker: 'doctor',
        text:
            'Based on your symptoms, we need to run some tests. I will order an ECG and cardiac enzyme test. In the meantime, I am prescribing you nitroglycerin for chest pain relief and aspirin.',
        startTime: 27.0,
        endTime: 38.0,
        confidence: 97,
        keywords: ['ECG', 'cardiac enzyme', 'nitroglycerin', 'aspirin'],
      ),
    ];

    return Transcript(
      id: 'transcript-${DateTime.now().millisecondsSinceEpoch}',
      consultationId: consultationId,
      createdAt: DateTime.now(),
      segments: segments,
      totalDuration: 40,
      language: 'en-US',
      overallConfidence: 96,
    );
  }

  /// Generate clinical note from transcript
  static ClinicalNote generateClinicalNote({
    required String consultationId,
    required String patientId,
    required String patientName,
    required Transcript transcript,
  }) {
    return ClinicalNote(
      id: 'note-${DateTime.now().millisecondsSinceEpoch}',
      consultationId: consultationId,
      patientId: patientId,
      patientName: patientName,
      doctorId: 'doc-001',
      doctorName: 'Dr. Rajesh Kumar',
      createdAt: DateTime.now(),
      status: NoteStatus.draft,
      format: NoteFormat.soap,
      subjective: '''Chief Complaint: Chest pain for 2 days

History of Present Illness:
Patient reports experiencing chest pain for the past two days. The pain is described as pressure or tightness in the chest that worsens with physical activity such as walking or climbing stairs. Pain radiates to the left arm. Associated symptoms include mild shortness of breath, particularly during pain episodes.

Review of Systems:
- Cardiovascular: Positive for chest pain and dyspnea
- Respiratory: Shortness of breath with exertion
- Other systems: Non-contributory''',
      objective: '''Vital Signs:
- Blood Pressure: 145/92 mmHg
- Heart Rate: 88 bpm
- Respiratory Rate: 18 breaths/min
- SpO2: 96% on room air
- Temperature: 98.6°F

Physical Examination:
- General: Alert and oriented, appears uncomfortable
- Cardiovascular: Regular rate and rhythm, no murmurs
- Respiratory: Clear to auscultation bilaterally
- Extremities: No edema, peripheral pulses intact''',
      assessment: '''1. Chest pain, concerning for acute coronary syndrome
2. Hypertension, uncontrolled
3. Risk factors: Age, possible cardiac history

Differential Diagnosis:
- Unstable angina
- NSTEMI
- Musculoskeletal chest pain
- Gastroesophageal reflux disease''',
      plan: '''1. Diagnostic Tests:
   - Order ECG immediately
   - Cardiac enzyme panel (Troponin I, CK-MB)
   - Chest X-ray
   - Lipid profile

2. Medications:
   - Nitroglycerin 0.4mg sublingual PRN for chest pain
   - Aspirin 81mg daily
   - Continue current antihypertensive medications

3. Follow-up:
   - Schedule cardiology consultation
   - Return to ER if chest pain worsens or new symptoms develop
   - Follow up in 2-3 days for test results

4. Patient Education:
   - Explained warning signs of heart attack
   - Advised to avoid strenuous activity
   - Discussed lifestyle modifications (diet, exercise, stress management)''',
      symptoms: [
        'Chest pain',
        'Shortness of breath',
        'Pain radiating to left arm',
        'Exertional dyspnea',
      ],
      diagnoses: [
        'Chest pain, unspecified',
        'Possible acute coronary syndrome',
        'Uncontrolled hypertension',
      ],
      medications: ['Nitroglycerin 0.4mg sublingual PRN', 'Aspirin 81mg daily'],
      procedures: ['ECG', 'Cardiac enzyme panel', 'Chest X-ray'],
      followUpInstructions: [
        'Cardiology consultation',
        'Follow up in 2-3 days',
        'Return to ER if symptoms worsen',
      ],
      icdCodes: [
        const ClinicalCode(
          code: 'R07.9',
          description: 'Chest pain, unspecified',
          type: CodeType.icd11,
          confidence: 92,
        ),
        const ClinicalCode(
          code: 'I10',
          description: 'Essential (primary) hypertension',
          type: CodeType.icd11,
          confidence: 95,
        ),
        const ClinicalCode(
          code: 'R06.02',
          description: 'Shortness of breath',
          type: CodeType.icd11,
          confidence: 88,
        ),
      ],
      cptCodes: [
        const ClinicalCode(
          code: '99214',
          description: 'Office visit, established patient, moderate complexity',
          type: CodeType.cpt,
          confidence: 90,
        ),
        const ClinicalCode(
          code: '93000',
          description: 'Electrocardiogram, routine ECG',
          type: CodeType.cpt,
          confidence: 95,
        ),
      ],
      transcriptId: transcript.id,
      wordCount: 450,
      confidence: 94,
      reviewed: false,
    );
  }

  /// Get note templates
  static List<NoteTemplate> getNoteTemplates() {
    return [
      const NoteTemplate(
        id: 'template-001',
        name: 'Standard SOAP Note',
        description: 'Standard SOAP format for general consultations',
        format: NoteFormat.soap,
        subjectiveTemplate:
            'Chief Complaint:\n\nHistory of Present Illness:\n\nReview of Systems:\n',
        objectiveTemplate: 'Vital Signs:\n\nPhysical Examination:\n',
        assessmentTemplate: 'Primary Diagnosis:\n\nDifferential Diagnosis:\n',
        planTemplate: 'Treatment Plan:\n\nFollow-up:\n\nPatient Education:\n',
        isDefault: true,
      ),
      const NoteTemplate(
        id: 'template-002',
        name: 'Geriatric Assessment',
        description: 'Comprehensive geriatric assessment template',
        format: NoteFormat.structured,
        isDefault: false,
      ),
      const NoteTemplate(
        id: 'template-003',
        name: 'Follow-up Visit',
        description: 'Template for routine follow-up visits',
        format: NoteFormat.soap,
        isDefault: false,
      ),
    ];
  }

  /// Update clinical note
  static Future<ClinicalNote> updateNote(ClinicalNote note) async {
    await Future.delayed(const Duration(milliseconds: 300));

    return note.copyWith(updatedAt: DateTime.now());
  }

  /// Sign clinical note
  static Future<ClinicalNote> signNote(String noteId) async {
    await Future.delayed(const Duration(milliseconds: 500));

    // Return signed note (in production, this updates backend)
    return ClinicalNote(
      id: noteId,
      consultationId: 'consult-temp',
      patientId: 'patient-temp',
      patientName: 'Patient Name',
      doctorId: 'doc-001',
      doctorName: 'Dr. Rajesh Kumar',
      createdAt: DateTime.now().subtract(const Duration(hours: 1)),
      status: NoteStatus.signed,
      format: NoteFormat.soap,
      reviewed: true,
      reviewedBy: 'Dr. Rajesh Kumar',
      reviewedAt: DateTime.now(),
    );
  }

  /// Generate mock notes list
  static List<ClinicalNote> generateNotesList(int count) {
    final notes = <ClinicalNote>[];
    final now = DateTime.now();

    for (int i = 0; i < count; i++) {
      final status = _random.nextBool()
          ? NoteStatus.draft
          : _random.nextBool()
          ? NoteStatus.reviewed
          : NoteStatus.signed;

      notes.add(
        ClinicalNote(
          id: 'note-00$i',
          consultationId: 'consult-00$i',
          patientId: 'patient-00$i',
          patientName: 'Patient ${String.fromCharCode(65 + i)}',
          doctorId: 'doc-001',
          doctorName: 'Dr. Rajesh Kumar',
          createdAt: now.subtract(Duration(days: i)),
          status: status,
          format: NoteFormat.soap,
          subjective: 'Chief complaint and history...',
          objective: 'Vital signs and examination...',
          assessment: 'Diagnosis and assessment...',
          plan: 'Treatment plan...',
          wordCount: 300 + _random.nextInt(400),
          confidence: 85 + _random.nextInt(15),
          reviewed: status != NoteStatus.draft,
          reviewedBy: status != NoteStatus.draft ? 'Dr. Rajesh Kumar' : null,
          reviewedAt: status != NoteStatus.draft
              ? now.subtract(Duration(hours: i))
              : null,
        ),
      );
    }

    return notes;
  }
}
