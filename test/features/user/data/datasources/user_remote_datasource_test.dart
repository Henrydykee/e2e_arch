import 'package:e2e_arch/core/data/network/network_service.dart';
import 'package:e2e_arch/core/data/network/network_service_impl.dart';
import 'package:e2e_arch/core/failures.dart';
import 'package:e2e_arch/features/user/data/datasources/user_remote_datasource.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../fixtures/user_data.dart';

class MockNetworkService extends Mock implements NetworkService {}

void main() {
  UserRemoteDatasourceImpl testSubject;
  final networkService = MockNetworkService();

  setUp(() {
    testSubject = UserRemoteDatasourceImpl(networkService);
  });

  group('Operations', () {
    test('fetchUsers returns a successfully deserialised UserModel from server',
        () async {
      when(networkService.getHttp(argThat(isA<String>())))
          .thenAnswer((_) async => {
                "data": [userJson, userJson],
                "error": null,
              });

      final result = await testSubject.fetchUser();

      expect(result, userModel);
    });
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
          () async => testSubject.fetchUser(), throwsA(isA<ApiFailure>()));
    });

    test('Throws an Exception on unexpected exception', () {
      when(networkService.getHttp(argThat(isA<String>())))
          .thenThrow(Exception());

      expect(() => testSubject.fetchUser(), throwsA(isA<Exception>()));
    });
  });
}
