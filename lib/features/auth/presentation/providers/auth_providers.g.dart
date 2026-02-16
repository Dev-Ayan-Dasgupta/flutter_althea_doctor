// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Secure storage provider

@ProviderFor(secureStorage)
const secureStorageProvider = SecureStorageProvider._();

/// Secure storage provider

final class SecureStorageProvider
    extends
        $FunctionalProvider<
          FlutterSecureStorage,
          FlutterSecureStorage,
          FlutterSecureStorage
        >
    with $Provider<FlutterSecureStorage> {
  /// Secure storage provider
  const SecureStorageProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'secureStorageProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$secureStorageHash();

  @$internal
  @override
  $ProviderElement<FlutterSecureStorage> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  FlutterSecureStorage create(Ref ref) {
    return secureStorage(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FlutterSecureStorage value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FlutterSecureStorage>(value),
    );
  }
}

String _$secureStorageHash() => r'a4f75721472cf77465bf47f759c90de5ca30856e';

/// Audit logger provider

@ProviderFor(auditLogger)
const auditLoggerProvider = AuditLoggerProvider._();

/// Audit logger provider

final class AuditLoggerProvider
    extends $FunctionalProvider<AuditLogger, AuditLogger, AuditLogger>
    with $Provider<AuditLogger> {
  /// Audit logger provider
  const AuditLoggerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'auditLoggerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$auditLoggerHash();

  @$internal
  @override
  $ProviderElement<AuditLogger> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AuditLogger create(Ref ref) {
    return auditLogger(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AuditLogger value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AuditLogger>(value),
    );
  }
}

String _$auditLoggerHash() => r'885feb4b5999ca4e23c27fc7be80ab038b61a00f';

/// Auth repository provider

@ProviderFor(authRepository)
const authRepositoryProvider = AuthRepositoryProvider._();

/// Auth repository provider

final class AuthRepositoryProvider
    extends $FunctionalProvider<AuthRepository, AuthRepository, AuthRepository>
    with $Provider<AuthRepository> {
  /// Auth repository provider
  const AuthRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authRepositoryHash();

  @$internal
  @override
  $ProviderElement<AuthRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AuthRepository create(Ref ref) {
    return authRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AuthRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AuthRepository>(value),
    );
  }
}

String _$authRepositoryHash() => r'2fe035c5600ff11e3d8ddd82e856db3e8849eae0';

/// Current doctor provider (derived from auth state)

@ProviderFor(currentDoctor)
const currentDoctorProvider = CurrentDoctorProvider._();

/// Current doctor provider (derived from auth state)

final class CurrentDoctorProvider
    extends $FunctionalProvider<Doctor?, Doctor?, Doctor?>
    with $Provider<Doctor?> {
  /// Current doctor provider (derived from auth state)
  const CurrentDoctorProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currentDoctorProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currentDoctorHash();

  @$internal
  @override
  $ProviderElement<Doctor?> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Doctor? create(Ref ref) {
    return currentDoctor(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Doctor? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Doctor?>(value),
    );
  }
}

String _$currentDoctorHash() => r'f8b0d03d8c18182429bd86c112a43faa87487671';

/// Is authenticated provider (derived from auth state)

@ProviderFor(isAuthenticated)
const isAuthenticatedProvider = IsAuthenticatedProvider._();

/// Is authenticated provider (derived from auth state)

final class IsAuthenticatedProvider
    extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  /// Is authenticated provider (derived from auth state)
  const IsAuthenticatedProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'isAuthenticatedProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$isAuthenticatedHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return isAuthenticated(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$isAuthenticatedHash() => r'b1b6e1e10e8aa4a9ae45828af9370e878a803e6f';
