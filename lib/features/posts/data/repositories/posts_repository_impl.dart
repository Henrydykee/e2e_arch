import 'package:e2e_arch/core/utilities/data/guarded_datasource_calls.dart';
import 'package:e2e_arch/features/posts/data/datasources/posts_remote_datasource.dart';
import 'package:e2e_arch/features/posts/domain/models/post_model.dart';
import 'package:e2e_arch/features/posts/domain/repositories/posts_repository.dart';
import 'package:e2e_arch/features/user/data/datasources/user_local_datasource.dart';

class PostsRepositoryImpl implements PostsRepository {
  final PostsRemoteDatasource _remoteDatasource;
  final UserLocalDatasource _userLocalDatasource;

  PostsRepositoryImpl(this._remoteDatasource, this._userLocalDatasource);

  @override
  Future<List<PostModel>> fetchPosts() async {
    final res =
        await guardedApiCall<List<PostModel>>(_remoteDatasource.fetchPosts);
    return res;
  }

  @override
  Future<void> createPost(PostModel post) async {
    await guardedApiCall<void>(() => _remoteDatasource.createPost(post));
    await _userLocalDatasource.updateUserPoints();
  }
}
