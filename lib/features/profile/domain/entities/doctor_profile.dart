import 'package:freezed_annotation/freezed_annotation.dart';

part 'doctor_profile.freezed.dart';

@freezed
abstract class DoctorProfile with _$DoctorProfile {
  const factory DoctorProfile({
    required String id,
    required String name,
    required String email,
    String? phone,
    String? avatarUrl,
    String? specialization,
    String? licenseNumber,
    String? bio,
    List<String>? languages,
    String? address,
    String? city,
    String? state,
    String? pincode,
    DateTime? dateOfBirth,
    String? gender,
    int? yearsOfExperience,
  }) = _DoctorProfile;

  const DoctorProfile._();

  String get initials {
    final parts = name.split(' ');
    if (parts.length >= 2) {
      return '${parts[0][0]}${parts[1][0]}'.toUpperCase();
    }
    return name.substring(0, 1).toUpperCase();
  }
}
