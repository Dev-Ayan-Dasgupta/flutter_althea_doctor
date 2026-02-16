import 'package:freezed_annotation/freezed_annotation.dart';

part 'doctor.freezed.dart';

/// Doctor entity for AltheaCare (extends FHIR Practitioner)
@freezed
abstract class Doctor with _$Doctor {
  const factory Doctor({
    required String id,
    required String fhirPractitionerId,
    required String name,
    required String email,
    String? phone,
    String? avatarUrl,
    required List<String> specializations,
    required String registrationNumber, // Medical Council registration
    String? organization,
    @Default([]) List<String> facilities, // Old age homes assigned
    @Default(true) bool isActive,
    @Default(false) bool isVerified,
    @Default(0) double qualityScore,
    DateTime? lastLoginAt,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Doctor;

  const Doctor._();

  /// Get initials from name
  String get initials {
    final parts = name.split(' ');
    if (parts.isEmpty) return '';
    if (parts.length == 1) return parts[0][0].toUpperCase();
    return '${parts[0][0]}${parts[parts.length - 1][0]}'.toUpperCase();
  }

  /// Get primary specialization
  String get primarySpecialization {
    return specializations.isNotEmpty
        ? specializations.first
        : 'General Practice';
  }
}
