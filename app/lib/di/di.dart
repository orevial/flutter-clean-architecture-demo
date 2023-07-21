import 'package:core/core.dart';
import 'package:core/di/di.dart' as core_di;
import 'package:data/di/di.dart' as data_di;
import 'package:domain/di/di.dart' as domain_di;
import 'package:flutter_clean_architecture_demo/di/di.config.dart';
import 'package:flutter_clean_architecture_demo/di/di.dart' as app_di;
import 'package:injectable/injectable.dart';
import 'package:screens/common/di/di.dart' as screens_di;

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

void configureAllPackagesDependencies({
  required String envId,
  bool isTest = false,
}) {
  core_di.configureDependencies(env: envId, isTest: isTest);
  data_di.configureDependencies(env: envId, isTest: isTest);
  domain_di.configureDependencies(env: envId, isTest: isTest);
  app_di.configureDependencies(env: envId, isTest: isTest);
  screens_di.configureDependencies(env: envId, isTest: isTest);
}
