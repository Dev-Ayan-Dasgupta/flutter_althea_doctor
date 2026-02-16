import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/entities/care_team.dart';
import '../../data/services/mock_collaboration_service.dart';

part 'collaboration_notifier.g.dart';

class CollaborationState {
  final List<CareTeam> careTeams;
  final List<Referral> referrals;
  final List<SecureMessage> messages;
  final List<CaseDiscussion> discussions;
  final bool isLoading;
  final String? error;

  CollaborationState({
    this.careTeams = const [],
    this.referrals = const [],
    this.messages = const [],
    this.discussions = const [],
    this.isLoading = false,
    this.error,
  });

  CollaborationState copyWith({
    List<CareTeam>? careTeams,
    List<Referral>? referrals,
    List<SecureMessage>? messages,
    List<CaseDiscussion>? discussions,
    bool? isLoading,
    String? error,
    bool clearError = false,
  }) {
    return CollaborationState(
      careTeams: careTeams ?? this.careTeams,
      referrals: referrals ?? this.referrals,
      messages: messages ?? this.messages,
      discussions: discussions ?? this.discussions,
      isLoading: isLoading ?? this.isLoading,
      error: clearError ? null : (error ?? this.error),
    );
  }

  int get unreadMessageCount => messages.where((m) => m.isRead != true).length;
  int get pendingReferrals => referrals.where((r) => r.isPending).length;
}

@riverpod
class Collaboration extends _$Collaboration {
  @override
  CollaborationState build() {
    _loadData();
    return CollaborationState(isLoading: true);
  }

  Future<void> _loadData() async {
    state = state.copyWith(isLoading: true, clearError: true);

    try {
      await Future.delayed(const Duration(milliseconds: 500));

      state = state.copyWith(
        careTeams: MockCollaborationService.generateCareTeams(5),
        referrals: MockCollaborationService.generateReferrals(10),
        messages: MockCollaborationService.generateMessages(15),
        discussions: MockCollaborationService.generateDiscussions(8),
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(isLoading: false, error: 'Failed to load: $e');
    }
  }

  Future<void> refresh() async => _loadData();
}
