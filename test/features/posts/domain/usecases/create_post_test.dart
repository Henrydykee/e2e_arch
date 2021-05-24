import 'package:e2e_arch/core/failures.dart';
import 'package:e2e_arch/core/usecase_typedefs.dart';
import 'package:e2e_arch/features/posts/domain/repositories/posts_repository.dart';
import 'package:e2e_arch/features/posts/domain/usecases/create_post.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../fixtures/posts_data.dart';

class MockPostsRepository extends Mock implements PostsRepository {}

void main() {
  CreatePost testSubject;

  MockPostsRepository repository;

  setUp(() {
    repository = MockPostsRepository();
    testSubject = CreatePost(repository);
  });

  test('createPost calls PostsRepository\'s createPost', () {
    testSubject(newPost);

    verify(repository.createPost(newPost));
    verifyNoMoreInteractions(repository);

    // Need this to reset the interactions on mocked object
    clearInteractions(repository);
  });

  test('createPost called without a param throws an exception', () {
    expect(testSubject(null), throwsA(isA<Exception>()));
    verifyZeroInteractions(repository);
  });

  test('createPost runs successfully', () async {
    final result = await testSubject(newPost);

    expect(result.isRight(), true);
    result.fold(null, (r) => expect(r, const VoidType()));
  });

  // Test failures too
  test('createPost returns an error message upon failure', () async {
    // Test NetworkFailure handling
    when(repository.createPost(newPost)).thenThrow(NetworkFailure('message'));

    final result = await testSubject(newPost);

    expect(result.isLeft(), true);
    result.fold((l) => expect(l.message, 'message'), null);

    // Test CacheFailure handling
    when(repository.createPost(newPost)).thenThrow(CacheFailure('message'));

    final result2 = await testSubject(newPost);

    expect(result2.isLeft(), true);
    result2.fold((l) => expect(l.message, 'message'), null);
  });
}
