// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InitialUserState _$_$_InitialUserStateFromJson(Map<String, dynamic> json) {
  return _$_InitialUserState(
    payload: json['payload'] == null
        ? null
        : UserStatePayload.fromJson(json['payload'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_InitialUserStateToJson(
        _$_InitialUserState instance) =>
    <String, dynamic>{
      'payload': instance.payload?.toJson(),
    };

_$_LoadingUserState _$_$_LoadingUserStateFromJson(Map<String, dynamic> json) {
  return _$_LoadingUserState(
    payload: json['payload'] == null
        ? null
        : UserStatePayload.fromJson(json['payload'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_LoadingUserStateToJson(
        _$_LoadingUserState instance) =>
    <String, dynamic>{
      'payload': instance.payload?.toJson(),
    };

_$_LoadedUserState _$_$_LoadedUserStateFromJson(Map<String, dynamic> json) {
  return _$_LoadedUserState(
    payload: json['payload'] == null
        ? null
        : UserStatePayload.fromJson(json['payload'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_LoadedUserStateToJson(_$_LoadedUserState instance) =>
    <String, dynamic>{
      'payload': instance.payload?.toJson(),
    };

_$_ErrorUserState _$_$_ErrorUserStateFromJson(Map<String, dynamic> json) {
  return _$_ErrorUserState(
    payload: json['payload'] == null
        ? null
        : UserStatePayload.fromJson(json['payload'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_ErrorUserStateToJson(_$_ErrorUserState instance) =>
    <String, dynamic>{
      'payload': instance.payload?.toJson(),
    };

_$_UserStatePayload _$_$_UserStatePayloadFromJson(Map<String, dynamic> json) {
  return _$_UserStatePayload(
    user: json['user'] == null
        ? null
        : UserModel.fromJson(json['user'] as Map<String, dynamic>),
    error: json['error'] as String,
  );
}

Map<String, dynamic> _$_$_UserStatePayloadToJson(
        _$_UserStatePayload instance) =>
    <String, dynamic>{
      'user': instance.user?.toJson(),
      'error': instance.error,
    };
