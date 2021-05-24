// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posts_module_injector.dart';

// **************************************************************************
// KiwiInjectorGenerator
// **************************************************************************

class _$PostsModuleInjector extends PostsModuleInjector {
  @override
  void _configure() {
    final KiwiContainer container = KiwiContainer();
    container.registerFactory<PostsRemoteDatasource>(
        (c) => PostsRemoteDatasourceImpl(c<NetworkService>()));
    container.registerFactory<PostsRepository>((c) => PostsRepositoryImpl(
        c<PostsRemoteDatasource>(), c<UserLocalDatasource>()));
    container.registerSingleton((c) => CreatePost(c<PostsRepository>()));
    container.registerSingleton((c) => FetchPosts(c<PostsRepository>()));
  }
}
