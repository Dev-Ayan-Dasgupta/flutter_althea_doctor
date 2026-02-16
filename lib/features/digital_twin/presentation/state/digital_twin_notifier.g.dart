// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'digital_twin_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Digital twin notifier

@ProviderFor(DigitalTwin)
const digitalTwinProvider = DigitalTwinFamily._();

/// Digital twin notifier
final class DigitalTwinProvider
    extends $NotifierProvider<DigitalTwin, DigitalTwinState> {
  /// Digital twin notifier
  const DigitalTwinProvider._({
    required DigitalTwinFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'digitalTwinProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$digitalTwinHash();

  @override
  String toString() {
    return r'digitalTwinProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  DigitalTwin create() => DigitalTwin();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DigitalTwinState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DigitalTwinState>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is DigitalTwinProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$digitalTwinHash() => r'015ad885ce5ade4598fc870f6f84a85df49508e4';

/// Digital twin notifier

final class DigitalTwinFamily extends $Family
    with
        $ClassFamilyOverride<
          DigitalTwin,
          DigitalTwinState,
          DigitalTwinState,
          DigitalTwinState,
          String
        > {
  const DigitalTwinFamily._()
    : super(
        retry: null,
        name: r'digitalTwinProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// Digital twin notifier

  DigitalTwinProvider call(String patientId) =>
      DigitalTwinProvider._(argument: patientId, from: this);

  @override
  String toString() => r'digitalTwinProvider';
}

/// Digital twin notifier

abstract class _$DigitalTwin extends $Notifier<DigitalTwinState> {
  late final _$args = ref.$arg as String;
  String get patientId => _$args;

  DigitalTwinState build(String patientId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<DigitalTwinState, DigitalTwinState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<DigitalTwinState, DigitalTwinState>,
              DigitalTwinState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
