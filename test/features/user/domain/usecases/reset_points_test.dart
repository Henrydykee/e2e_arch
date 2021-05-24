import 'package:e2e_arch/core/failures.dart';
import 'package:e2e_arch/features/user/domain/repositories/user_repository.dart';
import 'package:e2e_arch/features/user/domain/usecases/reset_points.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockUserRepository extends Mock implements UserRepository {}

void main() {
  ResetPoints testSubject;

  MockUserRepository repository;

  setUp(() {
    repository = MockUserRepository();
    testSubject = ResetPoints(repository);
  });

  test('ResetPoints calls UserRepository\'s resetPoints', () {
    testSubject();

    verify(repository.resetPoints());
    verifyNoMoreInteractions(repository);

    clearInteractions(repository);
  });

  // Test failures too
  test('ResetPoints returns an error message upon failure', () async {
    // Test CacheFailure handling
    when(repository.resetPoints()).thenThrow(CacheFailure('message'));

    final result = await testSubject();

    expect(result.isLeft(), true);
    result.fold((l) => expect(l.message, 'message'), null);
  });
}
