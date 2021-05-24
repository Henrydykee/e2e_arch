// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
class _$UserModelTearOff {
  const _$UserModelTearOff();

// ignore: unused_element
  _UserModel call(
      {@required int id,
      @required String name,
      @required String username,
      @required AddressModel address,
      int points = 0}) {
    return _UserModel(
      id: id,
      name: name,
      username: username,
      address: address,
      points: points,
    );
  }

// ignore: unused_element
  UserModel fromJson(Map<String, Object> json) {
    return UserModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UserModel = _$UserModelTearOff();

/// @nodoc
mixin _$UserModel {
  int get id;
  String get name;
  String get username;
  AddressModel get address;
  int get points;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res>;
  $Res call(
      {int id, String name, String username, AddressModel address, int points});

  $AddressModelCopyWith<$Res> get address;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res> implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  final UserModel _value;
  // ignore: unused_field
  final $Res Function(UserModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object username = freezed,
    Object address = freezed,
    Object points = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      username: username == freezed ? _value.username : username as String,
      address: address == freezed ? _value.address : address as AddressModel,
      points: points == freezed ? _value.points : points as int,
    ));
  }

  @override
  $AddressModelCopyWith<$Res> get address {
    if (_value.address == null) {
      return null;
    }
    return $AddressModelCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value));
    });
  }
}

/// @nodoc
abstract class _$UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(
          _UserModel value, $Res Function(_UserModel) then) =
      __$UserModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id, String name, String username, AddressModel address, int points});

  @override
  $AddressModelCopyWith<$Res> get address;
}

/// @nodoc
class __$UserModelCopyWithImpl<$Res> extends _$UserModelCopyWithImpl<$Res>
    implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(_UserModel _value, $Res Function(_UserModel) _then)
      : super(_value, (v) => _then(v as _UserModel));

  @override
  _UserModel get _value => super._value as _UserModel;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object username = freezed,
    Object address = freezed,
    Object points = freezed,
  }) {
    return _then(_UserModel(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      username: username == freezed ? _value.username : username as String,
      address: address == freezed ? _value.address : address as AddressModel,
      points: points == freezed ? _value.points : points as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_UserModel implements _UserModel {
  const _$_UserModel(
      {@required this.id,
      @required this.name,
      @required this.username,
      @required this.address,
      this.points = 0})
      : assert(id != null),
        assert(name != null),
        assert(username != null),
        assert(address != null),
        assert(points != null);

  factory _$_UserModel.fromJson(Map<String, dynamic> json) =>
      _$_$_UserModelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String username;
  @override
  final AddressModel address;
  @JsonKey(defaultValue: 0)
  @override
  final int points;

  @override
  String toString() {
    return 'UserModel(id: $id, name: $name, username: $username, address: $address, points: $points)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.points, points) ||
                const DeepCollectionEquality().equals(other.points, points)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(points);

  @JsonKey(ignore: true)
  @override
  _$UserModelCopyWith<_UserModel> get copyWith =>
      __$UserModelCopyWithImpl<_UserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserModelToJson(this);
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {@required int id,
      @required String name,
      @required String username,
      @required AddressModel address,
      int points}) = _$_UserModel;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$_UserModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get username;
  @override
  AddressModel get address;
  @override
  int get points;
  @override
  @JsonKey(ignore: true)
  _$UserModelCopyWith<_UserModel> get copyWith;
}
