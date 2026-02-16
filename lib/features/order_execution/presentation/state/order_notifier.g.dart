// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Order execution notifier

@ProviderFor(OrderExecution)
const orderExecutionProvider = OrderExecutionFamily._();

/// Order execution notifier
final class OrderExecutionProvider
    extends $NotifierProvider<OrderExecution, OrderExecutionState> {
  /// Order execution notifier
  const OrderExecutionProvider._({
    required OrderExecutionFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'orderExecutionProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$orderExecutionHash();

  @override
  String toString() {
    return r'orderExecutionProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  OrderExecution create() => OrderExecution();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(OrderExecutionState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<OrderExecutionState>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is OrderExecutionProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$orderExecutionHash() => r'0d9bd59df1c44cbbe85ad33b1fd364807b20177e';

/// Order execution notifier

final class OrderExecutionFamily extends $Family
    with
        $ClassFamilyOverride<
          OrderExecution,
          OrderExecutionState,
          OrderExecutionState,
          OrderExecutionState,
          String
        > {
  const OrderExecutionFamily._()
    : super(
        retry: null,
        name: r'orderExecutionProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// Order execution notifier

  OrderExecutionProvider call(String patientId) =>
      OrderExecutionProvider._(argument: patientId, from: this);

  @override
  String toString() => r'orderExecutionProvider';
}

/// Order execution notifier

abstract class _$OrderExecution extends $Notifier<OrderExecutionState> {
  late final _$args = ref.$arg as String;
  String get patientId => _$args;

  OrderExecutionState build(String patientId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<OrderExecutionState, OrderExecutionState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<OrderExecutionState, OrderExecutionState>,
              OrderExecutionState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
