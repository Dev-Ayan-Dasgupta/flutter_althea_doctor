import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_credentials.freezed.dart';

/// Login credentials
@freezed
abstract class LoginCredentials with _$LoginCredentials {
  const factory LoginCredentials({
    required String email,
    required String password,
    @Default(false) bool rememberMe,
  }) = _LoginCredentials;

  const LoginCredentials._();

  /// Validate email
  String? validateEmail() {
    if (email.isEmpty) return 'Email is required';

    final emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );

    if (!emailRegex.hasMatch(email)) {
      return 'Invalid email format';
    }

    return null;
  }

  /// Validate password
  String? validatePassword() {
    if (password.isEmpty) return 'Password is required';
    if (password.length < 8) return 'Password must be at least 8 characters';
    return null;
  }

  /// Check if credentials are valid
  bool get isValid {
    return validateEmail() == null && validatePassword() == null;
  }
}
