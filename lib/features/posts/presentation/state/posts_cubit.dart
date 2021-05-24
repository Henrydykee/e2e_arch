import 'package:e2e_arch/features/posts/domain/models/post_model.dart';
import 'package:e2e_arch/features/posts/domain/usecases/create_post.dart';
import 'package:e2e_arch/features/posts/domain/usecases/fetch_posts.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'posts_cubit.freezed.dart';
part 'posts_cubit.g.dart';
part 'posts_state.dart';

class PostsCubit extends HydratedCubit<PostsState> {
  final FetchPosts _fetchPosts;
  final CreatePost _createPost;

  static const _initialPostsState = PostsState.initial(
    payload: PostsStatePayload(
      posts: [],
      error: '',
    ),
  );

  PostsCubit(this._fetchPosts, this._createPost) : super(_initialPostsState);

  Future<void> fetchPosts() async {
    emit(PostsState.loading(payload: state.payload.copyWith()));
    final res = await _fetchPosts();

    res.fold(
      (l) => emit(
          PostsState.error(payload: state.payload.copyWith(error: l.message))),
      (r) => emit(PostsState.loaded(payload: state.payload.copyWith(posts: r))),
    );
  }

  Future<void> createPost(PostModel post) async {
    emit(PostsState.creatingPost(payload: state.payload.copyWith()));
    final res = await _createPost(post);

    res.fold(
      (l) => emit(
          PostsState.error(payload: state.payload.copyWith(error: l.message))),
      (r) => emit(PostsState.postCreated(
        payload: state.payload.copyWith(
          posts: [post, ...state.payload.posts],
        ),
      )),
    );
  }

  @override
  PostsState fromJson(Map json) {
    try {
      return PostsState.fromJson(
          Map.castFrom<dynamic, dynamic, String, dynamic>(json));
    } catch (_) {
      return _initialPostsState;
    }
  }

  @override
  Map<String, dynamic> toJson(PostsState state) => state.toJson();
}
