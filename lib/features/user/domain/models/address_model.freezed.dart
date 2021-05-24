// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'address_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AddressModel _$AddressModelFromJson(Map<String, dynamic> json) {
  return _AddressModel.fromJson(json);
}

/// @nodoc
class _$AddressModelTearOff {
  const _$AddressModelTearOff();

// ignore: unused_element
  _AddressModel call(
      {@required String street,
      @required String suite,
      @required String city,
      @required String zipcode,
      @required GeoModel geo}) {
    return _AddressModel(
      street: street,
      suite: suite,
      city: city,
      zipcode: zipcode,
      geo: geo,
    );
  }

// ignore: unused_element
  AddressModel fromJson(Map<String, Object> json) {
    return AddressModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $AddressModel = _$AddressModelTearOff();

/// @nodoc
mixin _$AddressModel {
  String get street;
  String get suite;
  String get city;
  String get zipcode;
  GeoModel get geo;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $AddressModelCopyWith<AddressModel> get copyWith;
}

/// @nodoc
abstract class $AddressModelCopyWith<$Res> {
  factory $AddressModelCopyWith(
          AddressModel value, $Res Function(AddressModel) then) =
      _$AddressModelCopyWithImpl<$Res>;
  $Res call(
      {String street, String suite, String city, String zipcode, GeoModel geo});

  $GeoModelCopyWith<$Res> get geo;
}

/// @nodoc
class _$AddressModelCopyWithImpl<$Res> implements $AddressModelCopyWith<$Res> {
  _$AddressModelCopyWithImpl(this._value, this._then);

  final AddressModel _value;
  // ignore: unused_field
  final $Res Function(AddressModel) _then;

  @override
  $Res call({
    Object street = freezed,
    Object suite = freezed,
    Object city = freezed,
    Object zipcode = freezed,
    Object geo = freezed,
  }) {
    return _then(_value.copyWith(
      street: street == freezed ? _value.street : street as String,
      suite: suite == freezed ? _value.suite : suite as String,
      city: city == freezed ? _value.city : city as String,
      zipcode: zipcode == freezed ? _value.zipcode : zipcode as String,
      geo: geo == freezed ? _value.geo : geo as GeoModel,
    ));
  }

  @override
  $GeoModelCopyWith<$Res> get geo {
    if (_value.geo == null) {
      return null;
    }
    return $GeoModelCopyWith<$Res>(_value.geo, (value) {
      return _then(_value.copyWith(geo: value));
    });
  }
}

/// @nodoc
abstract class _$AddressModelCopyWith<$Res>
    implements $AddressModelCopyWith<$Res> {
  factory _$AddressModelCopyWith(
          _AddressModel value, $Res Function(_AddressModel) then) =
      __$AddressModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String street, String suite, String city, String zipcode, GeoModel geo});

  @override
  $GeoModelCopyWith<$Res> get geo;
}

/// @nodoc
class __$AddressModelCopyWithImpl<$Res> extends _$AddressModelCopyWithImpl<$Res>
    implements _$AddressModelCopyWith<$Res> {
  __$AddressModelCopyWithImpl(
      _AddressModel _value, $Res Function(_AddressModel) _then)
      : super(_value, (v) => _then(v as _AddressModel));

  @override
  _AddressModel get _value => super._value as _AddressModel;

  @override
  $Res call({
    Object street = freezed,
    Object suite = freezed,
    Object city = freezed,
    Object zipcode = freezed,
    Object geo = freezed,
  }) {
    return _then(_AddressModel(
      street: street == freezed ? _value.street : street as String,
      suite: suite == freezed ? _value.suite : suite as String,
      city: city == freezed ? _value.city : city as String,
      zipcode: zipcode == freezed ? _value.zipcode : zipcode as String,
      geo: geo == freezed ? _value.geo : geo as GeoModel,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_AddressModel implements _AddressModel {
  const _$_AddressModel(
      {@required this.street,
      @required this.suite,
      @required this.city,
      @required this.zipcode,
      @required this.geo})
      : assert(street != null),
        assert(suite != null),
        assert(city != null),
        assert(zipcode != null),
        assert(geo != null);

  factory _$_AddressModel.fromJson(Map<String, dynamic> json) =>
      _$_$_AddressModelFromJson(json);

  @override
  final String street;
  @override
  final String suite;
  @override
  final String city;
  @override
  final String zipcode;
  @override
  final GeoModel geo;

  @override
  String toString() {
    return 'AddressModel(street: $street, suite: $suite, city: $city, zipcode: $zipcode, geo: $geo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddressModel &&
            (identical(other.street, street) ||
                const DeepCollectionEquality().equals(other.street, street)) &&
            (identical(other.suite, suite) ||
                const DeepCollectionEquality().equals(other.suite, suite)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.zipcode, zipcode) ||
                const DeepCollectionEquality()
                    .equals(other.zipcode, zipcode)) &&
            (identical(other.geo, geo) ||
                const DeepCollectionEquality().equals(other.geo, geo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(street) ^
      const DeepCollectionEquality().hash(suite) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(zipcode) ^
      const DeepCollectionEquality().hash(geo);

  @JsonKey(ignore: true)
  @override
  _$AddressModelCopyWith<_AddressModel> get copyWith =>
      __$AddressModelCopyWithImpl<_AddressModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AddressModelToJson(this);
  }
}

abstract class _AddressModel implements AddressModel {
  const factory _AddressModel(
      {@required String street,
      @required String suite,
      @required String city,
      @required String zipcode,
      @required GeoModel geo}) = _$_AddressModel;

  factory _AddressModel.fromJson(Map<String, dynamic> json) =
      _$_AddressModel.fromJson;

  @override
  String get street;
  @override
  String get suite;
  @override
  String get city;
  @override
  String get zipcode;
  @override
  GeoModel get geo;
  @override
  @JsonKey(ignore: true)
  _$AddressModelCopyWith<_AddressModel> get copyWith;
}
