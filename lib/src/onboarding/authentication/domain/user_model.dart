import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

typedef UserID = String;

@JsonSerializable()
class UserModel extends Equatable {
  const UserModel({
    required this.uid,
    required this.emailVerified,
    this.email,
    this.displayName,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  @JsonKey(required: true)
  final String uid;

  @JsonKey(required: true)
  final bool emailVerified;

  final String? email;
  final String? displayName;

  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  @override
  List<Object?> get props => [uid, emailVerified, email, displayName];

  Future<void> sendEmailVerification() async {
    throw UnimplementedError('sendEmailVerification must be implemented');
  }

  Future<bool> isAdmin() {
    throw UnimplementedError('isAdmin must be implemented');
  }

  Future<void> forceRefreshIdToken() async {
    throw UnimplementedError('forceRefreshIdToken must be implemented');
  }
}
