// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$_$_UserModelFromJson(Map<String, dynamic> json) {
  return _$_UserModel(
    id: json['id'] as int,
    name: json['name'] as String,
    username: json['username'] as String,
    address: json['address'] == null
        ? null
        : AddressModel.fromJson(json['address'] as Map<String, dynamic>),
    points: json['points'] as int ?? 0,
  );
}

Map<String, dynamic> _$_$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'address': instance.address?.toJson(),
      'points': instance.points,
    };
