import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../../../../core/services/audit_logger.dart';
import '../../data/repositories/auth_repository_impl.dart';
import '../../domain/entities/auth_state.dart';
import '../../domain/repositories/auth_repository.dart';
import '../../domain/entities/doctor.dart';
import '../state/auth_notifier.dart';

part 'auth_providers.g.dart';

/// Secure storage provider
@Riverpod(keepAlive: true)
FlutterSecureStorage secureStorage(Ref ref) {
  return const FlutterSecureStorage();
}

/// Audit logger provider
@Riverpod(keepAlive: true)
AuditLogger auditLogger(Ref ref) {
  return AuditLogger();
}

/// Auth repository provider
@Riverpod(keepAlive: true)
AuthRepository authRepository(Ref ref) {
  return AuthRepositoryImpl(
    storage: ref.watch(secureStorageProvider),
    auditLogger: ref.watch(auditLoggerProvider),
  );
}

/// Current doctor provider (derived from auth state)
@riverpod
Doctor? currentDoctor(Ref ref) {
  final authState = ref.watch(authProvider);

  return authState.maybeWhen(
    authenticated: (doctor, _, _) => doctor,
    orElse: () => null,
  );
}

/// Is authenticated provider (derived from auth state)
@riverpod
bool isAuthenticated(Ref ref) {
  final authState = ref.watch(authProvider);

  return authState.maybeWhen(
    authenticated: (_, _, _) => true,
    orElse: () => false,
  );
}
