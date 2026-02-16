// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scribe_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Ambient scribe notifier

@ProviderFor(AmbientScribe)
const ambientScribeProvider = AmbientScribeProvider._();

/// Ambient scribe notifier
final class AmbientScribeProvider
    extends $NotifierProvider<AmbientScribe, AmbientScribeState> {
  /// Ambient scribe notifier
  const AmbientScribeProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'ambientScribeProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$ambientScribeHash();

  @$internal
  @override
  AmbientScribe create() => AmbientScribe();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AmbientScribeState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AmbientScribeState>(value),
    );
  }
}

String _$ambientScribeHash() => r'c0f4f6f36b05c820cd4e4c77feab599fb87f4bd3';

/// Ambient scribe notifier

abstract class _$AmbientScribe extends $Notifier<AmbientScribeState> {
  AmbientScribeState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AmbientScribeState, AmbientScribeState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AmbientScribeState, AmbientScribeState>,
              AmbientScribeState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
