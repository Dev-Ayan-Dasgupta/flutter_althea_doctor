// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'telepresence_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Telepresence notifier

@ProviderFor(Telepresence)
const telepresenceProvider = TelepresenceFamily._();

/// Telepresence notifier
final class TelepresenceProvider
    extends $NotifierProvider<Telepresence, TelepresenceState> {
  /// Telepresence notifier
  const TelepresenceProvider._({
    required TelepresenceFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'telepresenceProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$telepresenceHash();

  @override
  String toString() {
    return r'telepresenceProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  Telepresence create() => Telepresence();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TelepresenceState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TelepresenceState>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is TelepresenceProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$telepresenceHash() => r'2b270351a143c9e524c2ec48bd59d101309a94e6';

/// Telepresence notifier

final class TelepresenceFamily extends $Family
    with
        $ClassFamilyOverride<
          Telepresence,
          TelepresenceState,
          TelepresenceState,
          TelepresenceState,
          String
        > {
  const TelepresenceFamily._()
    : super(
        retry: null,
        name: r'telepresenceProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// Telepresence notifier

  TelepresenceProvider call(String doctorId) =>
      TelepresenceProvider._(argument: doctorId, from: this);

  @override
  String toString() => r'telepresenceProvider';
}

/// Telepresence notifier

abstract class _$Telepresence extends $Notifier<TelepresenceState> {
  late final _$args = ref.$arg as String;
  String get doctorId => _$args;

  TelepresenceState build(String doctorId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<TelepresenceState, TelepresenceState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<TelepresenceState, TelepresenceState>,
              TelepresenceState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
