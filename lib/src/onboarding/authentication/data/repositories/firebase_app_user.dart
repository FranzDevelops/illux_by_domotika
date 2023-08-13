import 'package:firebase_auth/firebase_auth.dart';
import 'package:illux_by_domotika/src/onboarding/authentication/domain/user_model.dart';

class FirebaseAppUser implements UserModel {
  FirebaseAppUser(this._user);
  final User _user;

  @override
  UserID get uid => _user.uid;

  @override
  String? get displayName => _user.displayName;

  @override
  String? get email => _user.email;

  @override
  bool get emailVerified => _user.emailVerified;

  // Note: after calling this method, [emailVerified] isn't updated until the
  // next time an ID token is generated for the user.
  // Read this for more info: https://stackoverflow.com/a/63258198/436422
  @override
  Future<void> sendEmailVerification() => _user.sendEmailVerification();

  @override
  Future<bool> isAdmin() async {
    final idTokenResult = await _user.getIdTokenResult();
    final claims = idTokenResult.claims;
    if (claims != null) {
      return claims['admin'] == true;
    }
    return false;
  }

  @override
  Future<void> forceRefreshIdToken() => _user.getIdToken(true);

  @override
  List<Object?> get props => [uid, emailVerified, email, displayName];

  @override
  // TODO: implement stringify
  bool? get stringify => true;

  @override
  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'emailVerified': emailVerified,
      'email': email,
      'displayName': displayName,
    };
  }
}
