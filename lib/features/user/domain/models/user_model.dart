import 'package:flutter/material.dart' show required;
import 'package:freezed_annotation/freezed_annotation.dart';

import 'address_model.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
    @required int id,
    @required String name,
    @required String username,
    @required AddressModel address,
    @Default(0) int points,
  }) = _UserModel;

  factory UserModel.fromJson(Map json) => _$UserModelFromJson(Map.castFrom<dynamic, dynamic, String, dynamic>(json));
}
