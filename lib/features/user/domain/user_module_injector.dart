import 'package:e2e_arch/core/data/network/network_service.dart';
import 'package:e2e_arch/features/user/data/datasources/user_local_datasource.dart';
import 'package:e2e_arch/features/user/data/datasources/user_remote_datasource.dart';
import 'package:e2e_arch/features/user/data/repositories/user_repository_impl.dart';
import 'package:e2e_arch/features/user/domain/repositories/user_repository.dart';
import 'package:e2e_arch/features/user/domain/usecases/fetch_user.dart';
import 'package:e2e_arch/features/user/domain/usecases/reset_points.dart';
import 'package:kiwi/kiwi.dart';
import 'package:e2e_arch/core/data/network/network_service.dart';
import 'package:e2e_arch/features/posts/data/datasources/posts_remote_datasource.dart';
import 'package:e2e_arch/features/posts/data/repositories/posts_repository_impl.dart';
part 'user_module_injector.g.dart';

abstract class UserModuleInjector {
  static KiwiContainer container;
  static final resolve = container.resolve;

  void setup() {
    container = KiwiContainer();
    _$UserModuleInjector()._configure();
  }

  @Register.factory(UserRemoteDatasource, from: UserRemoteDatasourceImpl)
  @Register.factory(UserLocalDatasource, from: UserLocalDatasourceImpl)
  @Register.factory(UserRepository, from: UserRepositoryImpl)
  @Register.singleton(FetchUser)
  @Register.singleton(ResetPoints)
  void _configure(); // ignore: unused_element
}

UserModuleInjector userModuleInjector() => _$UserModuleInjector();
