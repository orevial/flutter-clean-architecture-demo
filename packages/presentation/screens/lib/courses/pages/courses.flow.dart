import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:screens/courses/bloc/course_list_bloc.dart';
import 'package:screens/courses/bloc/course_progress_bloc.dart';
import 'package:screens/courses/pages/course_details.page.dart';
import 'package:screens/courses/pages/courses.page.dart';
import 'package:screens/navigation/routing_flow.dart';

const detailsPage = 'details';

@LazySingleton()
class CoursesFlow extends BasicRoutingFlow {
  @override
  String get startingRoutePath => '/courses';

  String courseDetailsPath() {
    return '$startingRoutePath/$detailsPage';
  }

  @override
  RouteBase routes(GlobalKey<NavigatorState> rootNavigatorKey) {
    return GoRoute(
      parentNavigatorKey: rootNavigatorKey,
      path: startingRoutePath,
      name: startingRoutePath,
      builder: (context, state) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<CourseListBloc>(),
          ),
          BlocProvider(
            create: (context) => getIt<CourseProgressBloc>(),
          ),
        ],
        child: CoursesPage(
          navigation: getIt<CoursesNavigation>(),
        ),
      ),
      routes: [
        GoRoute(
          parentNavigatorKey: rootNavigatorKey,
          path: detailsPage,
          name: '$startingRoutePath/$detailsPage',
          pageBuilder: (context, state) {
            final courseProgressBloc = getIt<CourseProgressBloc>();
            final params = state.extra! as CoursePageParams;
            return MaterialPage<void>(
              child: BlocProvider.value(
                value: courseProgressBloc,
                child: CourseDetailsPage(
                  course: params.course,
                  initialPage: params.initialPage,
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}

class CoursePageParams {
  final Course course;
  final int initialPage;

  CoursePageParams(this.course, this.initialPage);
}
