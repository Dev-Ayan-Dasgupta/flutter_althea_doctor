import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/theme/color_palette.dart';
import '../../../../core/theme/typography.dart';
import '../../../../core/utils/responsive.dart';
import '../../../../core/widgets/custom_button.dart';
import '../state/profile_notifier.dart';
import '../widgets/profile_avatar.dart';
import '../widgets/profile_info_card.dart';
import 'edit_profile_screen.dart';

class ViewProfileScreen extends ConsumerWidget {
  const ViewProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(profileProvider('doc-001')); // TODO: Get from auth
    final profile = state.profile;

    if (state.isLoading) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    if (profile == null) {
      return const Scaffold(body: Center(child: Text('No profile data')));
    }

    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const EditProfileScreen(),
                ),
              );
            },
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          await ref.read(profileProvider('doc-001').notifier).refresh();
        },
        child: ListView(
          padding: Responsive.padding(context),
          children: [
            const SizedBox(height: 20),

            // Avatar and Name
            Center(
              child: Column(
                children: [
                  ProfileAvatar(
                    name: profile.name,
                    avatarUrl: profile.avatarUrl,
                    size: 100,
                  ),
                  const SizedBox(height: 16),
                  Text(profile.name, style: AppTypography.headlineSmall()),
                  if (profile.specialization != null) ...[
                    const SizedBox(height: 4),
                    Text(
                      profile.specialization!,
                      style: AppTypography.bodyLarge(
                        color: isDark
                            ? AppColors.darkOnSurfaceVariant
                            : AppColors.lightOnSurfaceVariant,
                      ),
                    ),
                  ],
                ],
              ),
            ),

            const SizedBox(height: 32),

            // Contact Information
            Text('Contact Information', style: AppTypography.titleMedium()),
            const SizedBox(height: 12),

            ProfileInfoCard(
              icon: Icons.email,
              label: 'Email',
              value: profile.email,
            ),
            const SizedBox(height: 8),

            if (profile.phone != null)
              ProfileInfoCard(
                icon: Icons.phone,
                label: 'Phone',
                value: profile.phone!,
              ),

            const SizedBox(height: 24),

            // Professional Information
            Text(
              'Professional Information',
              style: AppTypography.titleMedium(),
            ),
            const SizedBox(height: 12),

            if (profile.licenseNumber != null)
              ProfileInfoCard(
                icon: Icons.badge,
                label: 'License Number',
                value: profile.licenseNumber!,
              ),
            const SizedBox(height: 8),

            if (profile.yearsOfExperience != null)
              ProfileInfoCard(
                icon: Icons.work,
                label: 'Experience',
                value: '${profile.yearsOfExperience} years',
              ),
            const SizedBox(height: 8),

            if (profile.bio != null)
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: isDark
                      ? AppColors.darkSurface
                      : AppColors.lightSurface,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: isDark
                        ? AppColors.darkDivider
                        : AppColors.lightDivider,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.description,
                          size: 20,
                          color: AppColors.primary,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'Bio',
                          style: AppTypography.labelMedium(
                            color: isDark
                                ? AppColors.darkOnSurfaceVariant
                                : AppColors.lightOnSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(profile.bio!, style: AppTypography.bodyMedium()),
                  ],
                ),
              ),

            const SizedBox(height: 24),

            // Address
            if (profile.address != null || profile.city != null)
              Text('Address', style: AppTypography.titleMedium()),
            const SizedBox(height: 12),

            if (profile.address != null)
              ProfileInfoCard(
                icon: Icons.home,
                label: 'Address',
                value: profile.address!,
              ),
            const SizedBox(height: 8),

            if (profile.city != null && profile.state != null)
              ProfileInfoCard(
                icon: Icons.location_city,
                label: 'City, State',
                value: '${profile.city}, ${profile.state}',
              ),
            const SizedBox(height: 8),

            if (profile.pincode != null)
              ProfileInfoCard(
                icon: Icons.pin_drop,
                label: 'Pincode',
                value: profile.pincode!,
              ),

            const SizedBox(height: 32),

            // Edit Button
            CustomButton(
              label: 'Edit Profile',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EditProfileScreen(),
                  ),
                );
              },
              variant: ButtonVariant.outlined,
              size: ButtonSize.large,
              isExpanded: true,
              icon: const Icon(Icons.edit),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
