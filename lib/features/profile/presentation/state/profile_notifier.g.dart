// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Profile)
const profileProvider = ProfileFamily._();

final class ProfileProvider extends $NotifierProvider<Profile, ProfileState> {
  const ProfileProvider._({
    required ProfileFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'profileProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$profileHash();

  @override
  String toString() {
    return r'profileProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  Profile create() => Profile();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProfileState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProfileState>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is ProfileProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$profileHash() => r'32f4274ad9f778c3d299c5b72d7943ef4a2e5215';

final class ProfileFamily extends $Family
    with
        $ClassFamilyOverride<
          Profile,
          ProfileState,
          ProfileState,
          ProfileState,
          String
        > {
  const ProfileFamily._()
    : super(
        retry: null,
        name: r'profileProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ProfileProvider call(String doctorId) =>
      ProfileProvider._(argument: doctorId, from: this);

  @override
  String toString() => r'profileProvider';
}

abstract class _$Profile extends $Notifier<ProfileState> {
  late final _$args = ref.$arg as String;
  String get doctorId => _$args;

  ProfileState build(String doctorId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<ProfileState, ProfileState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ProfileState, ProfileState>,
              ProfileState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
