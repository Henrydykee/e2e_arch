part of 'posts_cubit.dart';

@freezed
abstract class PostsState with _$PostsState {
  const factory PostsState.initial({@required PostsStatePayload payload}) = _InitialPostsState;
  const factory PostsState.loading({@required PostsStatePayload payload}) = _LoadingPostsState;
  const factory PostsState.loaded({@required PostsStatePayload payload}) = _LoadedPostsState;
  const factory PostsState.creatingPost({@required PostsStatePayload payload}) = _CreatingPostPostsState;
  const factory PostsState.postCreated({@required PostsStatePayload payload}) = _PostCreatedPostsState;
  const factory PostsState.error({@required PostsStatePayload payload}) = _ErrorPostsState;

  factory PostsState.fromJson(Map<String, dynamic> json) => _$PostsStateFromJson(json);
}

@freezed
abstract class PostsStatePayload with _$PostsStatePayload {
  const factory PostsStatePayload({
    @required List<PostModel> posts,
    @required String error,
  }) = _PostsStatePayload;

  factory PostsStatePayload.fromJson(Map json) =>
      _$PostsStatePayloadFromJson(Map.castFrom<dynamic, dynamic, String, dynamic>(json));
}
