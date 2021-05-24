import 'package:dartz/dartz.dart';
import 'package:e2e_arch/core/failures.dart';
import 'package:e2e_arch/core/usecase_typedefs.dart';
import 'package:e2e_arch/core/utilities/error_helpers.dart';
import 'package:e2e_arch/features/posts/domain/models/post_model.dart';
import 'package:e2e_arch/features/posts/domain/repositories/posts_repository.dart';

class CreatePost implements Usecase<VoidType, PostModel> {
  CreatePost(this._postsRepository);
  final PostsRepository _postsRepository;

  @override
  Future<Either<UIError, VoidType>> call([post]) async {
    Usecase.assertParamsRequired(post);

    try {
      await _postsRepository.createPost(post);
      return const Right(VoidType());
    } on NetworkFailure catch (e, s) {
      return Left(getUIErrorFromUsecaseFailure(e.message, e, s));
    } on CacheFailure catch (e, s) {
      return Left(getUIErrorFromUsecaseFailure(e.message, e, s));
    }
  }
}
