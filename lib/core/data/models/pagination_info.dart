import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_info.g.dart';
part 'pagination_info.freezed.dart';

@freezed
abstract class PaginationInfo with _$PaginationInfo {
  const factory PaginationInfo({
    @JsonKey(name: 'current_page', required: true) int currentPage,
    @JsonKey(name: 'last_page', required: true) int lastPage,
    @JsonKey(name: 'total', required: true) int total,
    @JsonKey(name: 'next_page_url') String nextPageUrl,
    @JsonKey(name: 'prev_page_url') String previousPageUrl,
    @JsonKey(name: 'last_page_url') String lastPageUrl,
  }) = _PaginationInfoPaginationInfo;

  factory PaginationInfo.fromJson(Map json) =>
      _$PaginationInfoFromJson(Map.castFrom<dynamic, dynamic, String, dynamic>(json));
}
