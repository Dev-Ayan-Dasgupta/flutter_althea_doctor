import '../../../../core/network/result.dart';
import '../entities/doctor.dart';
import '../entities/login_credentials.dart';

/// Authentication repository interface
abstract class AuthRepository {
  /// Login with email and password
  Future<Result<AuthResponse>> login(LoginCredentials credentials);

  /// Login with biometric
  Future<Result<AuthResponse>> loginWithBiometric();

  /// Logout
  Future<Result<void>> logout();

  /// Refresh access token
  Future<Result<AuthResponse>> refreshToken(String refreshToken);

  /// Get current authenticated doctor
  Future<Result<Doctor>> getCurrentDoctor();

  /// Check if user is authenticated
  Future<bool> isAuthenticated();

  /// Get stored access token
  Future<String?> getAccessToken();

  /// Get stored refresh token
  Future<String?> getRefreshToken();
}

/// Authentication response
class AuthResponse {
  final Doctor doctor;
  final String accessToken;
  final String refreshToken;
  final DateTime expiresAt;

  AuthResponse({
    required this.doctor,
    required this.accessToken,
    required this.refreshToken,
    required this.expiresAt,
  });
}
