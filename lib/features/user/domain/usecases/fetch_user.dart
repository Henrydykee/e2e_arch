import 'package:dartz/dartz.dart';
import 'package:e2e_arch/core/failures.dart';
import 'package:e2e_arch/core/usecase_typedefs.dart';
import 'package:e2e_arch/core/utilities/error_helpers.dart';
import 'package:e2e_arch/features/user/domain/models/user_model.dart';
import 'package:e2e_arch/features/user/domain/repositories/user_repository.dart';

class FetchUser implements Usecase<UserModel, NoParams> {
  FetchUser(this._userRepository);
  final UserRepository _userRepository;

  @override
  Future<Either<UIError, UserModel>> call([params]) async {
    try {
      return Right(await _userRepository.fetchUser());
    } on NetworkFailure catch (e, s) {
      return Left(getUIErrorFromUsecaseFailure(e.message, e, s));
    } on CacheFailure catch (e, s) {
      return Left(getUIErrorFromUsecaseFailure(e.message, e, s));
    }
  }
}
