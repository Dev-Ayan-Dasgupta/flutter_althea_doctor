import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/services/mock_profile_service.dart';
import '../../domain/entities/doctor_profile.dart';

part 'profile_notifier.g.dart';

class ProfileState {
  final DoctorProfile? profile;
  final bool isLoading;
  final bool isSaving;
  final String? error;

  ProfileState({
    this.profile,
    this.isLoading = false,
    this.isSaving = false,
    this.error,
  });

  ProfileState copyWith({
    DoctorProfile? profile,
    bool? isLoading,
    bool? isSaving,
    String? error,
    bool clearError = false,
  }) {
    return ProfileState(
      profile: profile ?? this.profile,
      isLoading: isLoading ?? this.isLoading,
      isSaving: isSaving ?? this.isSaving,
      error: clearError ? null : (error ?? this.error),
    );
  }
}

@riverpod
class Profile extends _$Profile {
  @override
  ProfileState build(String doctorId) {
    _loadProfile(doctorId);
    return ProfileState(isLoading: true);
  }

  Future<void> _loadProfile(String doctorId) async {
    state = state.copyWith(isLoading: true, clearError: true);

    try {
      await Future.delayed(const Duration(milliseconds: 500));

      final profile = MockProfileService.generateProfile(doctorId);

      state = state.copyWith(profile: profile, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: 'Failed to load profile: $e',
      );
    }
  }

  Future<bool> updateProfile(DoctorProfile updatedProfile) async {
    state = state.copyWith(isSaving: true, clearError: true);

    try {
      final profile = await MockProfileService.updateProfile(updatedProfile);

      state = state.copyWith(profile: profile, isSaving: false);

      return true;
    } catch (e) {
      state = state.copyWith(
        isSaving: false,
        error: 'Failed to update profile: $e',
      );
      return false;
    }
  }

  Future<void> refresh() async => _loadProfile(doctorId);
}
