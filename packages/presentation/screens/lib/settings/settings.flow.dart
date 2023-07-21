import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:screens/navigation/routing_flow.dart';
import 'package:screens/settings/bloc/theme_bloc.dart';
import 'package:screens/settings/settings_page.dart';

@LazySingleton()
class SettingsFlow extends BasicRoutingFlow {
  @override
  String get startingRoutePath => '/settings';

  @override
  RouteBase routes(GlobalKey<NavigatorState> rootNavigatorKey) {
    return GoRoute(
      parentNavigatorKey: rootNavigatorKey,
      path: startingRoutePath,
      name: startingRoutePath,
      builder: (context, state) => BlocProvider.value(
        value: getIt<ThemeBloc>(),
        child: const SettingsPage(),
      ),
    );
  }
}
