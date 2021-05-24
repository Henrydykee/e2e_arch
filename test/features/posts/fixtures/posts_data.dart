import 'package:e2e_arch/features/posts/domain/models/post_model.dart';

const PostModel postModel = PostModel(
  userId: 1,
  id: 2,
  title: 'qui est esse',
  body: 'est rerum tempore vitae',
);

const postJson = <String, dynamic>{
  "userId": 1,
  "id": 2,
  "title": "qui est esse",
  "body": "est rerum tempore vitae",
};

const List<PostModel> postsSample = [
  PostModel(id: 1, userId: 1, title: '1', body: '1'),
  PostModel(id: 2, userId: 1, title: '2', body: '2'),
];

const newPost = PostModel(id: 3, userId: 1, title: '3', body: '3');
const newPostSampleResponse = {
  "id": 3,
  "userId": 1,
  "title": "3",
  "body": "3",
};

const postsSampleJson = <Map<String, dynamic>>[
  {"userId": 1, "id": 1, "title": "1", "body": "1"},
  {"userId": 1, "id": 2, "title": "2", "body": "2"}
];
