// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$authRepositoryHash() => r'd1493a168564057722e42fc09c828a350df807e9';

/// See also [authRepository].
@ProviderFor(authRepository)
final authRepositoryProvider = Provider<AuthRepository>.internal(
  authRepository,
  name: r'authRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$authRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AuthRepositoryRef = ProviderRef<AuthRepository>;
String _$authStateChangesHash() => r'caf9a188b239952d42cf3e50dc5f254fc16a0c1a';

/// See also [authStateChanges].
@ProviderFor(authStateChanges)
final authStateChangesProvider = StreamProvider<UserModel?>.internal(
  authStateChanges,
  name: r'authStateChangesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$authStateChangesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AuthStateChangesRef = StreamProviderRef<UserModel?>;
String _$idTokenChangesHash() => r'c8e8a7adfc73267d0922c4b79ecf50ccf170ab80';

/// See also [idTokenChanges].
@ProviderFor(idTokenChanges)
final idTokenChangesProvider = StreamProvider<UserModel?>.internal(
  idTokenChanges,
  name: r'idTokenChangesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$idTokenChangesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef IdTokenChangesRef = StreamProviderRef<UserModel?>;
String _$isCurrentUserAdminHash() =>
    r'69fab3db094dff0016a615b1e8b1047beabb06c5';

/// See also [isCurrentUserAdmin].
@ProviderFor(isCurrentUserAdmin)
final isCurrentUserAdminProvider = AutoDisposeFutureProvider<bool>.internal(
  isCurrentUserAdmin,
  name: r'isCurrentUserAdminProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$isCurrentUserAdminHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef IsCurrentUserAdminRef = AutoDisposeFutureProviderRef<bool>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
