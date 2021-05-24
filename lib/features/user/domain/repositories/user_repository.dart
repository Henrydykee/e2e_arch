import 'package:e2e_arch/features/user/domain/models/user_model.dart';

abstract class UserRepository {
  Future<UserModel> fetchUser();
  Future<void> resetPoints();
}
