import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:screens/screens.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

@lazySingleton
class AppRouter {
  final goRouter = GoRouter(
    initialLocation: getIt<CoursesFlow>().startingRoutePath,
    navigatorKey: _rootNavigatorKey,
    routes: [
      getIt<CoursesFlow>().routes(_rootNavigatorKey),
      getIt<SettingsFlow>().routes(_rootNavigatorKey),
    ],
  );
}
