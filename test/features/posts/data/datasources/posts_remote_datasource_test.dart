import 'package:e2e_arch/core/data/network/network_service.dart';
import 'package:e2e_arch/core/data/network/network_service_impl.dart';
import 'package:e2e_arch/core/failures.dart';
import 'package:e2e_arch/features/posts/data/datasources/posts_remote_datasource.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../fixtures/posts_data.dart';

class MockNetworkService extends Mock implements NetworkService {}

void main() {
  PostsRemoteDatasourceImpl testSubject;
  final networkService = MockNetworkService();

  setUp(() {
    testSubject = PostsRemoteDatasourceImpl(networkService);
  });

  group('fetchPosts', () {
    test(' returns a successfully deserialised List<PostModel> from server',
        () async {
      when(networkService.getHttp(argThat(isA<String>())))
          .thenAnswer((_) async => {
                "data": postsSampleJson,
                "error": null,
              });

      final result = await testSubject.fetchPosts();

      expect(result, postsSample);
    });

    group('Error handling', () {
      test('Throws an ApiFailure on server error', () {
        when(networkService.getHttp(argThat(isA<String>()))).thenAnswer(
          (_) async => <String, dynamic>{
            'error': ApiErrors.failure,
            'message': 'error',
          },
        );

        expectLater(
            () async => testSubject.fetchPosts(), throwsA(isA<ApiFailure>()));
      });

      test('Throws an Exception on unexpected exception', () {
        when(networkService.getHttp(argThat(isA<String>())))
            .thenThrow(Exception());

        expect(() => testSubject.fetchPosts(), throwsA(isA<Exception>()));
      });
    });
  });

  group('createPost', () {
    test(' calls postHttp successfully', () async {
      when(networkService.postHttp(any, body: newPost.toJson()))
          .thenAnswer((_) async => {
                "data": newPostSampleResponse,
                "error": null,
              });

      await testSubject.createPost(newPost);

      verify(networkService.postHttp(any, body: newPost.toJson()));
    });

    group('Error handling', () {
      test('Throws an ApiFailure on server error', () {
        when(networkService.postHttp(any, body: anyNamed('body'))).thenAnswer(
          (_) async => <String, dynamic>{
            'error': ApiErrors.failure,
            'message': 'error',
          },
        );

        expectLater(() async => testSubject.createPost(newPost),
            throwsA(isA<ApiFailure>()));
      });

      test('Throws an Exception on unexpected exception', () {
        when(networkService.postHttp(any, body: anyNamed('body')))
            .thenThrow(Exception());

        expect(
            () => testSubject.createPost(newPost), throwsA(isA<Exception>()));
      });
    });
  });
}
