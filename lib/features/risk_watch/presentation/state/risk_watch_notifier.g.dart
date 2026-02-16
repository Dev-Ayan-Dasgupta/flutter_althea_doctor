// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'risk_watch_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Risk watch notifier

@ProviderFor(RiskWatch)
const riskWatchProvider = RiskWatchProvider._();

/// Risk watch notifier
final class RiskWatchProvider
    extends $NotifierProvider<RiskWatch, RiskWatchState> {
  /// Risk watch notifier
  const RiskWatchProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'riskWatchProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$riskWatchHash();

  @$internal
  @override
  RiskWatch create() => RiskWatch();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RiskWatchState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RiskWatchState>(value),
    );
  }
}

String _$riskWatchHash() => r'8de316000b7a57c3a2823951360d6ac696cdd10c';

/// Risk watch notifier

abstract class _$RiskWatch extends $Notifier<RiskWatchState> {
  RiskWatchState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<RiskWatchState, RiskWatchState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<RiskWatchState, RiskWatchState>,
              RiskWatchState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
