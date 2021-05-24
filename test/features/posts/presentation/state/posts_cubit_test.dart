import 'package:dartz/dartz.dart';
import 'package:e2e_arch/core/failures.dart';
import 'package:e2e_arch/core/usecase_typedefs.dart';
import 'package:e2e_arch/features/posts/domain/usecases/create_post.dart';
import 'package:e2e_arch/features/posts/domain/usecases/fetch_posts.dart';
import 'package:e2e_arch/features/posts/presentation/state/posts_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mockito/mockito.dart';

import '../../../../core/mocks/mock_hydtrated_storage.dart';
import '../../fixtures/posts_data.dart';

class MockFetchPosts extends Mock implements FetchPosts {}

class MockCreatePost extends Mock implements CreatePost {}

Future<void> main() async {
  TestWidgetsFlutterBinding.ensureInitialized();
  HydratedCubit.storage = FakeHydratedStorage();

  final _fetchPosts = MockFetchPosts();
  final _createPost = MockCreatePost();

  // Mock Usecase Responses
  when(_fetchPosts.call(any)).thenAnswer((_) async => const Right(postsSample));
  when(_createPost.call(any)).thenAnswer((_) async => const Right(VoidType()));

  group('Posts Cubit', () {
    test(
      'Initial behaviour: PostsCubit is initialised with empty list (and reads cached data from hydrated storage)',
      () {
        final cubit = PostsCubit(_fetchPosts, _createPost);
        expect(cubit.state.payload.posts, []);
        expect(cubit.state.payload.error, '');
      },
    );

    test(
      'PostsCubit fromJson returns a valid PostsState, even with badly formed data',
      () {
        final cubit = PostsCubit(_fetchPosts, _createPost);
        expect(cubit.fromJson({}), isA<PostsState>());
        expect(
            cubit.fromJson({'wrong': 'data'}),
            const PostsState.initial(
                payload: PostsStatePayload(
              posts: [],
              error: '',
            )));
      },
    );

    group("fetch posts", () {
      test(
          'PostsCubit fetchPosts emits loading, then loaded, with payload populated with returned data',
          () async {
        final cubit = PostsCubit(_fetchPosts, _createPost);

        // ignore: unawaited_futures
        expectLater(
            cubit,
            emitsInOrder(<PostsState>[
              PostsState.loading(
                  payload: cubit.state.payload.copyWith(posts: [])),
              PostsState.loaded(
                  payload: cubit.state.payload.copyWith(posts: postsSample)),
            ]));

        await cubit.fetchPosts();

        verify(_fetchPosts.call());
      });

      test(
          'PostsCubit fetchPosts emits loading, then error, with error message, if something goes wrong',
          () async {
        final cubit = PostsCubit(_fetchPosts, _createPost);

        when(_fetchPosts.call(any))
            .thenAnswer((_) async => const Left(UIError('error')));

        // ignore: unawaited_futures
        expectLater(
            cubit,
            emitsInOrder(<PostsState>[
              PostsState.loading(
                  payload: cubit.state.payload.copyWith(posts: [])),
              PostsState.error(
                  payload: cubit.state.payload.copyWith(error: 'error')),
            ]));

        await cubit.fetchPosts();

        verify(_fetchPosts.call());
      });
    });

    group("create post", () {
      test(' emits creatingPost, then postCreated, with new post inserted',
          () async {
        final cubit = PostsCubit(_fetchPosts, _createPost);

        // Simulate pre-loaded posts
        cubit.emit(cubit.state.copyWith.payload(posts: postsSample));

        // ignore: unawaited_futures
        expectLater(
            cubit,
            emitsInOrder(<PostsState>[
              PostsState.creatingPost(
                  payload: cubit.state.payload.copyWith(posts: postsSample)),
              PostsState.postCreated(
                  payload: cubit.state.payload
                      .copyWith(posts: [newPost, ...postsSample])),
            ]));

        await cubit.createPost(newPost);

        verify(_createPost.call(newPost));
      });

      test(
          ' emits creatingPost, then error, with error message, if something goes wrong',
          () async {
        final cubit = PostsCubit(_fetchPosts, _createPost);

        when(_createPost.call(any))
            .thenAnswer((_) async => const Left(UIError('error')));

        // ignore: unawaited_futures
        expectLater(
            cubit,
            emitsInOrder(<PostsState>[
              PostsState.creatingPost(
                  payload: cubit.state.payload.copyWith(posts: [])),
              PostsState.error(
                  payload: cubit.state.payload.copyWith(error: 'error')),
            ]));

        await cubit.createPost(newPost);

        verify(_createPost.call(newPost));
      });
    });
  });
}
