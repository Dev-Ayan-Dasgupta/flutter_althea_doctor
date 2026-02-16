// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'correlation_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Clinical correlation notifier

@ProviderFor(ClinicalCorrelation)
const clinicalCorrelationProvider = ClinicalCorrelationFamily._();

/// Clinical correlation notifier
final class ClinicalCorrelationProvider
    extends $NotifierProvider<ClinicalCorrelation, CorrelationState> {
  /// Clinical correlation notifier
  const ClinicalCorrelationProvider._({
    required ClinicalCorrelationFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'clinicalCorrelationProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$clinicalCorrelationHash();

  @override
  String toString() {
    return r'clinicalCorrelationProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ClinicalCorrelation create() => ClinicalCorrelation();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CorrelationState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CorrelationState>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is ClinicalCorrelationProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$clinicalCorrelationHash() =>
    r'eeaaa33d9166304ed771c80829661bdd92b15372';

/// Clinical correlation notifier

final class ClinicalCorrelationFamily extends $Family
    with
        $ClassFamilyOverride<
          ClinicalCorrelation,
          CorrelationState,
          CorrelationState,
          CorrelationState,
          String
        > {
  const ClinicalCorrelationFamily._()
    : super(
        retry: null,
        name: r'clinicalCorrelationProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// Clinical correlation notifier

  ClinicalCorrelationProvider call(String patientId) =>
      ClinicalCorrelationProvider._(argument: patientId, from: this);

  @override
  String toString() => r'clinicalCorrelationProvider';
}

/// Clinical correlation notifier

abstract class _$ClinicalCorrelation extends $Notifier<CorrelationState> {
  late final _$args = ref.$arg as String;
  String get patientId => _$args;

  CorrelationState build(String patientId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<CorrelationState, CorrelationState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<CorrelationState, CorrelationState>,
              CorrelationState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
