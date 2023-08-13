// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['uid', 'emailVerified'],
  );
  return UserModel(
    uid: json['uid'] as String,
    emailVerified: json['emailVerified'] as bool,
    email: json['email'] as String?,
    displayName: json['displayName'] as String?,
  );
}

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'uid': instance.uid,
      'emailVerified': instance.emailVerified,
      'email': instance.email,
      'displayName': instance.displayName,
    };
