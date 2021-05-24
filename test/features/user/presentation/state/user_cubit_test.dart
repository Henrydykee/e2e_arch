import 'package:dartz/dartz.dart';
import 'package:e2e_arch/core/di/configure_dependencies.dart';
import 'package:e2e_arch/core/failures.dart';
import 'package:e2e_arch/core/usecase_typedefs.dart';
import 'package:e2e_arch/features/user/domain/usecases/fetch_user.dart';
import 'package:e2e_arch/features/user/domain/usecases/reset_points.dart';
import 'package:e2e_arch/features/user/presentation/state/user_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mockito/mockito.dart';

import '../../../../core/mocks/mock_hydtrated_storage.dart';
import '../../fixtures/user_data.dart';

class MockFetchUser extends Mock implements FetchUser {}

class MockResetPoints extends Mock implements ResetPoints {}

Future<void> main() async {
  TestWidgetsFlutterBinding.ensureInitialized();
  HydratedCubit.storage = FakeHydratedStorage();
  configureDependencies();

  final _fetchUser = MockFetchUser();
  final _resetPoints = MockResetPoints();

  // Mock Usecase Responses
  when(_fetchUser.call(any)).thenAnswer((_) async => const Right(userModel));
  when(_resetPoints.call(any)).thenAnswer((_) async => const Right(VoidType()));

  group('User Cubit', () {
    test(
      'Initial behaviour: UserCubit is initialised with null user and empty error',
      () {
        final cubit = UserCubit(_fetchUser, _resetPoints);
        expect(cubit.state.payload.user, null);
        expect(cubit.state.payload.error, '');
      },
    );

    test(
      'UserCubit fromJson returns a valid UserState, even with badly formed data',
      () {
        final cubit = UserCubit(_fetchUser, _resetPoints);
        expect(cubit.fromJson({}), isA<UserState>());
        expect(
          cubit.fromJson({'wrong': 'data'}),
          const UserState.initial(
              payload: UserStatePayload(user: null, error: '')),
        );
      },
    );

    group("UserCubit fetchUser", () {
      test(
          ' emits loading, then loaded, with payload populated with returned data; and does not work anymore for further calls',
          () async {
        final cubit = UserCubit(_fetchUser, _resetPoints);

        // ignore: unawaited_futures
        expectLater(
            cubit,
            emitsInOrder(<UserState>[
              UserState.loading(
                  payload: cubit.state.payload.copyWith(user: null)),
              UserState.loaded(
                  payload: cubit.state.payload.copyWith(user: userModel)),
            ]));

        await cubit.fetchUser();
        verify(_fetchUser.call());

        clearInteractions(_fetchUser);
        await cubit.fetchUser();
        verifyZeroInteractions(_fetchUser);
      });

      test(
          ' emits loading, then error, with error message, if something goes wrong',
          () async {
        final cubit = UserCubit(_fetchUser, _resetPoints);

        when(_fetchUser.call(any))
            .thenAnswer((_) async => const Left(UIError('error')));

        // ignore: unawaited_futures
        expectLater(
            cubit,
            emitsInOrder(<UserState>[
              UserState.loading(
                  payload: cubit.state.payload.copyWith(user: null)),
              UserState.error(
                  payload: cubit.state.payload.copyWith(error: 'error')),
            ]));

        await cubit.fetchUser();

        verify(_fetchUser.call());
      });
    });

    group("UserCubit resetPoints", () {
      test(
          ' (once a user is loaded) emits loaded, with user payload\'s points set to 0',
          () async {
        final cubit = UserCubit(_fetchUser, _resetPoints);

        // Simulate previous loading of user
        cubit.emit(cubit.state.copyWith.payload(user: userModel));

        // ignore: unawaited_futures
        expectLater(
            cubit,
            emitsInOrder(<UserState>[
              UserState.loaded(
                  payload: cubit.state.payload
                      .copyWith(user: userModel.copyWith(points: 0))),
            ]));

        await cubit.resetPoints();
        verify(_resetPoints.call());

        clearInteractions(_resetPoints);
      });

      test(
          ' emits loading, then error, with error message, if something goes wrong',
          () async {
        final cubit = UserCubit(_fetchUser, _resetPoints);

        when(_resetPoints.call(any))
            .thenAnswer((_) async => const Left(UIError('error')));

        // ignore: unawaited_futures
        expectLater(
            cubit,
            emitsInOrder(<UserState>[
              UserState.error(
                  payload: cubit.state.payload.copyWith(error: 'error')),
            ]));

        await cubit.resetPoints();

        verify(_resetPoints.call());
      });
    });
  });
}
