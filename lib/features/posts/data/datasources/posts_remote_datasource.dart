import 'dart:async';

import 'package:Postly/core/data/datasources/remote_datasource_base.dart';
import 'package:Postly/core/data/network/network_service.dart';
import 'package:Postly/core/data/network/network_service_impl.dart';
import 'package:Postly/core/utilities/error_helpers.dart';
import 'package:Postly/features/posts/domain/models/post_model.dart';

abstract class PostsRemoteDatasource implements RemoteDatasource {
  Future<List<PostModel>> fetchPosts();
  Future<void> createPost(PostModel post);
}

class PostsRemoteDatasourceImpl implements PostsRemoteDatasource {
  final NetworkService _networkService;

  PostsRemoteDatasourceImpl(this._networkService);

  @override
  Future<List<PostModel>> fetchPosts() async {
    final _result = await _networkService.getHttp('/posts');

    if (_result['error'] != null) {
      await handleApiFailure(
        source: 'fetchPosts',
        errorMessage: _result['message'] as String,
        errorCode: _result['error'] as ApiErrors,
      );

      return <PostModel>[];
    } else {
      return _result['data'] == null
          ? <PostModel>[]
          : (_result['data'] as List).map((e) => PostModel.fromJson(e as Map<String, dynamic>)).toList();
    }
  }

  @override
  void dispose() {}

  @override
  Future<void> createPost(PostModel post) async {
    final _result = await _networkService.postHttp(
      '/posts',
      body: post.toJson(),
    );

    if (_result['error'] != null) {
      await handleApiFailure(
        source: 'createPost',
        errorMessage: _result['message'] as String,
        errorCode: _result['error'] as ApiErrors,
      );
    }
  }
}
