// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduling_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Scheduling)
const schedulingProvider = SchedulingFamily._();

final class SchedulingProvider
    extends $NotifierProvider<Scheduling, SchedulingState> {
  const SchedulingProvider._({
    required SchedulingFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'schedulingProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$schedulingHash();

  @override
  String toString() {
    return r'schedulingProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  Scheduling create() => Scheduling();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SchedulingState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SchedulingState>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is SchedulingProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$schedulingHash() => r'13199e39bc6cf2051417b2ff6da0aead680ccb6c';

final class SchedulingFamily extends $Family
    with
        $ClassFamilyOverride<
          Scheduling,
          SchedulingState,
          SchedulingState,
          SchedulingState,
          String
        > {
  const SchedulingFamily._()
    : super(
        retry: null,
        name: r'schedulingProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  SchedulingProvider call(String doctorId) =>
      SchedulingProvider._(argument: doctorId, from: this);

  @override
  String toString() => r'schedulingProvider';
}

abstract class _$Scheduling extends $Notifier<SchedulingState> {
  late final _$args = ref.$arg as String;
  String get doctorId => _$args;

  SchedulingState build(String doctorId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<SchedulingState, SchedulingState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<SchedulingState, SchedulingState>,
              SchedulingState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
