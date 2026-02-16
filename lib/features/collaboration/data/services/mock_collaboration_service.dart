import 'dart:math';
import '../../domain/entities/care_team.dart';

class MockCollaborationService {
  static final _random = Random(42);

  static List<CareTeam> generateCareTeams(int count) {
    return List.generate(count, (i) => _generateCareTeam(i));
  }

  static CareTeam _generateCareTeam(int index) {
    return CareTeam(
      id: 'team-$index',
      patientId: 'patient-$index',
      patientName: 'Patient ${String.fromCharCode(65 + index)}',
      members: [
        TeamMember(
          id: 'member-${index}0',
          name: 'Dr. Rajesh Kumar',
          role: TeamRole.primaryPhysician,
          specialization: 'Geriatrics',
          isActive: true,
          joinedAt: DateTime.now().subtract(Duration(days: 30)),
        ),
        TeamMember(
          id: 'member-${index}1',
          name: 'Dr. Priya Sharma',
          role: TeamRole.specialist,
          specialization: 'Cardiology',
          isActive: true,
          joinedAt: DateTime.now().subtract(Duration(days: 20)),
        ),
        TeamMember(
          id: 'member-${index}2',
          name: 'Nurse Anjali',
          role: TeamRole.nurse,
          isActive: true,
          joinedAt: DateTime.now().subtract(Duration(days: 25)),
        ),
      ],
      createdAt: DateTime.now().subtract(Duration(days: 30)),
    );
  }

  static List<Referral> generateReferrals(int count) {
    return List.generate(count, (i) => _generateReferral(i));
  }

  static Referral _generateReferral(int index) {
    final statuses = [
      ReferralStatus.pending,
      ReferralStatus.accepted,
      ReferralStatus.completed,
    ];

    return Referral(
      id: 'ref-$index',
      patientId: 'patient-$index',
      patientName: 'Patient ${String.fromCharCode(65 + index)}',
      fromDoctorId: 'doc-001',
      fromDoctorName: 'Dr. Rajesh Kumar',
      toDoctorId: 'doc-specialist-$index',
      toDoctorName: 'Dr. Specialist ${String.fromCharCode(65 + index)}',
      toSpecialty: _getRandomSpecialty(),
      status: statuses[_random.nextInt(statuses.length)],
      reason: 'Consultation needed for ${_getRandomCondition()}',
      clinicalSummary: 'Patient history and current condition summary...',
      urgency: _random.nextBool() ? 'routine' : 'urgent',
      createdAt: DateTime.now().subtract(Duration(days: index)),
    );
  }

  static List<SecureMessage> generateMessages(int count) {
    return List.generate(count, (i) => _generateMessage(i));
  }

  static SecureMessage _generateMessage(int index) {
    return SecureMessage(
      id: 'msg-$index',
      senderId: _random.nextBool() ? 'doc-001' : 'doc-002',
      senderName: _random.nextBool() ? 'Dr. Rajesh Kumar' : 'Dr. Priya Sharma',
      recipientId: _random.nextBool() ? 'doc-002' : 'doc-001',
      recipientName: _random.nextBool()
          ? 'Dr. Priya Sharma'
          : 'Dr. Rajesh Kumar',
      subject: 'Patient consultation request',
      content: 'Need your opinion on patient case...',
      sentAt: DateTime.now().subtract(Duration(hours: index)),
      isRead: _random.nextBool(),
      patientId: 'patient-$index',
      patientName: 'Patient ${String.fromCharCode(65 + index)}',
    );
  }

  static List<CaseDiscussion> generateDiscussions(int count) {
    return List.generate(count, (i) => _generateDiscussion(i));
  }

  static CaseDiscussion _generateDiscussion(int index) {
    return CaseDiscussion(
      id: 'disc-$index',
      patientId: 'patient-$index',
      patientName: 'Patient ${String.fromCharCode(65 + index)}',
      title: 'Complex case discussion',
      description: 'Need team input on treatment approach...',
      createdBy: 'doc-001',
      createdByName: 'Dr. Rajesh Kumar',
      createdAt: DateTime.now().subtract(Duration(days: index)),
      comments: [
        DiscussionComment(
          id: 'comment-${index}0',
          authorId: 'doc-002',
          authorName: 'Dr. Priya Sharma',
          content: 'I recommend considering...',
          postedAt: DateTime.now().subtract(Duration(days: index, hours: -2)),
        ),
      ],
      participants: ['doc-001', 'doc-002', 'doc-003'],
      isResolved: _random.nextBool(),
    );
  }

  static String _getRandomSpecialty() {
    final specialties = [
      'Cardiology',
      'Neurology',
      'Orthopedics',
      'Endocrinology',
    ];
    return specialties[_random.nextInt(specialties.length)];
  }

  static String _getRandomCondition() {
    final conditions = [
      'chest pain',
      'diabetes management',
      'hypertension',
      'cognitive decline',
    ];
    return conditions[_random.nextInt(conditions.length)];
  }
}
