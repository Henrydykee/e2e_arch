import 'package:e2e_arch/core/data/network/network_service_impl.dart';
import 'package:e2e_arch/core/failures.dart';
import 'package:e2e_arch/features/posts/data/datasources/posts_remote_datasource.dart';
import 'package:e2e_arch/features/posts/data/repositories/posts_repository_impl.dart';
import 'package:e2e_arch/features/user/data/datasources/user_local_datasource.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../fixtures/posts_data.dart';

class MockRemoteDataSource extends Mock implements PostsRemoteDatasource {}

class MockUserLocalDataSource extends Mock implements UserLocalDatasource {}

void main() {
  PostsRepositoryImpl testSubject;
  final remoteDatasource = MockRemoteDataSource();
  final userLocalDataSource = MockUserLocalDataSource();

  setUp(() {
    testSubject = PostsRepositoryImpl(remoteDatasource, userLocalDataSource);
  });

  group('fetchPosts', () {
    test(' calls remoteDatasource\'s fetchPosts', () {
      testSubject.fetchPosts();

      verify(remoteDatasource.fetchPosts());
      verifyNoMoreInteractions(remoteDatasource);

      // Need this to reset the interactions on mocked object
      clearInteractions(remoteDatasource);
    });

    test(' returns a list of PostModels from server', () async {
      when(remoteDatasource.fetchPosts()).thenAnswer((_) async => postsSample);
      final _posts = await testSubject.fetchPosts();

      expect(_posts, postsSample);
    });

    group('Error handling', () {
      test('Throws a NetworkFailure on network operation exception', () {
        when(remoteDatasource.fetchPosts())
            .thenThrow(ApiFailure(ApiErrors.failure, ''));

        expectLater(() async => testSubject.fetchPosts(),
            throwsA(isA<NetworkFailure>()));
      });
    });
  });

  group('createPost', () {
    group(' successful call', () {
      test(' calls remoteDatasource\'s createPost', () {
        clearInteractions(remoteDatasource);
        testSubject.createPost(newPost);

        verify(remoteDatasource.createPost(newPost));
        verifyNoMoreInteractions(remoteDatasource);

        // Need this to reset the interactions on mocked object
        clearInteractions(remoteDatasource);
        clearInteractions(userLocalDataSource);
      });

      test(' calls userLocalDataSource\'s updateUserPoints', () async {
        await testSubject.createPost(newPost);

        verify(userLocalDataSource.updateUserPoints());

        verifyNoMoreInteractions(userLocalDataSource);

        clearInteractions(remoteDatasource);
        clearInteractions(userLocalDataSource);
      });
    });

    group('Error handling', () {
      test('Throws a NetworkFailure on network operation exception', () {
        when(remoteDatasource.createPost(newPost))
            .thenThrow(ApiFailure(ApiErrors.failure, ''));

        expectLater(() async => testSubject.createPost(newPost),
            throwsA(isA<NetworkFailure>()));
      });
    });
  });
}
