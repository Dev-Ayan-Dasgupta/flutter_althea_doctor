import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theme/color_palette.dart';
import '../../../../core/theme/typography.dart';
import '../../../../core/widgets/custom_card.dart';
import '../../../../core/widgets/custom_list_item.dart';
import '../../../../core/utils/responsive.dart';
import '../../../auth/presentation/providers/auth_providers.dart';
import '../../../auth/presentation/state/auth_notifier.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final doctor = ref.watch(currentDoctorProvider);
    final isDark = Theme.of(context).brightness == Brightness.dark;

    if (doctor == null) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
      ),
      body: SingleChildScrollView(
        padding: Responsive.padding(context),
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: Responsive.maxContentWidth(context),
            ),
            child: Column(
              children: [
                const SizedBox(height: 24),

                // Profile Header
                CustomCard(
                  child: Column(
                    children: [
                      // Avatar
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: AppColors.primary,
                        child: Text(
                          doctor.initials,
                          style: AppTypography.displaySmall(
                            color: Colors.white,
                          ),
                        ),
                      ),

                      const SizedBox(height: 16),

                      // Name
                      Text(
                        doctor.name,
                        style: AppTypography.headlineMedium(),
                        textAlign: TextAlign.center,
                      ),

                      const SizedBox(height: 8),

                      // Specialization
                      Text(
                        doctor.primarySpecialization,
                        style: AppTypography.bodyLarge(
                          color: isDark
                              ? AppColors.darkOnSurfaceVariant
                              : AppColors.lightOnSurfaceVariant,
                        ),
                        textAlign: TextAlign.center,
                      ),

                      const SizedBox(height: 16),

                      // Quality Score
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          gradient: AppGradients.successGradient,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.star,
                              size: 16,
                              color: Colors.white,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              '${doctor.qualityScore.toStringAsFixed(1)} Quality Score',
                              style: AppTypography.labelMedium(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 16),

                // Account Information
                CustomCard(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Account Information',
                        style: AppTypography.titleMedium(),
                      ),
                      const SizedBox(height: 16),
                      CustomListItem(
                        leading: const Icon(Icons.email_outlined),
                        title: 'Email',
                        subtitle: doctor.email,
                        showDivider: true,
                      ),
                      CustomListItem(
                        leading: const Icon(Icons.phone_outlined),
                        title: 'Phone',
                        subtitle: doctor.phone ?? 'Not provided',
                        showDivider: true,
                      ),
                      CustomListItem(
                        leading: const Icon(Icons.badge_outlined),
                        title: 'Registration Number',
                        subtitle: doctor.registrationNumber,
                        showDivider: true,
                      ),
                      CustomListItem(
                        leading: const Icon(Icons.business_outlined),
                        title: 'Organization',
                        subtitle: doctor.organization ?? 'Not provided',
                        showDivider: false,
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 16),

                // Specializations
                CustomCard(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Specializations',
                        style: AppTypography.titleMedium(),
                      ),
                      const SizedBox(height: 16),
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: doctor.specializations
                            .map(
                              (spec) => Chip(
                                label: Text(spec),
                                backgroundColor: isDark
                                    ? AppColors.darkSurfaceVariant
                                    : AppColors.lightSurfaceVariant,
                              ),
                            )
                            .toList(),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 16),

                // Settings
                CustomCard(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Settings', style: AppTypography.titleMedium()),
                      const SizedBox(height: 16),
                      CustomListItem(
                        leading: const Icon(Icons.edit_outlined),
                        title: 'Edit Profile',
                        trailing: const Icon(Icons.chevron_right),
                        onTap: () {
                          // TODO: Navigate to edit profile
                        },
                        showDivider: true,
                      ),
                      CustomListItem(
                        leading: const Icon(Icons.lock_outlined),
                        title: 'Change Password',
                        trailing: const Icon(Icons.chevron_right),
                        onTap: () {
                          // TODO: Navigate to change password
                        },
                        showDivider: true,
                      ),
                      CustomListItem(
                        leading: const Icon(Icons.fingerprint),
                        title: 'Biometric Settings',
                        trailing: const Icon(Icons.chevron_right),
                        onTap: () {
                          // TODO: Navigate to biometric settings
                        },
                        showDivider: false,
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 16),

                // Logout Button
                CustomCard(
                  child: CustomListItem(
                    leading: const Icon(
                      Icons.logout,
                      color: AppColors.critical,
                    ),
                    title: 'Logout',
                    titleStyle: AppTypography.titleMedium(
                      color: AppColors.critical,
                    ),
                    onTap: () => _handleLogout(context, ref),
                    showDivider: false,
                  ),
                ),

                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _handleLogout(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Logout', style: AppTypography.titleLarge()),
        content: Text(
          'Are you sure you want to logout?',
          style: AppTypography.bodyMedium(),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text('Cancel', style: AppTypography.labelLarge()),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              ref.read(authProvider.notifier).logout();
            },
            child: Text(
              'Logout',
              style: AppTypography.labelLarge(color: AppColors.critical),
            ),
          ),
        ],
      ),
    );
  }
}
