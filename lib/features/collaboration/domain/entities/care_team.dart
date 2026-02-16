import 'package:freezed_annotation/freezed_annotation.dart';

part 'care_team.freezed.dart';

/// Care team for a patient
@freezed
abstract class CareTeam with _$CareTeam {
  const factory CareTeam({
    required String id,
    required String patientId,
    required String patientName,
    required List<TeamMember> members,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _CareTeam;

  const CareTeam._();

  /// Get primary physician
  TeamMember? get primaryPhysician {
    try {
      return members.firstWhere(
        (m) => m.role == TeamRole.primaryPhysician && m.isActive,
      );
    } catch (_) {
      return null;
    }
  }

  /// Get active members
  List<TeamMember> get activeMembers {
    return members.where((m) => m.isActive).toList();
  }
}

/// Team member
@freezed
abstract class TeamMember with _$TeamMember {
  const factory TeamMember({
    required String id,
    required String name,
    required TeamRole role,
    String? specialization,
    String? avatarUrl,
    String? email,
    String? phone,
    required bool isActive,
    DateTime? joinedAt,
  }) = _TeamMember;

  const TeamMember._();

  String get roleLabel {
    switch (role) {
      case TeamRole.primaryPhysician:
        return 'Primary Physician';
      case TeamRole.specialist:
        return 'Specialist';
      case TeamRole.nurse:
        return 'Nurse';
      case TeamRole.physiotherapist:
        return 'Physiotherapist';
      case TeamRole.nutritionist:
        return 'Nutritionist';
      case TeamRole.pharmacist:
        return 'Pharmacist';
      case TeamRole.socialWorker:
        return 'Social Worker';
      case TeamRole.other:
        return 'Healthcare Provider';
    }
  }
}

/// Team roles
enum TeamRole {
  primaryPhysician,
  specialist,
  nurse,
  physiotherapist,
  nutritionist,
  pharmacist,
  socialWorker,
  other,
}

/// Referral
@freezed
abstract class Referral with _$Referral {
  const factory Referral({
    required String id,
    required String patientId,
    required String patientName,
    required String fromDoctorId,
    required String fromDoctorName,
    required String toDoctorId,
    required String toDoctorName,
    required String toSpecialty,
    required ReferralStatus status,
    required String reason,
    String? clinicalSummary,
    String? urgency, // routine, urgent, emergency
    DateTime? createdAt,
    DateTime? responseAt,
    String? response,
    List<String>? attachments,
  }) = _Referral;

  const Referral._();

  bool get isPending => status == ReferralStatus.pending;
  bool get isAccepted => status == ReferralStatus.accepted;
}

/// Referral status
enum ReferralStatus { pending, accepted, declined, completed, cancelled }

/// Secure message
@freezed
abstract class SecureMessage with _$SecureMessage {
  const factory SecureMessage({
    required String id,
    required String senderId,
    required String senderName,
    required String recipientId,
    required String recipientName,
    required String subject,
    required String content,
    required DateTime sentAt,
    bool? isRead,
    DateTime? readAt,
    String? patientId,
    String? patientName,
    List<String>? attachments,
  }) = _SecureMessage;
}

/// Case discussion
@freezed
abstract class CaseDiscussion with _$CaseDiscussion {
  const factory CaseDiscussion({
    required String id,
    required String patientId,
    required String patientName,
    required String title,
    required String description,
    required String createdBy,
    required String createdByName,
    required DateTime createdAt,
    required List<DiscussionComment> comments,
    List<String>? participants,
    bool? isResolved,
  }) = _CaseDiscussion;

  const CaseDiscussion._();

  int get commentCount => comments.length;
}

/// Discussion comment
@freezed
abstract class DiscussionComment with _$DiscussionComment {
  const factory DiscussionComment({
    required String id,
    required String authorId,
    required String authorName,
    required String content,
    required DateTime postedAt,
  }) = _DiscussionComment;
}
