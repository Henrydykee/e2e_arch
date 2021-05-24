import 'package:flutter/material.dart' show required;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'geo_model.freezed.dart';
part 'geo_model.g.dart';

@freezed
abstract class GeoModel with _$GeoModel {
  const factory GeoModel({
    @required String lat,
    @required String lng,
  }) = _GeoModel;

  factory GeoModel.fromJson(Map<String, dynamic> json) => _$GeoModelFromJson(json);
}
