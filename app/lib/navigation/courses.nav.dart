import 'package:core/helpers/helpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:screens/navigation/routing_flow.dart';
import 'package:screens/screens.dart';

@LazySingleton(as: CoursesNavigation)
class CoursesNavigationImpl implements CoursesNavigation {
  @override
  void openSettings(BuildContext context) {
    context.push(getIt<SettingsFlow>().startingRoutePath);
  }
}
