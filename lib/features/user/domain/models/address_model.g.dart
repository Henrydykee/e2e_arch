// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddressModel _$_$_AddressModelFromJson(Map<String, dynamic> json) {
  return _$_AddressModel(
    street: json['street'] as String,
    suite: json['suite'] as String,
    city: json['city'] as String,
    zipcode: json['zipcode'] as String,
    geo: json['geo'] == null
        ? null
        : GeoModel.fromJson(json['geo'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_AddressModelToJson(_$_AddressModel instance) =>
    <String, dynamic>{
      'street': instance.street,
      'suite': instance.suite,
      'city': instance.city,
      'zipcode': instance.zipcode,
      'geo': instance.geo?.toJson(),
    };
