import 'dart:async';
import 'package:e2e_arch/core/data/datasources/local_datasource_base.dart';
import 'package:e2e_arch/features/user/domain/models/user_model.dart';

abstract class UserLocalDatasource implements LocalDatasource<UserModel> {
  Future<void> updateUserPoints({bool isReset = false});
  StreamController<bool> get userPointsStreamController;
}

class UserLocalDatasourceImpl implements UserLocalDatasource {
  static final StreamController<UserModel> _streamController =
      StreamController.broadcast();
  static final StreamController<bool> _userPointsStreamController =
      StreamController.broadcast();

  UserLocalDatasourceImpl();

  @override
  StreamController<UserModel> get dataStreamController => _streamController;

  @override
  StreamController<bool> get userPointsStreamController =>
      _userPointsStreamController;

  @override
  void dispose() {
    _streamController.close();
    _userPointsStreamController.close();
  }

  @override
  Future<void> updateUserPoints({bool isReset = false}) async {
    // This here is an obvious indirection, because of the convenience of HydratedCubits,
    // there's no actual manual caching here. But this is still done to keep in line with
    // the convention (and illusion, in this case) that all cache-releted operations are
    // handled from the local datasource.
    //
    // In this case, the bloc which is listening to this stream would emit a new state,
    // during which the user points would be updated or reset, and that triggers
    // HyrdatedCubit to update its cache.
    _userPointsStreamController.add(isReset);
  }
}
