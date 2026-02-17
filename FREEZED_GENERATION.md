# Code Generation Reference

## Files Requiring Freezed Generation

### Shared Models

- `lib/shared/models/fhir/patient.dart`
- `lib/shared/models/clinical/clinical_stability_index.dart`
- `lib/shared/models/clinical/vitals.dart`

### Feature Models

- `lib/features/risk_watch/domain/entities/patient_summary.dart`
- `lib/features/digital_twin/domain/entities/vitals_timeline.dart`
- `lib/features/clinical_correlation/domain/entities/clinical_insight.dart`
- `lib/features/order_execution/domain/entities/prescription.dart`
- `lib/features/telepresence/domain/entities/consultation.dart`
- `lib/features/ambient_scribe/domain/entities/clinical_note.dart`
- `lib/features/collaboration/domain/entities/care_team.dart`
- `lib/features/wallet/domain/entities/wallet.dart`
- `lib/features/portfolio/domain/entities/portfolio_summary.dart`
- `lib/features/scheduling/domain/entities/schedule.dart`
- `lib/features/notifications/domain/entities/app_notification.dart`
- `lib/features/profile/domain/entities/doctor_profile.dart`

## Files Requiring Riverpod Generation

### Core Providers

- `lib/core/providers/theme_provider.dart`

### Feature Notifiers

- `lib/features/risk_watch/presentation/state/risk_watch_notifier.dart`
- `lib/features/digital_twin/presentation/state/digital_twin_notifier.dart`
- `lib/features/clinical_correlation/presentation/state/correlation_notifier.dart`
- `lib/features/order_execution/presentation/state/prescription_notifier.dart`
- `lib/features/telepresence/presentation/state/telepresence_notifier.dart`
- `lib/features/ambient_scribe/presentation/state/scribe_notifier.dart`
- `lib/features/collaboration/presentation/state/collaboration_notifier.dart`
- `lib/features/wallet/presentation/state/wallet_notifier.dart`
- `lib/features/portfolio/presentation/state/portfolio_notifier.dart`
- `lib/features/scheduling/presentation/state/scheduling_notifier.dart`
- `lib/features/notifications/presentation/state/notification_notifier.dart`
- `lib/features/profile/presentation/state/profile_notifier.dart`

## Run Code Generation

```bash
# Generate once
flutter pub run build_runner build --delete-conflicting-outputs

# Watch mode (development)
flutter pub run build_runner watch --delete-conflicting-outputs

# Clean and rebuild
flutter pub run build_runner clean
flutter pub run build_runner build --delete-conflicting-outputs
```
