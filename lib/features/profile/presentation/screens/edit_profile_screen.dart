import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/theme/color_palette.dart';
import '../../../../core/theme/typography.dart';
import '../../../../core/utils/responsive.dart';
import '../../../../core/widgets/custom_button.dart';
import '../state/profile_notifier.dart';
import '../widgets/export.dart';

class EditProfileScreen extends ConsumerStatefulWidget {
  const EditProfileScreen({super.key});

  @override
  ConsumerState<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends ConsumerState<EditProfileScreen> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _phoneController;
  late TextEditingController _specializationController;
  late TextEditingController _licenseController;
  late TextEditingController _bioController;
  late TextEditingController _addressController;
  late TextEditingController _cityController;
  late TextEditingController _stateController;
  late TextEditingController _pincodeController;

  bool _hasChanges = false;

  @override
  void initState() {
    super.initState();
    final profile = ref.read(profileProvider('doc-001')).profile;

    _nameController = TextEditingController(text: profile?.name);
    _emailController = TextEditingController(text: profile?.email);
    _phoneController = TextEditingController(text: profile?.phone);
    _specializationController = TextEditingController(
      text: profile?.specialization,
    );
    _licenseController = TextEditingController(text: profile?.licenseNumber);
    _bioController = TextEditingController(text: profile?.bio);
    _addressController = TextEditingController(text: profile?.address);
    _cityController = TextEditingController(text: profile?.city);
    _stateController = TextEditingController(text: profile?.state);
    _pincodeController = TextEditingController(text: profile?.pincode);

    _nameController.addListener(_markAsChanged);
    _phoneController.addListener(_markAsChanged);
    _specializationController.addListener(_markAsChanged);
    _bioController.addListener(_markAsChanged);
    _addressController.addListener(_markAsChanged);
    _cityController.addListener(_markAsChanged);
    _stateController.addListener(_markAsChanged);
    _pincodeController.addListener(_markAsChanged);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _specializationController.dispose();
    _licenseController.dispose();
    _bioController.dispose();
    _addressController.dispose();
    _cityController.dispose();
    _stateController.dispose();
    _pincodeController.dispose();
    super.dispose();
  }

  void _markAsChanged() {
    if (!_hasChanges) {
      setState(() {
        _hasChanges = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(profileProvider('doc-001'));
    final profile = state.profile;

    if (profile == null) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    return WillPopScope(
      onWillPop: () async {
        if (_hasChanges) {
          return await _showUnsavedChangesDialog();
        }
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Edit Profile'),
          actions: [
            if (_hasChanges && !state.isSaving)
              TextButton(
                onPressed: _saveProfile,
                child: Text(
                  'Save',
                  style: AppTypography.labelLarge(color: AppColors.primary),
                ),
              ),
          ],
        ),
        body: Stack(
          children: [
            Form(
              key: _formKey,
              child: ListView(
                padding: Responsive.padding(context),
                children: [
                  const SizedBox(height: 20),

                  // Avatar
                  Center(
                    child: ProfileAvatar(
                      name: _nameController.text,
                      size: 100,
                      onTap: () {
                        // TODO: Change avatar
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Avatar change coming soon'),
                          ),
                        );
                      },
                    ),
                  ),

                  const SizedBox(height: 32),

                  // Personal Information
                  Text(
                    'Personal Information',
                    style: AppTypography.titleMedium(),
                  ),
                  const SizedBox(height: 16),

                  ProfileTextField(
                    label: 'Full Name *',
                    controller: _nameController,
                    icon: Icons.person,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Name is required';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),

                  ProfileTextField(
                    label: 'Email',
                    controller: _emailController,
                    icon: Icons.email,
                    keyboardType: TextInputType.emailAddress,
                    readOnly: true,
                  ),
                  const SizedBox(height: 16),

                  ProfileTextField(
                    label: 'Phone Number',
                    controller: _phoneController,
                    icon: Icons.phone,
                    keyboardType: TextInputType.phone,
                  ),
                  const SizedBox(height: 24),

                  // Professional Information
                  Text(
                    'Professional Information',
                    style: AppTypography.titleMedium(),
                  ),
                  const SizedBox(height: 16),

                  ProfileTextField(
                    label: 'Specialization',
                    controller: _specializationController,
                    icon: Icons.medical_services,
                  ),
                  const SizedBox(height: 16),

                  ProfileTextField(
                    label: 'License Number',
                    controller: _licenseController,
                    icon: Icons.badge,
                    readOnly: true,
                  ),
                  const SizedBox(height: 16),

                  ProfileTextField(
                    label: 'Bio',
                    controller: _bioController,
                    icon: Icons.description,
                    maxLines: 4,
                  ),
                  const SizedBox(height: 24),

                  // Address Information
                  Text('Address', style: AppTypography.titleMedium()),
                  const SizedBox(height: 16),

                  ProfileTextField(
                    label: 'Address',
                    controller: _addressController,
                    icon: Icons.home,
                  ),
                  const SizedBox(height: 16),

                  Row(
                    children: [
                      Expanded(
                        child: ProfileTextField(
                          label: 'City',
                          controller: _cityController,
                          icon: Icons.location_city,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: ProfileTextField(
                          label: 'State',
                          controller: _stateController,
                          icon: Icons.map,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),

                  ProfileTextField(
                    label: 'Pincode',
                    controller: _pincodeController,
                    icon: Icons.pin_drop,
                    keyboardType: TextInputType.number,
                  ),

                  const SizedBox(height: 32),

                  // Save Button
                  CustomButton(
                    label: 'Save Changes',
                    onPressed: _saveProfile,
                    variant: ButtonVariant.gradient,
                    size: ButtonSize.large,
                    isExpanded: true,
                    icon: const Icon(Icons.check),
                  ),

                  const SizedBox(height: 20),
                ],
              ),
            ),

            // Loading overlay
            if (state.isSaving)
              Container(
                color: Colors.black.withOpacity(0.3),
                child: const Center(child: CircularProgressIndicator()),
              ),
          ],
        ),
      ),
    );
  }

  Future<void> _saveProfile() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    final currentProfile = ref.read(profileProvider('doc-001')).profile!;

    final updatedProfile = currentProfile.copyWith(
      name: _nameController.text,
      phone: _phoneController.text,
      specialization: _specializationController.text,
      bio: _bioController.text,
      address: _addressController.text,
      city: _cityController.text,
      state: _stateController.text,
      pincode: _pincodeController.text,
    );

    final success = await ref
        .read(profileProvider('doc-001').notifier)
        .updateProfile(updatedProfile);

    if (success && mounted) {
      setState(() {
        _hasChanges = false;
      });

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Profile updated successfully'),
          backgroundColor: AppColors.success,
        ),
      );
    }
  }

  Future<bool> _showUnsavedChangesDialog() async {
    final result = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Unsaved Changes', style: AppTypography.titleLarge()),
        content: Text(
          'You have unsaved changes. Do you want to save before leaving?',
          style: AppTypography.bodyMedium(),
        ),
        actions: [
          CustomButton(
            label: 'Discard',
            onPressed: () => Navigator.pop(context, true),
            variant: ButtonVariant.text,
          ),
          CustomButton(
            label: 'Cancel',
            onPressed: () => Navigator.pop(context, false),
            variant: ButtonVariant.outlined,
          ),
          CustomButton(
            label: 'Save',
            onPressed: () async {
              await _saveProfile();
              if (context.mounted) {
                Navigator.pop(context, true);
              }
            },
            variant: ButtonVariant.primary,
          ),
        ],
      ),
    );

    return result ?? false;
  }
}
