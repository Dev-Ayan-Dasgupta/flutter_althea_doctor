import '../../domain/entities/doctor_profile.dart';

class MockProfileService {
  static DoctorProfile generateProfile(String doctorId) {
    return DoctorProfile(
      id: doctorId,
      name: 'Dr. Rajesh Kumar',
      email: 'rajesh.kumar@altheacare.com',
      phone: '+91 98765 43210',
      specialization: 'Geriatrics',
      licenseNumber: 'MCI-12345-2015',
      bio:
          'Experienced geriatrician with over 15 years of practice. Specialized in elderly care and chronic disease management.',
      languages: ['English', 'Hindi', 'Bengali'],
      address: '123 Medical Street',
      city: 'Kolkata',
      state: 'West Bengal',
      pincode: '700001',
      dateOfBirth: DateTime(1980, 5, 15),
      gender: 'Male',
      yearsOfExperience: 15,
    );
  }

  static Future<DoctorProfile> updateProfile(DoctorProfile profile) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return profile;
  }
}
