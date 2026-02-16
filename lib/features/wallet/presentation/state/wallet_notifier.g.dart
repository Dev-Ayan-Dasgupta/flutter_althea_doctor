// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Wallet)
const walletProvider = WalletFamily._();

final class WalletProvider extends $NotifierProvider<Wallet, WalletState> {
  const WalletProvider._({
    required WalletFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'walletProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$walletHash();

  @override
  String toString() {
    return r'walletProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  Wallet create() => Wallet();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(WalletState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<WalletState>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is WalletProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$walletHash() => r'68baa7032a973fdd019c9065c2b76e3858668509';

final class WalletFamily extends $Family
    with
        $ClassFamilyOverride<
          Wallet,
          WalletState,
          WalletState,
          WalletState,
          String
        > {
  const WalletFamily._()
    : super(
        retry: null,
        name: r'walletProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  WalletProvider call(String doctorId) =>
      WalletProvider._(argument: doctorId, from: this);

  @override
  String toString() => r'walletProvider';
}

abstract class _$Wallet extends $Notifier<WalletState> {
  late final _$args = ref.$arg as String;
  String get doctorId => _$args;

  WalletState build(String doctorId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<WalletState, WalletState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<WalletState, WalletState>,
              WalletState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
