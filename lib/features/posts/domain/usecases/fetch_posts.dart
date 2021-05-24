import 'package:dartz/dartz.dart';
import 'package:e2e_arch/core/failures.dart';
import 'package:e2e_arch/core/usecase_typedefs.dart';
import 'package:e2e_arch/core/utilities/error_helpers.dart';
import 'package:e2e_arch/features/posts/domain/models/post_model.dart';
import 'package:e2e_arch/features/posts/domain/repositories/posts_repository.dart';

class FetchPosts implements Usecase<List<PostModel>, NoParams> {
  final PostsRepository _postsRepository;

  FetchPosts(this._postsRepository);

  @override
  Future<Either<UIError, List<PostModel>>> call([params]) async {
    try {
      return Right(await _postsRepository.fetchPosts());
    } on NetworkFailure catch (e, s) {
      return Left(getUIErrorFromUsecaseFailure(e.message, e, s));
    } on CacheFailure catch (e, s) {
      return Left(getUIErrorFromUsecaseFailure(e.message, e, s));
    }
  }
}
