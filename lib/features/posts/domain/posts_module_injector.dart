import 'package:e2e_arch/core/data/network/network_service.dart';
import 'package:e2e_arch/features/posts/data/datasources/posts_remote_datasource.dart';
import 'package:e2e_arch/features/posts/data/repositories/posts_repository_impl.dart';
import 'package:e2e_arch/features/posts/domain/usecases/create_post.dart';
import 'package:e2e_arch/features/posts/domain/usecases/fetch_posts.dart';
import 'package:e2e_arch/features/user/data/datasources/user_local_datasource.dart';
import 'package:kiwi/kiwi.dart';

import 'repositories/posts_repository.dart';

part 'posts_module_injector.g.dart';

abstract class PostsModuleInjector {
  static KiwiContainer container;
  static final resolve = container.resolve;

  void setup() {
    container = KiwiContainer();
    _$PostsModuleInjector()._configure();
  }

  @Register.factory(PostsRemoteDatasource, from: PostsRemoteDatasourceImpl)
  @Register.factory(PostsRepository, from: PostsRepositoryImpl)
  @Register.singleton(CreatePost)
  @Register.singleton(FetchPosts)
  void _configure(); // ignore: unused_element
}

PostsModuleInjector postsModuleInjector() => _$PostsModuleInjector();
