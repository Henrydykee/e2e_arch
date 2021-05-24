// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'pagination_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PaginationInfo _$PaginationInfoFromJson(Map<String, dynamic> json) {
  return _PaginationInfoPaginationInfo.fromJson(json);
}

/// @nodoc
class _$PaginationInfoTearOff {
  const _$PaginationInfoTearOff();

// ignore: unused_element
  _PaginationInfoPaginationInfo call(
      {@JsonKey(name: 'current_page', required: true) int currentPage,
      @JsonKey(name: 'last_page', required: true) int lastPage,
      @JsonKey(name: 'total', required: true) int total,
      @JsonKey(name: 'next_page_url') String nextPageUrl,
      @JsonKey(name: 'prev_page_url') String previousPageUrl,
      @JsonKey(name: 'last_page_url') String lastPageUrl}) {
    return _PaginationInfoPaginationInfo(
      currentPage: currentPage,
      lastPage: lastPage,
      total: total,
      nextPageUrl: nextPageUrl,
      previousPageUrl: previousPageUrl,
      lastPageUrl: lastPageUrl,
    );
  }

// ignore: unused_element
  PaginationInfo fromJson(Map<String, Object> json) {
    return PaginationInfo.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PaginationInfo = _$PaginationInfoTearOff();

/// @nodoc
mixin _$PaginationInfo {
  @JsonKey(name: 'current_page', required: true)
  int get currentPage;
  @JsonKey(name: 'last_page', required: true)
  int get lastPage;
  @JsonKey(name: 'total', required: true)
  int get total;
  @JsonKey(name: 'next_page_url')
  String get nextPageUrl;
  @JsonKey(name: 'prev_page_url')
  String get previousPageUrl;
  @JsonKey(name: 'last_page_url')
  String get lastPageUrl;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PaginationInfoCopyWith<PaginationInfo> get copyWith;
}

/// @nodoc
abstract class $PaginationInfoCopyWith<$Res> {
  factory $PaginationInfoCopyWith(
          PaginationInfo value, $Res Function(PaginationInfo) then) =
      _$PaginationInfoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'current_page', required: true) int currentPage,
      @JsonKey(name: 'last_page', required: true) int lastPage,
      @JsonKey(name: 'total', required: true) int total,
      @JsonKey(name: 'next_page_url') String nextPageUrl,
      @JsonKey(name: 'prev_page_url') String previousPageUrl,
      @JsonKey(name: 'last_page_url') String lastPageUrl});
}

/// @nodoc
class _$PaginationInfoCopyWithImpl<$Res>
    implements $PaginationInfoCopyWith<$Res> {
  _$PaginationInfoCopyWithImpl(this._value, this._then);

  final PaginationInfo _value;
  // ignore: unused_field
  final $Res Function(PaginationInfo) _then;

  @override
  $Res call({
    Object currentPage = freezed,
    Object lastPage = freezed,
    Object total = freezed,
    Object nextPageUrl = freezed,
    Object previousPageUrl = freezed,
    Object lastPageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      currentPage:
          currentPage == freezed ? _value.currentPage : currentPage as int,
      lastPage: lastPage == freezed ? _value.lastPage : lastPage as int,
      total: total == freezed ? _value.total : total as int,
      nextPageUrl:
          nextPageUrl == freezed ? _value.nextPageUrl : nextPageUrl as String,
      previousPageUrl: previousPageUrl == freezed
          ? _value.previousPageUrl
          : previousPageUrl as String,
      lastPageUrl:
          lastPageUrl == freezed ? _value.lastPageUrl : lastPageUrl as String,
    ));
  }
}

/// @nodoc
abstract class _$PaginationInfoPaginationInfoCopyWith<$Res>
    implements $PaginationInfoCopyWith<$Res> {
  factory _$PaginationInfoPaginationInfoCopyWith(
          _PaginationInfoPaginationInfo value,
          $Res Function(_PaginationInfoPaginationInfo) then) =
      __$PaginationInfoPaginationInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'current_page', required: true) int currentPage,
      @JsonKey(name: 'last_page', required: true) int lastPage,
      @JsonKey(name: 'total', required: true) int total,
      @JsonKey(name: 'next_page_url') String nextPageUrl,
      @JsonKey(name: 'prev_page_url') String previousPageUrl,
      @JsonKey(name: 'last_page_url') String lastPageUrl});
}

/// @nodoc
class __$PaginationInfoPaginationInfoCopyWithImpl<$Res>
    extends _$PaginationInfoCopyWithImpl<$Res>
    implements _$PaginationInfoPaginationInfoCopyWith<$Res> {
  __$PaginationInfoPaginationInfoCopyWithImpl(
      _PaginationInfoPaginationInfo _value,
      $Res Function(_PaginationInfoPaginationInfo) _then)
      : super(_value, (v) => _then(v as _PaginationInfoPaginationInfo));

  @override
  _PaginationInfoPaginationInfo get _value =>
      super._value as _PaginationInfoPaginationInfo;

  @override
  $Res call({
    Object currentPage = freezed,
    Object lastPage = freezed,
    Object total = freezed,
    Object nextPageUrl = freezed,
    Object previousPageUrl = freezed,
    Object lastPageUrl = freezed,
  }) {
    return _then(_PaginationInfoPaginationInfo(
      currentPage:
          currentPage == freezed ? _value.currentPage : currentPage as int,
      lastPage: lastPage == freezed ? _value.lastPage : lastPage as int,
      total: total == freezed ? _value.total : total as int,
      nextPageUrl:
          nextPageUrl == freezed ? _value.nextPageUrl : nextPageUrl as String,
      previousPageUrl: previousPageUrl == freezed
          ? _value.previousPageUrl
          : previousPageUrl as String,
      lastPageUrl:
          lastPageUrl == freezed ? _value.lastPageUrl : lastPageUrl as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PaginationInfoPaginationInfo implements _PaginationInfoPaginationInfo {
  const _$_PaginationInfoPaginationInfo(
      {@JsonKey(name: 'current_page', required: true) this.currentPage,
      @JsonKey(name: 'last_page', required: true) this.lastPage,
      @JsonKey(name: 'total', required: true) this.total,
      @JsonKey(name: 'next_page_url') this.nextPageUrl,
      @JsonKey(name: 'prev_page_url') this.previousPageUrl,
      @JsonKey(name: 'last_page_url') this.lastPageUrl});

  factory _$_PaginationInfoPaginationInfo.fromJson(Map<String, dynamic> json) =>
      _$_$_PaginationInfoPaginationInfoFromJson(json);

  @override
  @JsonKey(name: 'current_page', required: true)
  final int currentPage;
  @override
  @JsonKey(name: 'last_page', required: true)
  final int lastPage;
  @override
  @JsonKey(name: 'total', required: true)
  final int total;
  @override
  @JsonKey(name: 'next_page_url')
  final String nextPageUrl;
  @override
  @JsonKey(name: 'prev_page_url')
  final String previousPageUrl;
  @override
  @JsonKey(name: 'last_page_url')
  final String lastPageUrl;

  @override
  String toString() {
    return 'PaginationInfo(currentPage: $currentPage, lastPage: $lastPage, total: $total, nextPageUrl: $nextPageUrl, previousPageUrl: $previousPageUrl, lastPageUrl: $lastPageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PaginationInfoPaginationInfo &&
            (identical(other.currentPage, currentPage) ||
                const DeepCollectionEquality()
                    .equals(other.currentPage, currentPage)) &&
            (identical(other.lastPage, lastPage) ||
                const DeepCollectionEquality()
                    .equals(other.lastPage, lastPage)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.nextPageUrl, nextPageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.nextPageUrl, nextPageUrl)) &&
            (identical(other.previousPageUrl, previousPageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.previousPageUrl, previousPageUrl)) &&
            (identical(other.lastPageUrl, lastPageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.lastPageUrl, lastPageUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentPage) ^
      const DeepCollectionEquality().hash(lastPage) ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(nextPageUrl) ^
      const DeepCollectionEquality().hash(previousPageUrl) ^
      const DeepCollectionEquality().hash(lastPageUrl);

  @JsonKey(ignore: true)
  @override
  _$PaginationInfoPaginationInfoCopyWith<_PaginationInfoPaginationInfo>
      get copyWith => __$PaginationInfoPaginationInfoCopyWithImpl<
          _PaginationInfoPaginationInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PaginationInfoPaginationInfoToJson(this);
  }
}

abstract class _PaginationInfoPaginationInfo implements PaginationInfo {
  const factory _PaginationInfoPaginationInfo(
          {@JsonKey(name: 'current_page', required: true) int currentPage,
          @JsonKey(name: 'last_page', required: true) int lastPage,
          @JsonKey(name: 'total', required: true) int total,
          @JsonKey(name: 'next_page_url') String nextPageUrl,
          @JsonKey(name: 'prev_page_url') String previousPageUrl,
          @JsonKey(name: 'last_page_url') String lastPageUrl}) =
      _$_PaginationInfoPaginationInfo;

  factory _PaginationInfoPaginationInfo.fromJson(Map<String, dynamic> json) =
      _$_PaginationInfoPaginationInfo.fromJson;

  @override
  @JsonKey(name: 'current_page', required: true)
  int get currentPage;
  @override
  @JsonKey(name: 'last_page', required: true)
  int get lastPage;
  @override
  @JsonKey(name: 'total', required: true)
  int get total;
  @override
  @JsonKey(name: 'next_page_url')
  String get nextPageUrl;
  @override
  @JsonKey(name: 'prev_page_url')
  String get previousPageUrl;
  @override
  @JsonKey(name: 'last_page_url')
  String get lastPageUrl;
  @override
  @JsonKey(ignore: true)
  _$PaginationInfoPaginationInfoCopyWith<_PaginationInfoPaginationInfo>
      get copyWith;
}
