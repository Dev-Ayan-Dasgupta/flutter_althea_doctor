import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/theme/color_palette.dart';
import '../../../../core/theme/typography.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../profile/presentation/state/profile_notifier.dart';
import '../../../profile/presentation/widgets/profile_avatar.dart';
import '../widgets/menu_list_tile.dart';

class MenuScreen extends ConsumerWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileState = ref.watch(profileProvider('doc-001'));
    final profile = profileState.profile;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        // Profile Section
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            gradient: isDark
                ? AppGradients.darkSurfaceGradient
                : AppGradients.lightSurfaceGradient,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            children: [
              ProfileAvatar(
                name: profile?.name ?? 'Doctor',
                avatarUrl: profile?.avatarUrl,
                size: 60,
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      profile?.name ?? 'Loading...',
                      style: AppTypography.titleLarge(),
                    ),
                    if (profile?.email != null) ...[
                      const SizedBox(height: 4),
                      Text(
                        profile!.email,
                        style: AppTypography.bodySmall(
                          color: isDark
                              ? AppColors.darkOnSurfaceVariant
                              : AppColors.lightOnSurfaceVariant,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
              IconButton(
                icon: const Icon(Icons.edit),
                onPressed: () {
                  Navigator.pushNamed(context, '/profile');
                },
              ),
            ],
          ),
        ),

        const SizedBox(height: 24),

        // Account Section
        Text(
          'Account',
          style: AppTypography.titleSmall(
            color: isDark
                ? AppColors.darkOnSurfaceVariant
                : AppColors.lightOnSurfaceVariant,
          ),
        ),
        const SizedBox(height: 8),

        MenuListTile(
          icon: Icons.person,
          title: 'My Profile',
          subtitle: 'View and edit your profile',
          onTap: () {
            Navigator.pushNamed(context, '/profile');
          },
        ),

        MenuListTile(
          icon: Icons.account_balance_wallet,
          title: 'Wallet',
          subtitle: 'Earnings and transactions',
          onTap: () {
            // Already in navigation
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Navigate to Wallet tab')),
            );
          },
          iconColor: AppColors.success,
        ),

        MenuListTile(
          icon: Icons.analytics,
          title: 'Portfolio Summary',
          subtitle: 'AI-powered insights',
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Navigate to Portfolio tab')),
            );
          },
          iconColor: AppColors.info,
        ),

        const Divider(height: 32),

        // Support Section
        Text(
          'Support',
          style: AppTypography.titleSmall(
            color: isDark
                ? AppColors.darkOnSurfaceVariant
                : AppColors.lightOnSurfaceVariant,
          ),
        ),
        const SizedBox(height: 8),

        MenuListTile(
          icon: Icons.help,
          title: 'Help & Support',
          subtitle: 'FAQs and contact support',
          onTap: () {
            Navigator.pushNamed(context, '/help');
          },
          iconColor: AppColors.warning,
        ),

        MenuListTile(
          icon: Icons.feedback,
          title: 'Send Feedback',
          subtitle: 'Help us improve',
          onTap: () {
            _showFeedbackDialog(context);
          },
          iconColor: AppColors.info,
        ),

        const Divider(height: 32),

        // Legal Section
        Text(
          'Legal',
          style: AppTypography.titleSmall(
            color: isDark
                ? AppColors.darkOnSurfaceVariant
                : AppColors.lightOnSurfaceVariant,
          ),
        ),
        const SizedBox(height: 8),

        MenuListTile(
          icon: Icons.privacy_tip,
          title: 'Privacy Policy',
          onTap: () {
            _openWebView(
              context,
              'Privacy Policy',
              'https://altheacare.com/privacy',
            );
          },
        ),

        MenuListTile(
          icon: Icons.description,
          title: 'Terms & Conditions',
          onTap: () {
            _openWebView(
              context,
              'Terms & Conditions',
              'https://altheacare.com/terms',
            );
          },
        ),

        MenuListTile(
          icon: Icons.info,
          title: 'About AltheaCare',
          onTap: () {
            Navigator.pushNamed(context, '/about');
          },
        ),

        const Divider(height: 32),

        // Logout
        CustomButton(
          label: 'Logout',
          onPressed: () => _showLogoutDialog(context),
          variant: ButtonVariant.outlined,
          size: ButtonSize.large,
          isExpanded: true,
          icon: const Icon(Icons.logout),
        ),

        const SizedBox(height: 20),
      ],
    );
  }

  void _showFeedbackDialog(BuildContext context) {
    final feedbackController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Send Feedback', style: AppTypography.titleLarge()),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Help us improve AltheaCare. Share your thoughts!',
              style: AppTypography.bodyMedium(),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: feedbackController,
              decoration: const InputDecoration(
                hintText: 'Your feedback...',
                border: OutlineInputBorder(),
              ),
              maxLines: 5,
            ),
          ],
        ),
        actions: [
          CustomButton(
            label: 'Cancel',
            onPressed: () => Navigator.pop(context),
            variant: ButtonVariant.text,
          ),
          CustomButton(
            label: 'Send',
            onPressed: () {
              // TODO: Send feedback
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Thank you for your feedback!'),
                  backgroundColor: AppColors.success,
                ),
              );
            },
            variant: ButtonVariant.primary,
          ),
        ],
      ),
    );
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Logout', style: AppTypography.titleLarge()),
        content: Text(
          'Are you sure you want to logout?',
          style: AppTypography.bodyMedium(),
        ),
        actions: [
          CustomButton(
            label: 'Cancel',
            onPressed: () => Navigator.pop(context),
            variant: ButtonVariant.outlined,
          ),
          CustomButton(
            label: 'Logout',
            onPressed: () {
              Navigator.pop(context);
              // TODO: Implement logout
              Navigator.pushReplacementNamed(context, '/login');
            },
            variant: ButtonVariant.primary,
          ),
        ],
      ),
    );
  }

  void _openWebView(BuildContext context, String title, String url) {
    // For now, show a dialog. In production, use webview_flutter package
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title, style: AppTypography.titleLarge()),
        content: Text(
          'This will open: $url\n\nIn production, this will use WebView.',
          style: AppTypography.bodyMedium(),
        ),
        actions: [
          CustomButton(
            label: 'Close',
            onPressed: () => Navigator.pop(context),
            variant: ButtonVariant.primary,
          ),
        ],
      ),
    );
  }
}
