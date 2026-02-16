import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

/// Base failure class for error handling
@freezed
abstract class Failure with _$Failure {
  /// Network connection failure
  const factory Failure.network({
    @Default('Network connection failed') String message,
    int? statusCode,
    String? endpoint,
  }) = NetworkFailure;

  /// Server error failure (5xx)
  const factory Failure.server({
    @Default('Server error occurred') String message,
    int? statusCode,
    String? endpoint,
  }) = ServerFailure;

  /// Client error failure (4xx)
  const factory Failure.client({
    @Default('Client error occurred') String message,
    required int statusCode,
    String? endpoint,
  }) = ClientFailure;

  /// Authentication failure (401, 403)
  const factory Failure.authentication({
    @Default('Authentication failed') String message,
    int? statusCode,
  }) = AuthenticationFailure;

  /// Authorization failure (403)
  const factory Failure.authorization({
    @Default('Access denied') String message,
  }) = AuthorizationFailure;

  /// Not found failure (404)
  const factory Failure.notFound({
    @Default('Resource not found') String message,
    String? resource,
  }) = NotFoundFailure;

  /// Validation failure (400)
  const factory Failure.validation({
    @Default('Validation failed') String message,
    Map<String, List<String>>? errors,
  }) = ValidationFailure;

  /// Cache failure
  const factory Failure.cache({
    @Default('Cache operation failed') String message,
  }) = CacheFailure;

  /// Timeout failure
  const factory Failure.timeout({
    @Default('Request timeout') String message,
    Duration? duration,
  }) = TimeoutFailure;

  /// Parsing failure (JSON decode error)
  const factory Failure.parsing({
    @Default('Data parsing failed') String message,
    String? field,
  }) = ParsingFailure;

  /// FHIR validation failure (for healthcare data)
  const factory Failure.fhirValidation({
    @Default('FHIR validation failed') String message,
    String? resource,
    List<String>? errors,
  }) = FhirValidationFailure;

  /// HIPAA compliance failure
  const factory Failure.compliance({
    @Default('Compliance violation detected') String message,
    String? violationType,
  }) = ComplianceFailure;

  /// Encryption/Decryption failure
  const factory Failure.encryption({
    @Default('Encryption operation failed') String message,
  }) = EncryptionFailure;

  /// Biometric authentication failure
  const factory Failure.biometric({
    @Default('Biometric authentication failed') String message,
  }) = BiometricFailure;

  /// Unknown/Unexpected failure
  const factory Failure.unknown({
    @Default('An unexpected error occurred') String message,
    Object? error,
  }) = UnknownFailure;

  /// Cancel failure (user cancelled operation)
  const factory Failure.cancelled({
    @Default('Operation cancelled') String message,
  }) = CancelledFailure;

  /// Storage failure (local database error)
  const factory Failure.storage({
    @Default('Storage operation failed') String message,
  }) = StorageFailure;

  /// GraphQL failure
  const factory Failure.graphql({
    @Default('GraphQL operation failed') String message,
    List<String>? errors,
    String? query,
  }) = GraphqlFailure;
}

/// Extension for user-friendly error messages
extension FailureExtension on Failure {
  /// Get user-friendly message (HIPAA compliant - no sensitive data)
  String get userMessage => when(
    network: (message, statusCode, endpoint) =>
        'Unable to connect. Please check your internet connection.',
    server: (message, statusCode, endpoint) =>
        'Server is temporarily unavailable. Please try again later.',
    client: (message, statusCode, endpoint) => message,
    authentication: (message, statusCode) =>
        'Your session has expired. Please login again.',
    authorization: (message) =>
        'You do not have permission to access this resource.',
    notFound: (message, resource) =>
        'The requested information could not be found.',
    validation: (message, errors) => message,
    cache: (message) => 'Unable to load cached data. Please refresh.',
    timeout: (message, duration) =>
        'Request is taking too long. Please try again.',
    parsing: (message, field) =>
        'Unable to process the data. Please contact support.',
    fhirValidation: (message, resource, errors) => message,
    compliance: (message, violationType) =>
        'Security policy violation. Operation blocked.',
    encryption: (message) => 'Unable to secure data. Please try again.',
    biometric: (message) => 'Biometric verification failed. Please try again.',
    unknown: (message, error) => 'Something went wrong. Please try again.',
    cancelled: (message) => 'Operation cancelled.',
    storage: (message) => 'Unable to save data locally. Please check storage.',
    graphql: (message, errors, query) =>
        'Unable to process request. Please try again.',
  );

  /// Check if failure is retryable
  bool get isRetryable => when(
    network: (_, _, _) => true,
    server: (_, _, _) => true,
    client: (_, _, _) => false,
    authentication: (_, _) => false,
    authorization: (_) => false,
    notFound: (_, _) => false,
    validation: (_, _) => false,
    cache: (_) => true,
    timeout: (_, _) => true,
    parsing: (_, _) => false,
    fhirValidation: (_, _, _) => false,
    compliance: (_, _) => false,
    encryption: (_) => false,
    biometric: (_) => true,
    unknown: (_, _) => false,
    cancelled: (_) => false,
    storage: (_) => true,
    graphql: (_, _, _) => true,
  );

  /// Check if failure requires authentication
  bool get requiresAuth => when(
    network: (_, _, _) => false,
    server: (_, _, _) => false,
    client: (_, _, _) => false,
    authentication: (_, _) => true,
    authorization: (_) => true,
    notFound: (_, _) => false,
    validation: (_, _) => false,
    cache: (_) => false,
    timeout: (_, _) => false,
    parsing: (_, _) => false,
    fhirValidation: (_, _, _) => false,
    compliance: (_, _) => false,
    encryption: (_) => false,
    biometric: (_) => false,
    unknown: (_, _) => false,
    cancelled: (_) => false,
    storage: (_) => false,
    graphql: (_, _, _) => false,
  );

  /// Log level for failure (for audit logging)
  String get logLevel => when(
    network: (_, _, _) => 'WARNING',
    server: (_, _, _) => 'ERROR',
    client: (_, _, _) => 'WARNING',
    authentication: (_, _) => 'SECURITY',
    authorization: (_) => 'SECURITY',
    notFound: (_, _) => 'INFO',
    validation: (_, _) => 'WARNING',
    cache: (_) => 'WARNING',
    timeout: (_, _) => 'WARNING',
    parsing: (_, _) => 'ERROR',
    fhirValidation: (_, _, _) => 'ERROR',
    compliance: (_, _) => 'CRITICAL',
    encryption: (_) => 'CRITICAL',
    biometric: (_) => 'SECURITY',
    unknown: (_, _) => 'ERROR',
    cancelled: (_) => 'INFO',
    storage: (_) => 'ERROR',
    graphql: (_, _, _) => 'ERROR',
  );
}
