# Freezed Code Generation

This project uses Freezed for immutable models. After creating any file with `@freezed` annotation, you must run code generation.

## Generate Code

Run this command in the terminal:

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

Or for watch mode (auto-regenerates on file changes):

```bash
flutter pub run build_runner watch --delete-conflicting-outputs
```

## Files Requiring Generation

After adding these files, run code generation:

- `lib/core/network/failures.dart`
- `lib/shared/models/fhir/patient.dart`
- `lib/shared/models/fhir/observation.dart`
- `lib/shared/models/fhir/medication_request.dart`

## Expected Generated Files

- `failures.freezed.dart`
- `patient.freezed.dart`
- `patient.g.dart`
- `observation.freezed.dart`
- `observation.g.dart`
- `medication_request.freezed.dart`
- `medication_request.g.dart`

## Riverpod Code Generation

After creating files with `@riverpod` or `@Riverpod()` annotations, run:

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

## Files Requiring Code Generation (Phase 1)

### Freezed Generation:

- `lib/features/auth/domain/entities/doctor.dart`
- `lib/features/auth/domain/entities/auth_state.dart`
- `lib/features/auth/domain/entities/login_credentials.dart`
- `lib/shared/models/fhir/practitioner.dart`

### Riverpod Generation:

- `lib/features/auth/presentation/state/auth_notifier.dart`
- `lib/features/auth/providers/auth_providers.dart`

## Run Code Generation:

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

## Files Requiring Code Generation (Phase 3)

### Freezed Generation:

- `lib/features/digital_twin/domain/entities/vitals_timeline.dart`

### Riverpod Generation:

- `lib/features/digital_twin/presentation/state/digital_twin_notifier.dart`

## Run Code Generation:

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

## Files Requiring Code Generation (Phase 4)

### Freezed Generation:

- `lib/shared/models/clinical/clinical_insight.dart`

### Riverpod Generation:

- `lib/features/clinical_correlation/presentation/state/correlation_notifier.dart`

## Run Code Generation:

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

## Files Requiring Code Generation (Phase 5)

### Freezed Generation:

- `lib/features/order_execution/domain/entities/clinical_order.dart`

### Riverpod Generation:

- `lib/features/order_execution/presentation/state/order_notifier.dart`

## Run Code Generation:

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

## Files Requiring Code Generation (Phase 6)

### Freezed Generation:

- `lib/features/telepresence/domain/entities/consultation.dart`

### Riverpod Generation:

- `lib/features/telepresence/presentation/state/telepresence_notifier.dart`

## Run Code Generation:

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

## Files Requiring Code Generation (Phase 7)

### Freezed Generation:

- `lib/features/ambient_scribe/domain/entities/clinical_note.dart`

### Riverpod Generation:

- `lib/features/ambient_scribe/presentation/state/scribe_notifier.dart`

## Run Code Generation:

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

## Files Requiring Code Generation (Phase 8)

### Freezed Generation:

- `lib/features/collaboration/domain/entities/care_team.dart`
- `lib/features/wallet/domain/entities/wallet.dart`

### Riverpod Generation:

- `lib/features/collaboration/presentation/state/collaboration_notifier.dart`
- `lib/features/wallet/presentation/state/wallet_notifier.dart`

## Run Code Generation:

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

## Files Requiring Code Generation (Phase 9)

### Freezed Generation:

- `lib/features/portfolio/domain/entities/portfolio_summary.dart`
- `lib/features/scheduling/domain/entities/schedule.dart`

### Riverpod Generation:

- `lib/features/portfolio/presentation/state/portfolio_notifier.dart`
- `lib/features/scheduling/presentation/state/scheduling_notifier.dart`

## Run Code Generation:

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```
