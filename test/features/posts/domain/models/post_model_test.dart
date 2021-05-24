import 'package:e2e_arch/features/posts/domain/models/post_model.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../fixtures/posts_data.dart';

void main() {
  test('fromJson returns a PostModel',
      () => expect(PostModel.fromJson(postJson), postModel));
  test('toJson returns a valid Map<String, dynamic>',
      () => expect(postModel.toJson(), postJson));
}
