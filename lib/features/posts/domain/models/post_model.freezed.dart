// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'post_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PostModel _$PostModelFromJson(Map<String, dynamic> json) {
  return _PostModel.fromJson(json);
}

/// @nodoc
class _$PostModelTearOff {
  const _$PostModelTearOff();

// ignore: unused_element
  _PostModel call(
      {@required int id,
      @required int userId,
      @required String title,
      @required String body}) {
    return _PostModel(
      id: id,
      userId: userId,
      title: title,
      body: body,
    );
  }

// ignore: unused_element
  PostModel fromJson(Map<String, Object> json) {
    return PostModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PostModel = _$PostModelTearOff();

/// @nodoc
mixin _$PostModel {
  int get id;
  int get userId;
  String get title;
  String get body;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PostModelCopyWith<PostModel> get copyWith;
}

/// @nodoc
abstract class $PostModelCopyWith<$Res> {
  factory $PostModelCopyWith(PostModel value, $Res Function(PostModel) then) =
      _$PostModelCopyWithImpl<$Res>;
  $Res call({int id, int userId, String title, String body});
}

/// @nodoc
class _$PostModelCopyWithImpl<$Res> implements $PostModelCopyWith<$Res> {
  _$PostModelCopyWithImpl(this._value, this._then);

  final PostModel _value;
  // ignore: unused_field
  final $Res Function(PostModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object userId = freezed,
    Object title = freezed,
    Object body = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      userId: userId == freezed ? _value.userId : userId as int,
      title: title == freezed ? _value.title : title as String,
      body: body == freezed ? _value.body : body as String,
    ));
  }
}

/// @nodoc
abstract class _$PostModelCopyWith<$Res> implements $PostModelCopyWith<$Res> {
  factory _$PostModelCopyWith(
          _PostModel value, $Res Function(_PostModel) then) =
      __$PostModelCopyWithImpl<$Res>;
  @override
  $Res call({int id, int userId, String title, String body});
}

/// @nodoc
class __$PostModelCopyWithImpl<$Res> extends _$PostModelCopyWithImpl<$Res>
    implements _$PostModelCopyWith<$Res> {
  __$PostModelCopyWithImpl(_PostModel _value, $Res Function(_PostModel) _then)
      : super(_value, (v) => _then(v as _PostModel));

  @override
  _PostModel get _value => super._value as _PostModel;

  @override
  $Res call({
    Object id = freezed,
    Object userId = freezed,
    Object title = freezed,
    Object body = freezed,
  }) {
    return _then(_PostModel(
      id: id == freezed ? _value.id : id as int,
      userId: userId == freezed ? _value.userId : userId as int,
      title: title == freezed ? _value.title : title as String,
      body: body == freezed ? _value.body : body as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PostModel implements _PostModel {
  const _$_PostModel(
      {@required this.id,
      @required this.userId,
      @required this.title,
      @required this.body})
      : assert(id != null),
        assert(userId != null),
        assert(title != null),
        assert(body != null);

  factory _$_PostModel.fromJson(Map<String, dynamic> json) =>
      _$_$_PostModelFromJson(json);

  @override
  final int id;
  @override
  final int userId;
  @override
  final String title;
  @override
  final String body;

  @override
  String toString() {
    return 'PostModel(id: $id, userId: $userId, title: $title, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(body);

  @JsonKey(ignore: true)
  @override
  _$PostModelCopyWith<_PostModel> get copyWith =>
      __$PostModelCopyWithImpl<_PostModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PostModelToJson(this);
  }
}

abstract class _PostModel implements PostModel {
  const factory _PostModel(
      {@required int id,
      @required int userId,
      @required String title,
      @required String body}) = _$_PostModel;

  factory _PostModel.fromJson(Map<String, dynamic> json) =
      _$_PostModel.fromJson;

  @override
  int get id;
  @override
  int get userId;
  @override
  String get title;
  @override
  String get body;
  @override
  @JsonKey(ignore: true)
  _$PostModelCopyWith<_PostModel> get copyWith;
}
