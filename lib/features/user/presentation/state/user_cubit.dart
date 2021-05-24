import 'package:e2e_arch/features/user/data/datasources/user_local_datasource.dart';
import 'package:e2e_arch/features/user/domain/models/user_model.dart';
import 'package:e2e_arch/features/user/domain/usecases/fetch_user.dart';
import 'package:e2e_arch/features/user/domain/usecases/reset_points.dart';
import 'package:e2e_arch/features/user/domain/user_module_injector.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'user_cubit.freezed.dart';
part 'user_cubit.g.dart';
part 'user_state.dart';

class UserCubit extends HydratedCubit<UserState> {
  final FetchUser _fetchUser;
  final ResetPoints _resetPoints;

  static const _initialUserState = UserState.initial(
    payload: UserStatePayload(
      user: null,
      error: '',
    ),
  );

  UserCubit(this._fetchUser, this._resetPoints) : super(_initialUserState) {
    UserModuleInjector.resolve<UserLocalDatasource>()
        .userPointsStreamController
        .stream
        .listen((reset) {
      emit(
        state.copyWith.payload
            .user(points: reset ? 0 : state.payload.user.points + 2),
      );
    });
  }

  Future<void> fetchUser() async {
    if (state.payload.user != null) {
      // We already have a cached user which should only be replaced when the
      // app data is deleted. Ahbeg return.
      return;
    }

    emit(UserState.loading(payload: state.payload.copyWith()));
    final res = await _fetchUser();

    res.fold(
      (l) => emit(
          UserState.error(payload: state.payload.copyWith(error: l.message))),
      (r) {
        if (r == null) {
          emit(UserState.error(
              payload: state.payload.copyWith(error: "No user found")));
        } else {
          emit(UserState.loaded(payload: state.payload.copyWith(user: r)));
        }
      },
    );
  }

  Future<void> resetPoints() async {
    final res = await _resetPoints();

    res.fold(
      (l) => emit(
          UserState.error(payload: state.payload.copyWith(error: l.message))),
      (r) => emit(UserState.loaded(payload: state.payload.copyWith())),
    );
  }

  @override
  UserState fromJson(Map json) {
    try {
      return UserState.fromJson(
          Map.castFrom<dynamic, dynamic, String, dynamic>(json));
    } catch (_) {
      return _initialUserState;
    }
  }

  @override
  Map<String, dynamic> toJson(UserState state) => state.toJson();
}
