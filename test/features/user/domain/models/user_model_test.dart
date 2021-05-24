import 'package:e2e_arch/features/user/domain/models/user_model.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../fixtures/user_data.dart';

void main() {
  test('fromJson returns a UserModel',
      () => expect(UserModel.fromJson(userJson), userModel));
  test('toJson returns a valid Map<String, dynamic>',
      () => expect(userModel.toJson(), userJson));
}
