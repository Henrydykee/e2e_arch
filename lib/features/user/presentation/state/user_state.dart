part of 'user_cubit.dart';

@freezed
abstract class UserState with _$UserState {
  const factory UserState.initial({@required UserStatePayload payload}) = _InitialUserState;
  const factory UserState.loading({@required UserStatePayload payload}) = _LoadingUserState;
  const factory UserState.loaded({@required UserStatePayload payload}) = _LoadedUserState;
  const factory UserState.error({@required UserStatePayload payload}) = _ErrorUserState;

  factory UserState.fromJson(Map<String, dynamic> json) => _$UserStateFromJson(json);
}

@freezed
abstract class UserStatePayload with _$UserStatePayload {
  const factory UserStatePayload({
    UserModel user,
    @required String error,
  }) = _UserStatePayload;

  factory UserStatePayload.fromJson(Map json) =>
      _$UserStatePayloadFromJson(Map.castFrom<dynamic, dynamic, String, dynamic>(json));
}
