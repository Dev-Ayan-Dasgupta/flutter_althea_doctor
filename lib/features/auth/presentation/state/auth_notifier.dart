import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/network/export.dart';
import '../../domain/entities/auth_state.dart';
import '../../domain/entities/login_credentials.dart';
import '../../domain/repositories/auth_repository.dart';
import '../providers/auth_providers.dart';

part 'auth_notifier.g.dart';

/// Authentication state notifier
@riverpod
class Auth extends _$Auth {
  late AuthRepository _authRepository;

  @override
  AuthState build() {
    _authRepository = ref.watch(authRepositoryProvider);
    _checkAuthStatus();
    return const AuthState.initial();
  }

  /// Check if user is already authenticated
  Future<void> _checkAuthStatus() async {
    final isAuth = await _authRepository.isAuthenticated();

    if (isAuth) {
      final result = await _authRepository.getCurrentDoctor();

      result.fold(
        onSuccess: (doctor) async {
          final accessToken = await _authRepository.getAccessToken();
          final refreshToken = await _authRepository.getRefreshToken();

          if (accessToken != null && refreshToken != null) {
            state = AuthState.authenticated(
              doctor: doctor,
              accessToken: accessToken,
              refreshToken: refreshToken,
            );
          } else {
            state = const AuthState.unauthenticated();
          }
        },
        onFailure: (_) {
          state = const AuthState.unauthenticated();
        },
      );
    } else {
      state = const AuthState.unauthenticated();
    }
  }

  /// Login with email and password
  Future<void> login(LoginCredentials credentials) async {
    state = const AuthState.loading();

    final result = await _authRepository.login(credentials);

    result.fold(
      onSuccess: (response) {
        state = AuthState.authenticated(
          doctor: response.doctor,
          accessToken: response.accessToken,
          refreshToken: response.refreshToken,
        );
      },
      onFailure: (failure) {
        state = AuthState.error(failure.userMessage);
      },
    );
  }

  /// Login with biometric
  Future<void> loginWithBiometric() async {
    state = const AuthState.loading();

    final result = await _authRepository.loginWithBiometric();

    result.fold(
      onSuccess: (response) {
        state = AuthState.authenticated(
          doctor: response.doctor,
          accessToken: response.accessToken,
          refreshToken: response.refreshToken,
        );
      },
      onFailure: (failure) {
        state = AuthState.error(failure.userMessage);
      },
    );
  }

  /// Logout
  Future<void> logout() async {
    final result = await _authRepository.logout();

    result.fold(
      onSuccess: (_) {
        state = const AuthState.unauthenticated();
      },
      onFailure: (failure) {
        state = AuthState.error(failure.userMessage);
      },
    );
  }

  /// Refresh authentication
  Future<void> refresh() async {
    await _checkAuthStatus();
  }
}
