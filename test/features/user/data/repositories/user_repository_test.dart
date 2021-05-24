import 'package:e2e_arch/core/data/network/network_service_impl.dart';
import 'package:e2e_arch/core/failures.dart';
import 'package:e2e_arch/features/user/data/datasources/user_local_datasource.dart';
import 'package:e2e_arch/features/user/data/datasources/user_remote_datasource.dart';
import 'package:e2e_arch/features/user/data/repositories/user_repository_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../fixtures/user_data.dart';

class MockRemoteDataSource extends Mock implements UserRemoteDatasource {}

class MockLocalDataSource extends Mock implements UserLocalDatasource {}

void main() {
  UserRepositoryImpl testSubject;
  final remoteDatasource = MockRemoteDataSource();
  final localDatasource = MockLocalDataSource();

  setUp(() {
    testSubject = UserRepositoryImpl(remoteDatasource, localDatasource);
  });

  group('fetchUser', () {
    test(' calls remoteDatasource\'s fetchUser', () {
      testSubject.fetchUser();

      verify(remoteDatasource.fetchUser());
      verifyNoMoreInteractions(remoteDatasource);

      // Need this to reset the interactions on mocked object
      clearInteractions(remoteDatasource);
    });

    test(' returns a UserModel from server', () async {
      when(remoteDatasource.fetchUser()).thenAnswer((_) async => userModel);

      final _user = await testSubject.fetchUser();
      expect(_user, userModel);
    });

    group('Error handling', () {
      test('Throws a NetworkFailure on network operation exception', () {
        when(remoteDatasource.fetchUser())
            .thenThrow(ApiFailure(ApiErrors.failure, ''));

        expectLater(() async => testSubject.fetchUser(),
            throwsA(isA<NetworkFailure>()));
      });
    });
  });

  group('resetPoints', () {
    test(' calls localDatasource\'s updateUserPoints with isReset set to true',
        () {
      testSubject.resetPoints();

      verify(localDatasource.updateUserPoints(isReset: true));
      verifyNoMoreInteractions(localDatasource);

      // Need this to reset the interactions on mocked object
      clearInteractions(localDatasource);
    });

    group('Error handling', () {
      test('Throws a CacheFailure on db operation exception', () {
        when(localDatasource.updateUserPoints(isReset: anyNamed('isReset')))
            .thenThrow(DBFailure('error'));

        expectLater(() async => testSubject.resetPoints(),
            throwsA(isA<CacheFailure>()));
      });
    });
  });
}
