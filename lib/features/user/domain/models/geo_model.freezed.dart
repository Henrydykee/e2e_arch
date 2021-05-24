// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'geo_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
GeoModel _$GeoModelFromJson(Map<String, dynamic> json) {
  return _GeoModel.fromJson(json);
}

/// @nodoc
class _$GeoModelTearOff {
  const _$GeoModelTearOff();

// ignore: unused_element
  _GeoModel call({@required String lat, @required String lng}) {
    return _GeoModel(
      lat: lat,
      lng: lng,
    );
  }

// ignore: unused_element
  GeoModel fromJson(Map<String, Object> json) {
    return GeoModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $GeoModel = _$GeoModelTearOff();

/// @nodoc
mixin _$GeoModel {
  String get lat;
  String get lng;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $GeoModelCopyWith<GeoModel> get copyWith;
}

/// @nodoc
abstract class $GeoModelCopyWith<$Res> {
  factory $GeoModelCopyWith(GeoModel value, $Res Function(GeoModel) then) =
      _$GeoModelCopyWithImpl<$Res>;
  $Res call({String lat, String lng});
}

/// @nodoc
class _$GeoModelCopyWithImpl<$Res> implements $GeoModelCopyWith<$Res> {
  _$GeoModelCopyWithImpl(this._value, this._then);

  final GeoModel _value;
  // ignore: unused_field
  final $Res Function(GeoModel) _then;

  @override
  $Res call({
    Object lat = freezed,
    Object lng = freezed,
  }) {
    return _then(_value.copyWith(
      lat: lat == freezed ? _value.lat : lat as String,
      lng: lng == freezed ? _value.lng : lng as String,
    ));
  }
}

/// @nodoc
abstract class _$GeoModelCopyWith<$Res> implements $GeoModelCopyWith<$Res> {
  factory _$GeoModelCopyWith(_GeoModel value, $Res Function(_GeoModel) then) =
      __$GeoModelCopyWithImpl<$Res>;
  @override
  $Res call({String lat, String lng});
}

/// @nodoc
class __$GeoModelCopyWithImpl<$Res> extends _$GeoModelCopyWithImpl<$Res>
    implements _$GeoModelCopyWith<$Res> {
  __$GeoModelCopyWithImpl(_GeoModel _value, $Res Function(_GeoModel) _then)
      : super(_value, (v) => _then(v as _GeoModel));

  @override
  _GeoModel get _value => super._value as _GeoModel;

  @override
  $Res call({
    Object lat = freezed,
    Object lng = freezed,
  }) {
    return _then(_GeoModel(
      lat: lat == freezed ? _value.lat : lat as String,
      lng: lng == freezed ? _value.lng : lng as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_GeoModel implements _GeoModel {
  const _$_GeoModel({@required this.lat, @required this.lng})
      : assert(lat != null),
        assert(lng != null);

  factory _$_GeoModel.fromJson(Map<String, dynamic> json) =>
      _$_$_GeoModelFromJson(json);

  @override
  final String lat;
  @override
  final String lng;

  @override
  String toString() {
    return 'GeoModel(lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GeoModel &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.lng, lng) ||
                const DeepCollectionEquality().equals(other.lng, lng)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(lng);

  @JsonKey(ignore: true)
  @override
  _$GeoModelCopyWith<_GeoModel> get copyWith =>
      __$GeoModelCopyWithImpl<_GeoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GeoModelToJson(this);
  }
}

abstract class _GeoModel implements GeoModel {
  const factory _GeoModel({@required String lat, @required String lng}) =
      _$_GeoModel;

  factory _GeoModel.fromJson(Map<String, dynamic> json) = _$_GeoModel.fromJson;

  @override
  String get lat;
  @override
  String get lng;
  @override
  @JsonKey(ignore: true)
  _$GeoModelCopyWith<_GeoModel> get copyWith;
}
