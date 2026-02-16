import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/theme/color_palette.dart';
import '../../../../core/theme/typography.dart';
import '../../../../core/utils/responsive.dart';
import '../../../../core/utils/extensions.dart';
import '../../domain/entities/care_team.dart';
import '../state/collaboration_notifier.dart';

class CollaborationScreen extends ConsumerWidget {
  const CollaborationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(collaborationProvider);
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Column(
          children: [
            _buildHeader(context, state, isDark),
            const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.group), text: 'Teams'),
                Tab(icon: Icon(Icons.person_add), text: 'Referrals'),
                Tab(icon: Icon(Icons.message), text: 'Messages'),
                Tab(icon: Icon(Icons.forum), text: 'Discussions'),
              ],
            ),
            Expanded(
              child: state.isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : TabBarView(
                      children: [
                        _buildCareTeamsTab(context, state, isDark),
                        _buildReferralsTab(context, state, isDark),
                        _buildMessagesTab(context, state, isDark),
                        _buildDiscussionsTab(context, state, isDark),
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(
    BuildContext context,
    CollaborationState state,
    bool isDark,
  ) {
    final isMobile = Responsive.isMobile(context);

    return Container(
      padding: EdgeInsets.all(isMobile ? 16 : 20),
      decoration: BoxDecoration(
        gradient: isDark
            ? AppGradients.darkSurfaceGradient
            : AppGradients.lightSurfaceGradient,
        border: Border(
          bottom: BorderSide(
            color: isDark ? AppColors.darkDivider : AppColors.lightDivider,
          ),
        ),
      ),
      child: Row(
        children: [
          Icon(
            Icons.people,
            size: isMobile ? 24 : 32,
            color: AppColors.primary,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Collaboration Hub',
                  style: isMobile
                      ? AppTypography.titleLarge()
                      : AppTypography.headlineSmall(),
                ),
                const SizedBox(height: 4),
                Text(
                  '${state.unreadMessageCount} unread • ${state.pendingReferrals} pending',
                  style: AppTypography.bodyMedium(
                    color: isDark
                        ? AppColors.darkOnSurfaceVariant
                        : AppColors.lightOnSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCareTeamsTab(
    BuildContext context,
    CollaborationState state,
    bool isDark,
  ) {
    if (state.careTeams.isEmpty) {
      return Center(
        child: Text('No care teams yet', style: AppTypography.bodyLarge()),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: state.careTeams.length,
      itemBuilder: (context, index) {
        final team = state.careTeams[index];
        return Card(
          margin: const EdgeInsets.only(bottom: 12),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(team.patientName, style: AppTypography.titleMedium()),
                const SizedBox(height: 12),
                ...team.activeMembers.map(
                  (member) => Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: AppColors.primary.withOpacity(0.1),
                          child: Text(
                            member.name[0],
                            style: AppTypography.labelMedium(
                              color: AppColors.primary,
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                member.name,
                                style: AppTypography.bodyMedium(),
                              ),
                              Text(
                                member.roleLabel,
                                style: AppTypography.bodySmall(
                                  color: isDark
                                      ? AppColors.darkOnSurfaceVariant
                                      : AppColors.lightOnSurfaceVariant,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildReferralsTab(
    BuildContext context,
    CollaborationState state,
    bool isDark,
  ) {
    if (state.referrals.isEmpty) {
      return Center(
        child: Text('No referrals', style: AppTypography.bodyLarge()),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: state.referrals.length,
      itemBuilder: (context, index) {
        final referral = state.referrals[index];
        return Card(
          margin: const EdgeInsets.only(bottom: 12),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        referral.patientName,
                        style: AppTypography.titleMedium(),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: _getReferralStatusColor(
                          referral.status,
                        ).withOpacity(0.1),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: _getReferralStatusColor(referral.status),
                        ),
                      ),
                      child: Text(
                        referral.status.name.toUpperCase(),
                        style: AppTypography.labelSmall(
                          color: _getReferralStatusColor(referral.status),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  'To: ${referral.toDoctorName} (${referral.toSpecialty})',
                  style: AppTypography.bodyMedium(),
                ),
                const SizedBox(height: 4),
                Text(
                  referral.reason,
                  style: AppTypography.bodySmall(
                    color: isDark
                        ? AppColors.darkOnSurfaceVariant
                        : AppColors.lightOnSurfaceVariant,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  referral.createdAt!.toRelativeTime(),
                  style: AppTypography.bodySmall(
                    color: isDark
                        ? AppColors.darkOnSurfaceVariant
                        : AppColors.lightOnSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildMessagesTab(
    BuildContext context,
    CollaborationState state,
    bool isDark,
  ) {
    if (state.messages.isEmpty) {
      return Center(
        child: Text('No messages', style: AppTypography.bodyLarge()),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: state.messages.length,
      itemBuilder: (context, index) {
        final message = state.messages[index];
        return Card(
          margin: const EdgeInsets.only(bottom: 12),
          color: message.isRead != true
              ? AppColors.info.withOpacity(0.05)
              : null,
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: AppColors.primary.withOpacity(0.1),
              child: Text(
                message.senderName[0],
                style: AppTypography.labelMedium(color: AppColors.primary),
              ),
            ),
            title: Row(
              children: [
                Expanded(
                  child: Text(
                    message.subject,
                    style: AppTypography.titleSmall(),
                  ),
                ),
                if (message.isRead != true)
                  Container(
                    width: 8,
                    height: 8,
                    decoration: const BoxDecoration(
                      color: AppColors.info,
                      shape: BoxShape.circle,
                    ),
                  ),
              ],
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'From: ${message.senderName}',
                  style: AppTypography.bodySmall(),
                ),
                if (message.patientName != null)
                  Text(
                    'Re: ${message.patientName}',
                    style: AppTypography.bodySmall(
                      color: isDark
                          ? AppColors.darkOnSurfaceVariant
                          : AppColors.lightOnSurfaceVariant,
                    ),
                  ),
                Text(
                  message.sentAt.toRelativeTime(),
                  style: AppTypography.bodySmall(
                    color: isDark
                        ? AppColors.darkOnSurfaceVariant
                        : AppColors.lightOnSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildDiscussionsTab(
    BuildContext context,
    CollaborationState state,
    bool isDark,
  ) {
    if (state.discussions.isEmpty) {
      return Center(
        child: Text('No discussions', style: AppTypography.bodyLarge()),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: state.discussions.length,
      itemBuilder: (context, index) {
        final discussion = state.discussions[index];
        return Card(
          margin: const EdgeInsets.only(bottom: 12),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        discussion.title,
                        style: AppTypography.titleMedium(),
                      ),
                    ),
                    if (discussion.isResolved == true)
                      const Icon(
                        Icons.check_circle,
                        color: AppColors.success,
                        size: 20,
                      ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  'Patient: ${discussion.patientName}',
                  style: AppTypography.bodyMedium(),
                ),
                const SizedBox(height: 8),
                Text(
                  discussion.description,
                  style: AppTypography.bodySmall(
                    color: isDark
                        ? AppColors.darkOnSurfaceVariant
                        : AppColors.lightOnSurfaceVariant,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Icon(
                      Icons.comment,
                      size: 16,
                      color: isDark
                          ? AppColors.darkOnSurfaceVariant
                          : AppColors.lightOnSurfaceVariant,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      '${discussion.commentCount} comments',
                      style: AppTypography.bodySmall(
                        color: isDark
                            ? AppColors.darkOnSurfaceVariant
                            : AppColors.lightOnSurfaceVariant,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Text(
                      discussion.createdAt.toRelativeTime(),
                      style: AppTypography.bodySmall(
                        color: isDark
                            ? AppColors.darkOnSurfaceVariant
                            : AppColors.lightOnSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Color _getReferralStatusColor(ReferralStatus status) {
    switch (status) {
      case ReferralStatus.pending:
        return AppColors.warning;
      case ReferralStatus.accepted:
        return AppColors.info;
      case ReferralStatus.declined:
        return AppColors.critical;
      case ReferralStatus.completed:
        return AppColors.success;
      case ReferralStatus.cancelled:
        return AppColors.stable;
    }
  }
}
