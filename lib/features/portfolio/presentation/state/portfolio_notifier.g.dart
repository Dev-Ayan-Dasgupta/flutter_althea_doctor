// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'portfolio_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Portfolio)
const portfolioProvider = PortfolioFamily._();

final class PortfolioProvider
    extends $NotifierProvider<Portfolio, PortfolioState> {
  const PortfolioProvider._({
    required PortfolioFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'portfolioProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$portfolioHash();

  @override
  String toString() {
    return r'portfolioProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  Portfolio create() => Portfolio();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PortfolioState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PortfolioState>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is PortfolioProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$portfolioHash() => r'16ccf076924d2f8fb94d056633303fe9f445d562';

final class PortfolioFamily extends $Family
    with
        $ClassFamilyOverride<
          Portfolio,
          PortfolioState,
          PortfolioState,
          PortfolioState,
          String
        > {
  const PortfolioFamily._()
    : super(
        retry: null,
        name: r'portfolioProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  PortfolioProvider call(String doctorId) =>
      PortfolioProvider._(argument: doctorId, from: this);

  @override
  String toString() => r'portfolioProvider';
}

abstract class _$Portfolio extends $Notifier<PortfolioState> {
  late final _$args = ref.$arg as String;
  String get doctorId => _$args;

  PortfolioState build(String doctorId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<PortfolioState, PortfolioState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<PortfolioState, PortfolioState>,
              PortfolioState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
