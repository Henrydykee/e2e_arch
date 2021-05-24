import 'package:dartz/dartz.dart';
import 'package:e2e_arch/core/failures.dart';
import 'package:e2e_arch/core/usecase_typedefs.dart';
import 'package:e2e_arch/core/utilities/error_helpers.dart';
import 'package:e2e_arch/features/user/domain/repositories/user_repository.dart';

class ResetPoints implements Usecase<VoidType, int> {
  final UserRepository _userRepository;

  ResetPoints(this._userRepository);

  @override
  Future<Either<UIError, VoidType>> call([params]) async {
    try {
      await _userRepository.resetPoints();
      return const Right(VoidType());
    } on NetworkFailure catch (e, s) {
      return Left(getUIErrorFromUsecaseFailure(e.message, e, s));
    } on CacheFailure catch (e, s) {
      return Left(getUIErrorFromUsecaseFailure(e.message, e, s));
    }
  }
}
