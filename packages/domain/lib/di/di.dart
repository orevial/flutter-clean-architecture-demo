import 'package:core/core.dart';
import 'package:domain/di/di.config.dart';
import 'package:injectable/injectable.dart';

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
