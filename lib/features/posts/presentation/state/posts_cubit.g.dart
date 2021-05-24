// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posts_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InitialPostsState _$_$_InitialPostsStateFromJson(Map<String, dynamic> json) {
  return _$_InitialPostsState(
    payload: json['payload'] == null
        ? null
        : PostsStatePayload.fromJson(json['payload'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_InitialPostsStateToJson(
        _$_InitialPostsState instance) =>
    <String, dynamic>{
      'payload': instance.payload?.toJson(),
    };

_$_LoadingPostsState _$_$_LoadingPostsStateFromJson(Map<String, dynamic> json) {
  return _$_LoadingPostsState(
    payload: json['payload'] == null
        ? null
        : PostsStatePayload.fromJson(json['payload'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_LoadingPostsStateToJson(
        _$_LoadingPostsState instance) =>
    <String, dynamic>{
      'payload': instance.payload?.toJson(),
    };

_$_LoadedPostsState _$_$_LoadedPostsStateFromJson(Map<String, dynamic> json) {
  return _$_LoadedPostsState(
    payload: json['payload'] == null
        ? null
        : PostsStatePayload.fromJson(json['payload'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_LoadedPostsStateToJson(
        _$_LoadedPostsState instance) =>
    <String, dynamic>{
      'payload': instance.payload?.toJson(),
    };

_$_CreatingPostPostsState _$_$_CreatingPostPostsStateFromJson(
    Map<String, dynamic> json) {
  return _$_CreatingPostPostsState(
    payload: json['payload'] == null
        ? null
        : PostsStatePayload.fromJson(json['payload'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_CreatingPostPostsStateToJson(
        _$_CreatingPostPostsState instance) =>
    <String, dynamic>{
      'payload': instance.payload?.toJson(),
    };

_$_PostCreatedPostsState _$_$_PostCreatedPostsStateFromJson(
    Map<String, dynamic> json) {
  return _$_PostCreatedPostsState(
    payload: json['payload'] == null
        ? null
        : PostsStatePayload.fromJson(json['payload'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_PostCreatedPostsStateToJson(
        _$_PostCreatedPostsState instance) =>
    <String, dynamic>{
      'payload': instance.payload?.toJson(),
    };

_$_ErrorPostsState _$_$_ErrorPostsStateFromJson(Map<String, dynamic> json) {
  return _$_ErrorPostsState(
    payload: json['payload'] == null
        ? null
        : PostsStatePayload.fromJson(json['payload'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_ErrorPostsStateToJson(_$_ErrorPostsState instance) =>
    <String, dynamic>{
      'payload': instance.payload?.toJson(),
    };

_$_PostsStatePayload _$_$_PostsStatePayloadFromJson(Map<String, dynamic> json) {
  return _$_PostsStatePayload(
    posts: (json['posts'] as List)
        ?.map((e) =>
            e == null ? null : PostModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    error: json['error'] as String,
  );
}

Map<String, dynamic> _$_$_PostsStatePayloadToJson(
        _$_PostsStatePayload instance) =>
    <String, dynamic>{
      'posts': instance.posts?.map((e) => e?.toJson())?.toList(),
      'error': instance.error,
    };
