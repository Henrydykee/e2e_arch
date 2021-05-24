// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UserState _$UserStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'initial':
      return _InitialUserState.fromJson(json);
    case 'loading':
      return _LoadingUserState.fromJson(json);
    case 'loaded':
      return _LoadedUserState.fromJson(json);
    case 'error':
      return _ErrorUserState.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$UserStateTearOff {
  const _$UserStateTearOff();

// ignore: unused_element
  _InitialUserState initial({@required UserStatePayload payload}) {
    return _InitialUserState(
      payload: payload,
    );
  }

// ignore: unused_element
  _LoadingUserState loading({@required UserStatePayload payload}) {
    return _LoadingUserState(
      payload: payload,
    );
  }

// ignore: unused_element
  _LoadedUserState loaded({@required UserStatePayload payload}) {
    return _LoadedUserState(
      payload: payload,
    );
  }

// ignore: unused_element
  _ErrorUserState error({@required UserStatePayload payload}) {
    return _ErrorUserState(
      payload: payload,
    );
  }

// ignore: unused_element
  UserState fromJson(Map<String, Object> json) {
    return UserState.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UserState = _$UserStateTearOff();

/// @nodoc
mixin _$UserState {
  UserStatePayload get payload;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(UserStatePayload payload),
    @required TResult loading(UserStatePayload payload),
    @required TResult loaded(UserStatePayload payload),
    @required TResult error(UserStatePayload payload),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(UserStatePayload payload),
    TResult loading(UserStatePayload payload),
    TResult loaded(UserStatePayload payload),
    TResult error(UserStatePayload payload),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialUserState value),
    @required TResult loading(_LoadingUserState value),
    @required TResult loaded(_LoadedUserState value),
    @required TResult error(_ErrorUserState value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialUserState value),
    TResult loading(_LoadingUserState value),
    TResult loaded(_LoadedUserState value),
    TResult error(_ErrorUserState value),
    @required TResult orElse(),
  });
  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $UserStateCopyWith<UserState> get copyWith;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res>;
  $Res call({UserStatePayload payload});

  $UserStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res> implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  final UserState _value;
  // ignore: unused_field
  final $Res Function(UserState) _then;

  @override
  $Res call({
    Object payload = freezed,
  }) {
    return _then(_value.copyWith(
      payload:
          payload == freezed ? _value.payload : payload as UserStatePayload,
    ));
  }

  @override
  $UserStatePayloadCopyWith<$Res> get payload {
    if (_value.payload == null) {
      return null;
    }
    return $UserStatePayloadCopyWith<$Res>(_value.payload, (value) {
      return _then(_value.copyWith(payload: value));
    });
  }
}

/// @nodoc
abstract class _$InitialUserStateCopyWith<$Res>
    implements $UserStateCopyWith<$Res> {
  factory _$InitialUserStateCopyWith(
          _InitialUserState value, $Res Function(_InitialUserState) then) =
      __$InitialUserStateCopyWithImpl<$Res>;
  @override
  $Res call({UserStatePayload payload});

  @override
  $UserStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$InitialUserStateCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res>
    implements _$InitialUserStateCopyWith<$Res> {
  __$InitialUserStateCopyWithImpl(
      _InitialUserState _value, $Res Function(_InitialUserState) _then)
      : super(_value, (v) => _then(v as _InitialUserState));

  @override
  _InitialUserState get _value => super._value as _InitialUserState;

  @override
  $Res call({
    Object payload = freezed,
  }) {
    return _then(_InitialUserState(
      payload:
          payload == freezed ? _value.payload : payload as UserStatePayload,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_InitialUserState implements _InitialUserState {
  const _$_InitialUserState({@required this.payload}) : assert(payload != null);

  factory _$_InitialUserState.fromJson(Map<String, dynamic> json) =>
      _$_$_InitialUserStateFromJson(json);

  @override
  final UserStatePayload payload;

  @override
  String toString() {
    return 'UserState.initial(payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InitialUserState &&
            (identical(other.payload, payload) ||
                const DeepCollectionEquality().equals(other.payload, payload)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(payload);

  @JsonKey(ignore: true)
  @override
  _$InitialUserStateCopyWith<_InitialUserState> get copyWith =>
      __$InitialUserStateCopyWithImpl<_InitialUserState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(UserStatePayload payload),
    @required TResult loading(UserStatePayload payload),
    @required TResult loaded(UserStatePayload payload),
    @required TResult error(UserStatePayload payload),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return initial(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(UserStatePayload payload),
    TResult loading(UserStatePayload payload),
    TResult loaded(UserStatePayload payload),
    TResult error(UserStatePayload payload),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialUserState value),
    @required TResult loading(_LoadingUserState value),
    @required TResult loaded(_LoadedUserState value),
    @required TResult error(_ErrorUserState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialUserState value),
    TResult loading(_LoadingUserState value),
    TResult loaded(_LoadedUserState value),
    TResult error(_ErrorUserState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_InitialUserStateToJson(this)..['runtimeType'] = 'initial';
  }
}

abstract class _InitialUserState implements UserState {
  const factory _InitialUserState({@required UserStatePayload payload}) =
      _$_InitialUserState;

  factory _InitialUserState.fromJson(Map<String, dynamic> json) =
      _$_InitialUserState.fromJson;

  @override
  UserStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$InitialUserStateCopyWith<_InitialUserState> get copyWith;
}

/// @nodoc
abstract class _$LoadingUserStateCopyWith<$Res>
    implements $UserStateCopyWith<$Res> {
  factory _$LoadingUserStateCopyWith(
          _LoadingUserState value, $Res Function(_LoadingUserState) then) =
      __$LoadingUserStateCopyWithImpl<$Res>;
  @override
  $Res call({UserStatePayload payload});

  @override
  $UserStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$LoadingUserStateCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res>
    implements _$LoadingUserStateCopyWith<$Res> {
  __$LoadingUserStateCopyWithImpl(
      _LoadingUserState _value, $Res Function(_LoadingUserState) _then)
      : super(_value, (v) => _then(v as _LoadingUserState));

  @override
  _LoadingUserState get _value => super._value as _LoadingUserState;

  @override
  $Res call({
    Object payload = freezed,
  }) {
    return _then(_LoadingUserState(
      payload:
          payload == freezed ? _value.payload : payload as UserStatePayload,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_LoadingUserState implements _LoadingUserState {
  const _$_LoadingUserState({@required this.payload}) : assert(payload != null);

  factory _$_LoadingUserState.fromJson(Map<String, dynamic> json) =>
      _$_$_LoadingUserStateFromJson(json);

  @override
  final UserStatePayload payload;

  @override
  String toString() {
    return 'UserState.loading(payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadingUserState &&
            (identical(other.payload, payload) ||
                const DeepCollectionEquality().equals(other.payload, payload)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(payload);

  @JsonKey(ignore: true)
  @override
  _$LoadingUserStateCopyWith<_LoadingUserState> get copyWith =>
      __$LoadingUserStateCopyWithImpl<_LoadingUserState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(UserStatePayload payload),
    @required TResult loading(UserStatePayload payload),
    @required TResult loaded(UserStatePayload payload),
    @required TResult error(UserStatePayload payload),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loading(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(UserStatePayload payload),
    TResult loading(UserStatePayload payload),
    TResult loaded(UserStatePayload payload),
    TResult error(UserStatePayload payload),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialUserState value),
    @required TResult loading(_LoadingUserState value),
    @required TResult loaded(_LoadedUserState value),
    @required TResult error(_ErrorUserState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialUserState value),
    TResult loading(_LoadingUserState value),
    TResult loaded(_LoadedUserState value),
    TResult error(_ErrorUserState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LoadingUserStateToJson(this)..['runtimeType'] = 'loading';
  }
}

abstract class _LoadingUserState implements UserState {
  const factory _LoadingUserState({@required UserStatePayload payload}) =
      _$_LoadingUserState;

  factory _LoadingUserState.fromJson(Map<String, dynamic> json) =
      _$_LoadingUserState.fromJson;

  @override
  UserStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$LoadingUserStateCopyWith<_LoadingUserState> get copyWith;
}

/// @nodoc
abstract class _$LoadedUserStateCopyWith<$Res>
    implements $UserStateCopyWith<$Res> {
  factory _$LoadedUserStateCopyWith(
          _LoadedUserState value, $Res Function(_LoadedUserState) then) =
      __$LoadedUserStateCopyWithImpl<$Res>;
  @override
  $Res call({UserStatePayload payload});

  @override
  $UserStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$LoadedUserStateCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements _$LoadedUserStateCopyWith<$Res> {
  __$LoadedUserStateCopyWithImpl(
      _LoadedUserState _value, $Res Function(_LoadedUserState) _then)
      : super(_value, (v) => _then(v as _LoadedUserState));

  @override
  _LoadedUserState get _value => super._value as _LoadedUserState;

  @override
  $Res call({
    Object payload = freezed,
  }) {
    return _then(_LoadedUserState(
      payload:
          payload == freezed ? _value.payload : payload as UserStatePayload,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_LoadedUserState implements _LoadedUserState {
  const _$_LoadedUserState({@required this.payload}) : assert(payload != null);

  factory _$_LoadedUserState.fromJson(Map<String, dynamic> json) =>
      _$_$_LoadedUserStateFromJson(json);

  @override
  final UserStatePayload payload;

  @override
  String toString() {
    return 'UserState.loaded(payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadedUserState &&
            (identical(other.payload, payload) ||
                const DeepCollectionEquality().equals(other.payload, payload)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(payload);

  @JsonKey(ignore: true)
  @override
  _$LoadedUserStateCopyWith<_LoadedUserState> get copyWith =>
      __$LoadedUserStateCopyWithImpl<_LoadedUserState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(UserStatePayload payload),
    @required TResult loading(UserStatePayload payload),
    @required TResult loaded(UserStatePayload payload),
    @required TResult error(UserStatePayload payload),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loaded(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(UserStatePayload payload),
    TResult loading(UserStatePayload payload),
    TResult loaded(UserStatePayload payload),
    TResult error(UserStatePayload payload),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialUserState value),
    @required TResult loading(_LoadingUserState value),
    @required TResult loaded(_LoadedUserState value),
    @required TResult error(_ErrorUserState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialUserState value),
    TResult loading(_LoadingUserState value),
    TResult loaded(_LoadedUserState value),
    TResult error(_ErrorUserState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LoadedUserStateToJson(this)..['runtimeType'] = 'loaded';
  }
}

abstract class _LoadedUserState implements UserState {
  const factory _LoadedUserState({@required UserStatePayload payload}) =
      _$_LoadedUserState;

  factory _LoadedUserState.fromJson(Map<String, dynamic> json) =
      _$_LoadedUserState.fromJson;

  @override
  UserStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$LoadedUserStateCopyWith<_LoadedUserState> get copyWith;
}

/// @nodoc
abstract class _$ErrorUserStateCopyWith<$Res>
    implements $UserStateCopyWith<$Res> {
  factory _$ErrorUserStateCopyWith(
          _ErrorUserState value, $Res Function(_ErrorUserState) then) =
      __$ErrorUserStateCopyWithImpl<$Res>;
  @override
  $Res call({UserStatePayload payload});

  @override
  $UserStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$ErrorUserStateCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements _$ErrorUserStateCopyWith<$Res> {
  __$ErrorUserStateCopyWithImpl(
      _ErrorUserState _value, $Res Function(_ErrorUserState) _then)
      : super(_value, (v) => _then(v as _ErrorUserState));

  @override
  _ErrorUserState get _value => super._value as _ErrorUserState;

  @override
  $Res call({
    Object payload = freezed,
  }) {
    return _then(_ErrorUserState(
      payload:
          payload == freezed ? _value.payload : payload as UserStatePayload,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ErrorUserState implements _ErrorUserState {
  const _$_ErrorUserState({@required this.payload}) : assert(payload != null);

  factory _$_ErrorUserState.fromJson(Map<String, dynamic> json) =>
      _$_$_ErrorUserStateFromJson(json);

  @override
  final UserStatePayload payload;

  @override
  String toString() {
    return 'UserState.error(payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ErrorUserState &&
            (identical(other.payload, payload) ||
                const DeepCollectionEquality().equals(other.payload, payload)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(payload);

  @JsonKey(ignore: true)
  @override
  _$ErrorUserStateCopyWith<_ErrorUserState> get copyWith =>
      __$ErrorUserStateCopyWithImpl<_ErrorUserState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(UserStatePayload payload),
    @required TResult loading(UserStatePayload payload),
    @required TResult loaded(UserStatePayload payload),
    @required TResult error(UserStatePayload payload),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return error(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(UserStatePayload payload),
    TResult loading(UserStatePayload payload),
    TResult loaded(UserStatePayload payload),
    TResult error(UserStatePayload payload),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialUserState value),
    @required TResult loading(_LoadingUserState value),
    @required TResult loaded(_LoadedUserState value),
    @required TResult error(_ErrorUserState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialUserState value),
    TResult loading(_LoadingUserState value),
    TResult loaded(_LoadedUserState value),
    TResult error(_ErrorUserState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ErrorUserStateToJson(this)..['runtimeType'] = 'error';
  }
}

abstract class _ErrorUserState implements UserState {
  const factory _ErrorUserState({@required UserStatePayload payload}) =
      _$_ErrorUserState;

  factory _ErrorUserState.fromJson(Map<String, dynamic> json) =
      _$_ErrorUserState.fromJson;

  @override
  UserStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$ErrorUserStateCopyWith<_ErrorUserState> get copyWith;
}

UserStatePayload _$UserStatePayloadFromJson(Map<String, dynamic> json) {
  return _UserStatePayload.fromJson(json);
}

/// @nodoc
class _$UserStatePayloadTearOff {
  const _$UserStatePayloadTearOff();

// ignore: unused_element
  _UserStatePayload call({UserModel user, @required String error}) {
    return _UserStatePayload(
      user: user,
      error: error,
    );
  }

// ignore: unused_element
  UserStatePayload fromJson(Map<String, Object> json) {
    return UserStatePayload.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UserStatePayload = _$UserStatePayloadTearOff();

/// @nodoc
mixin _$UserStatePayload {
  UserModel get user;
  String get error;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $UserStatePayloadCopyWith<UserStatePayload> get copyWith;
}

/// @nodoc
abstract class $UserStatePayloadCopyWith<$Res> {
  factory $UserStatePayloadCopyWith(
          UserStatePayload value, $Res Function(UserStatePayload) then) =
      _$UserStatePayloadCopyWithImpl<$Res>;
  $Res call({UserModel user, String error});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$UserStatePayloadCopyWithImpl<$Res>
    implements $UserStatePayloadCopyWith<$Res> {
  _$UserStatePayloadCopyWithImpl(this._value, this._then);

  final UserStatePayload _value;
  // ignore: unused_field
  final $Res Function(UserStatePayload) _then;

  @override
  $Res call({
    Object user = freezed,
    Object error = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed ? _value.user : user as UserModel,
      error: error == freezed ? _value.error : error as String,
    ));
  }

  @override
  $UserModelCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$UserStatePayloadCopyWith<$Res>
    implements $UserStatePayloadCopyWith<$Res> {
  factory _$UserStatePayloadCopyWith(
          _UserStatePayload value, $Res Function(_UserStatePayload) then) =
      __$UserStatePayloadCopyWithImpl<$Res>;
  @override
  $Res call({UserModel user, String error});

  @override
  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$UserStatePayloadCopyWithImpl<$Res>
    extends _$UserStatePayloadCopyWithImpl<$Res>
    implements _$UserStatePayloadCopyWith<$Res> {
  __$UserStatePayloadCopyWithImpl(
      _UserStatePayload _value, $Res Function(_UserStatePayload) _then)
      : super(_value, (v) => _then(v as _UserStatePayload));

  @override
  _UserStatePayload get _value => super._value as _UserStatePayload;

  @override
  $Res call({
    Object user = freezed,
    Object error = freezed,
  }) {
    return _then(_UserStatePayload(
      user: user == freezed ? _value.user : user as UserModel,
      error: error == freezed ? _value.error : error as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_UserStatePayload implements _UserStatePayload {
  const _$_UserStatePayload({this.user, @required this.error})
      : assert(error != null);

  factory _$_UserStatePayload.fromJson(Map<String, dynamic> json) =>
      _$_$_UserStatePayloadFromJson(json);

  @override
  final UserModel user;
  @override
  final String error;

  @override
  String toString() {
    return 'UserStatePayload(user: $user, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserStatePayload &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$UserStatePayloadCopyWith<_UserStatePayload> get copyWith =>
      __$UserStatePayloadCopyWithImpl<_UserStatePayload>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserStatePayloadToJson(this);
  }
}

abstract class _UserStatePayload implements UserStatePayload {
  const factory _UserStatePayload({UserModel user, @required String error}) =
      _$_UserStatePayload;

  factory _UserStatePayload.fromJson(Map<String, dynamic> json) =
      _$_UserStatePayload.fromJson;

  @override
  UserModel get user;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$UserStatePayloadCopyWith<_UserStatePayload> get copyWith;
}
