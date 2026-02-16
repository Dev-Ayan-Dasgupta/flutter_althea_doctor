import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../../../../core/network/result.dart';
import '../../../../core/network/failures.dart';
import '../../../../core/utils/constants.dart';
import '../../../../core/services/audit_logger.dart';
import '../../domain/entities/doctor.dart';
import '../../domain/entities/login_credentials.dart';
import '../../domain/repositories/auth_repository.dart';

/// Mock authentication repository (Phase 1 - no real backend)
class AuthRepositoryImpl implements AuthRepository {
  final FlutterSecureStorage _storage;
  final AuditLogger _auditLogger;

  AuthRepositoryImpl({FlutterSecureStorage? storage, AuditLogger? auditLogger})
    : _storage = storage ?? const FlutterSecureStorage(),
      _auditLogger = auditLogger ?? AuditLogger();

  // Mock doctor data
  static final _mockDoctor = Doctor(
    id: 'doc-001',
    fhirPractitionerId: 'practitioner-001',
    name: 'Dr. Rajesh Kumar',
    email: 'rajesh.kumar@altheacare.com',
    phone: '+91-9876543210',
    avatarUrl: null,
    specializations: ['Geriatric Medicine', 'Internal Medicine'],
    registrationNumber: 'MCI-12345',
    organization: 'AltheaCare Network',
    facilities: ['facility-001', 'facility-002'],
    isActive: true,
    isVerified: true,
    qualityScore: 4.8,
    lastLoginAt: DateTime.now(),
    createdAt: DateTime.now().subtract(const Duration(days: 365)),
  );

  @override
  Future<Result<AuthResponse>> login(LoginCredentials credentials) async {
    try {
      // Simulate network delay
      await Future.delayed(const Duration(seconds: 2));

      // Validate credentials
      if (!credentials.isValid) {
        await _auditLogger.logAuthentication(
          userId: credentials.email,
          action: 'Login attempt with invalid credentials',
          success: false,
          errorMessage: 'Invalid credentials format',
        );

        return const Result.failure(
          Failure.validation(message: 'Invalid credentials'),
        );
      }

      // Mock authentication (accept any email with password "password123")
      if (credentials.password != 'password123') {
        await _auditLogger.logAuthentication(
          userId: credentials.email,
          action: 'Login failed',
          success: false,
          errorMessage: 'Invalid credentials',
        );

        return const Result.failure(
          Failure.authentication(message: 'Invalid email or password'),
        );
      }

      // Generate mock tokens
      final accessToken = _generateMockToken('access');
      final refreshToken = _generateMockToken('refresh');
      final expiresAt = DateTime.now().add(const Duration(hours: 1));

      // Store tokens
      await _storage.write(key: StorageKeys.accessToken, value: accessToken);
      await _storage.write(key: StorageKeys.refreshToken, value: refreshToken);
      await _storage.write(key: StorageKeys.userId, value: _mockDoctor.id);

      // Log successful authentication
      await _auditLogger.logAuthentication(
        userId: _mockDoctor.id,
        action: 'Login successful',
        success: true,
      );

      return Result.success(
        AuthResponse(
          doctor: _mockDoctor,
          accessToken: accessToken,
          refreshToken: refreshToken,
          expiresAt: expiresAt,
        ),
      );
    } catch (e) {
      return Result.failure(Failure.unknown(message: 'Login failed', error: e));
    }
  }

  @override
  Future<Result<AuthResponse>> loginWithBiometric() async {
    try {
      // Simulate biometric authentication
      await Future.delayed(const Duration(seconds: 1));

      // Check if user has previously logged in
      final userId = await _storage.read(key: StorageKeys.userId);
      if (userId == null) {
        return const Result.failure(
          Failure.biometric(message: 'No stored credentials found'),
        );
      }

      // TODO: Implement actual biometric authentication
      // For now, just return success

      final accessToken = _generateMockToken('access');
      final refreshToken = _generateMockToken('refresh');
      final expiresAt = DateTime.now().add(const Duration(hours: 1));

      await _storage.write(key: StorageKeys.accessToken, value: accessToken);
      await _storage.write(key: StorageKeys.refreshToken, value: refreshToken);

      await _auditLogger.logAuthentication(
        userId: _mockDoctor.id,
        action: 'Biometric login successful',
        success: true,
      );

      return Result.success(
        AuthResponse(
          doctor: _mockDoctor,
          accessToken: accessToken,
          refreshToken: refreshToken,
          expiresAt: expiresAt,
        ),
      );
    } catch (e) {
      return Result.failure(
        Failure.biometric(message: 'Biometric authentication failed'),
      );
    }
  }

  @override
  Future<Result<void>> logout() async {
    try {
      final userId = await _storage.read(key: StorageKeys.userId);

      // Clear tokens
      await _storage.delete(key: StorageKeys.accessToken);
      await _storage.delete(key: StorageKeys.refreshToken);
      await _storage.delete(key: StorageKeys.userId);

      if (userId != null) {
        await _auditLogger.logAuthentication(
          userId: userId,
          action: 'Logout successful',
          success: true,
        );
      }

      return const Result.success(null);
    } catch (e) {
      return Result.failure(
        Failure.unknown(message: 'Logout failed', error: e),
      );
    }
  }

  @override
  Future<Result<AuthResponse>> refreshToken(String refreshToken) async {
    try {
      // Simulate token refresh
      await Future.delayed(const Duration(milliseconds: 500));

      final newAccessToken = _generateMockToken('access');
      final newRefreshToken = _generateMockToken('refresh');
      final expiresAt = DateTime.now().add(const Duration(hours: 1));

      await _storage.write(key: StorageKeys.accessToken, value: newAccessToken);
      await _storage.write(
        key: StorageKeys.refreshToken,
        value: newRefreshToken,
      );

      return Result.success(
        AuthResponse(
          doctor: _mockDoctor,
          accessToken: newAccessToken,
          refreshToken: newRefreshToken,
          expiresAt: expiresAt,
        ),
      );
    } catch (e) {
      return Result.failure(
        Failure.authentication(message: 'Token refresh failed'),
      );
    }
  }

  @override
  Future<Result<Doctor>> getCurrentDoctor() async {
    try {
      final userId = await _storage.read(key: StorageKeys.userId);

      if (userId == null) {
        return const Result.failure(
          Failure.authentication(message: 'Not authenticated'),
        );
      }

      // Return mock doctor
      return Result.success(_mockDoctor);
    } catch (e) {
      return Result.failure(
        Failure.unknown(message: 'Failed to get current doctor', error: e),
      );
    }
  }

  @override
  Future<bool> isAuthenticated() async {
    final token = await _storage.read(key: StorageKeys.accessToken);
    return token != null;
  }

  @override
  Future<String?> getAccessToken() async {
    return await _storage.read(key: StorageKeys.accessToken);
  }

  @override
  Future<String?> getRefreshToken() async {
    return await _storage.read(key: StorageKeys.refreshToken);
  }

  // Helper method to generate mock JWT-like tokens
  String _generateMockToken(String type) {
    final timestamp = DateTime.now().millisecondsSinceEpoch;
    return 'mock_${type}_token_$timestamp';
  }
}
