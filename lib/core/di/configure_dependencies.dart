import 'package:e2e_arch/features/posts/domain/posts_module_injector.dart';
import 'package:e2e_arch/features/user/domain/user_module_injector.dart';

import 'core_injector.dart';

void configureDependencies() {
  coreInjector().setup();
  postsModuleInjector().setup();
  userModuleInjector().setup();
}
