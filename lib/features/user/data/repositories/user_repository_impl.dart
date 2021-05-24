import 'package:e2e_arch/core/utilities/data/guarded_datasource_calls.dart';
import 'package:e2e_arch/features/user/data/datasources/user_local_datasource.dart';
import 'package:e2e_arch/features/user/data/datasources/user_remote_datasource.dart';
import 'package:e2e_arch/features/user/domain/models/user_model.dart';
import 'package:e2e_arch/features/user/domain/repositories/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UserRemoteDatasource _remoteDatasource;
  final UserLocalDatasource _localDatasource;

  UserRepositoryImpl(this._remoteDatasource, this._localDatasource);

  @override
  Future<UserModel> fetchUser() async {
    final res = await guardedApiCall<UserModel>(_remoteDatasource.fetchUser);
    return res;
  }

  @override
  Future<void> resetPoints() async => guardedCacheAccess<UserModel>(
      () => _localDatasource.updateUserPoints(isReset: true));
}
