// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaginationInfoPaginationInfo _$_$_PaginationInfoPaginationInfoFromJson(
    Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['current_page', 'last_page', 'total']);
  return _$_PaginationInfoPaginationInfo(
    currentPage: json['current_page'] as int,
    lastPage: json['last_page'] as int,
    total: json['total'] as int,
    nextPageUrl: json['next_page_url'] as String,
    previousPageUrl: json['prev_page_url'] as String,
    lastPageUrl: json['last_page_url'] as String,
  );
}

Map<String, dynamic> _$_$_PaginationInfoPaginationInfoToJson(
        _$_PaginationInfoPaginationInfo instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'last_page': instance.lastPage,
      'total': instance.total,
      'next_page_url': instance.nextPageUrl,
      'prev_page_url': instance.previousPageUrl,
      'last_page_url': instance.lastPageUrl,
    };
