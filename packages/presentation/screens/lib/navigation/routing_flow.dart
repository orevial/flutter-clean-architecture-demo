import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class _BaseRoutingFlow {
  RouteBase routes(GlobalKey<NavigatorState> rootNavigatorKey);
}

abstract class BasicRoutingFlow extends _BaseRoutingFlow {
  String get startingRoutePath;

  String completeRoute(String subroutePath) {
    if (subroutePath.startsWith('/')) {
      return '$startingRoutePath$subroutePath';
    }
    return '$startingRoutePath/$subroutePath';
  }
}

abstract class ParameteredRoutingFlow<T> extends _BaseRoutingFlow {
  String startingRoutePath(T params);

  String completeRoute(String subroutePath, T params) {
    if (subroutePath.startsWith('/')) {
      return '${startingRoutePath(params)}$subroutePath';
    }
    return '${startingRoutePath(params)}/$subroutePath';
  }
}

abstract class CoursesNavigation {
  void openSettings(BuildContext context);
}
