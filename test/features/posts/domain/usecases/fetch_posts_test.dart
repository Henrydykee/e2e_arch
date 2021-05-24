import 'package:e2e_arch/core/failures.dart';
import 'package:e2e_arch/features/posts/domain/repositories/posts_repository.dart';
import 'package:e2e_arch/features/posts/domain/usecases/fetch_posts.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../fixtures/posts_data.dart';

class MockPostsRepository extends Mock implements PostsRepository {}

void main() {
  FetchPosts testSubject;

  MockPostsRepository repository;

  setUp(() {
    repository = MockPostsRepository();
    testSubject = FetchPosts(repository);
  });

  test('fetchPosts calls PostsRepository\'s fetchPosts', () {
    testSubject();

    verify(repository.fetchPosts());
    verifyNoMoreInteractions(repository);

    // Need this to reset the interactions on mocked object
    clearInteractions(repository);
  });

  test('fetchPosts returns a list of posts from sever', () async {
    when(repository.fetchPosts()).thenAnswer((_) async => postsSample);

    final result = await testSubject();

    expect(result.isRight(), true);
    result.fold(null, (r) => expect(r, postsSample));
  });

  // Test failures too
  test('fetchPosts returns an error message upon failure', () async {
    // Test NetworkFailure handling
    when(repository.fetchPosts()).thenThrow(NetworkFailure('message'));

    final result = await testSubject();

    expect(result.isLeft(), true);
    result.fold((l) => expect(l.message, 'message'), null);

    // Test CacheFailure handling
    when(repository.fetchPosts()).thenThrow(CacheFailure('message'));

    final result2 = await testSubject();

    expect(result2.isLeft(), true);
    result2.fold((l) => expect(l.message, 'message'), null);
  });
}
