// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collaboration_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Collaboration)
const collaborationProvider = CollaborationProvider._();

final class CollaborationProvider
    extends $NotifierProvider<Collaboration, CollaborationState> {
  const CollaborationProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'collaborationProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$collaborationHash();

  @$internal
  @override
  Collaboration create() => Collaboration();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CollaborationState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CollaborationState>(value),
    );
  }
}

String _$collaborationHash() => r'902fb6f1ef1117185d0fe38b84cc175552189ea3';

abstract class _$Collaboration extends $Notifier<CollaborationState> {
  CollaborationState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<CollaborationState, CollaborationState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<CollaborationState, CollaborationState>,
              CollaborationState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
