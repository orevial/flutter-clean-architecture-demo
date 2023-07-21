import 'package:core/core.dart';
import 'package:injectable/injectable.dart';
import 'package:screens/common/di/di.config.dart';

@InjectableInit()
void configureDependencies({
  required String env,
  bool isTest = false,
}) {
  getIt.init(environment: env);
  if (isTest) {
    getIt.allowReassignment = true;
  }
}
