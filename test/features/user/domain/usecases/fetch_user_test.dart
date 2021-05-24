import 'package:e2e_arch/core/failures.dart';
import 'package:e2e_arch/features/user/domain/repositories/user_repository.dart';
import 'package:e2e_arch/features/user/domain/usecases/fetch_user.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../fixtures/user_data.dart';

class MockUserRepository extends Mock implements UserRepository {}

void main() {
  FetchUser testSubject;

  MockUserRepository repository;

  setUp(() {
    repository = MockUserRepository();
    testSubject = FetchUser(repository);
  });

  test('fetchUser calls UserRepository\'s fetchUser', () {
    testSubject();

    verify(repository.fetchUser());
    verifyNoMoreInteractions(repository);

    // Need this to reset the interactions on mocked object
    clearInteractions(repository);
  });

  test('fetchUser returns a user model', () async {
    when(repository.fetchUser()).thenAnswer((_) async => userModel);

    final result = await testSubject();

    expect(result.isRight(), true);
    result.fold(null, (r) => expect(r, userModel));
  });

  // Test failures too
  test('fetchUser returns an error message upon failure', () async {
    // Test NetworkFailure handling
    when(repository.fetchUser()).thenThrow(NetworkFailure('message'));

    final result = await testSubject();

    expect(result.isLeft(), true);
    result.fold((l) => expect(l.message, 'message'), null);

    // Test CacheFailure handling
    when(repository.fetchUser()).thenThrow(CacheFailure('message'));

    final result2 = await testSubject();

    expect(result2.isLeft(), true);
    result2.fold((l) => expect(l.message, 'message'), null);
  });
}
