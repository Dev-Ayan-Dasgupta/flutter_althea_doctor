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
