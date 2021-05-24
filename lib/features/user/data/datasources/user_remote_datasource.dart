import 'dart:async';
import 'dart:math';
import 'package:e2e_arch/core/data/datasources/remote_datasource_base.dart';
import 'package:e2e_arch/core/data/network/network_service.dart';
import 'package:e2e_arch/core/data/network/network_service_impl.dart';
import 'package:e2e_arch/core/utilities/error_helpers.dart';
import 'package:e2e_arch/features/user/domain/models/user_model.dart';

abstract class UserRemoteDatasource implements RemoteDatasource {
  Future<UserModel> fetchUser();
}

class UserRemoteDatasourceImpl implements UserRemoteDatasource {
  final NetworkService _networkService;

  UserRemoteDatasourceImpl(this._networkService);

  @override
  Future<UserModel> fetchUser() async {
    final _result = await _networkService.getHttp('/users');

    if (_result['error'] != null) {
      await handleApiFailure(
        source: 'fetchUser',
        errorMessage: _result['message'] as String,
        errorCode: _result['error'] as ApiErrors,
      );

      return null;
    } else {
      if (_result['data'] is! List) {
        return null;
      }

      // Randomly select a user from list
      final List data = _result['data'] as List;
      final userJson =
          data[Random().nextInt(data.length)] as Map<String, dynamic>;

      return UserModel.fromJson(userJson);
    }
  }

  @override
  void dispose() {}
}
