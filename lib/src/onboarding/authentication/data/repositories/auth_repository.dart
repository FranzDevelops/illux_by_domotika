import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:illux_by_domotika/src/onboarding/authentication/data/repositories/firebase_app_user.dart';
import 'package:illux_by_domotika/src/onboarding/authentication/domain/user_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_repository.g.dart';

class AuthRepository {
  AuthRepository(this._auth);
  final FirebaseAuth _auth;

  Future<void> signInWithEmailAndPassword(String email, String password) {
    return _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<void> createUserWithEmailAndPassword(String email, String password) {
    return _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<void> signOut() {
    return _auth.signOut();
  }

  Stream<UserModel?> authStateChanges() {
    // A value of type 'Stream<User?>' can't be returned from the method 'authStateChanges' because it has a return type of 'Stream<AppUser?>'
    return _auth.authStateChanges().map(_convertUser);
  }

  /// Notifies about changes to the user's sign-in state (such as sign-in or
  /// sign-out) and also token refresh events.
  Stream<UserModel?> idTokenChanges() {
    return _auth.idTokenChanges().map(_convertUser);
  }

  // A value of type 'User?' can't be returned from the function 'currentUser' because it has a return type of 'AppUser?'
  UserModel? get currentUser => _convertUser(_auth.currentUser);

  UserModel? _convertUser(User? user) =>
      user != null ? FirebaseAppUser(user) : null;
}

@Riverpod(keepAlive: true)
AuthRepository authRepository(AuthRepositoryRef ref) {
  return AuthRepository(FirebaseAuth.instance);
}

// * Using keepAlive since other providers need it to be an
// * [AlwaysAliveProviderListenable]
@Riverpod(keepAlive: true)
Stream<UserModel?> authStateChanges(AuthStateChangesRef ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return authRepository.authStateChanges();
}

@Riverpod(keepAlive: true)
Stream<UserModel?> idTokenChanges(IdTokenChangesRef ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return authRepository.idTokenChanges();
}

@riverpod
FutureOr<bool> isCurrentUserAdmin(IsCurrentUserAdminRef ref) {
  final user = ref.watch(idTokenChangesProvider).value;
  if (user != null) {
    return user.isAdmin();
  } else {
    return false;
  }
}
