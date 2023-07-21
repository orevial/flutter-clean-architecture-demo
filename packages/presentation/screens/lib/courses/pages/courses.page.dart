import 'package:core/helpers/helpers.dart';
import 'package:domain/entities/course.entity.dart';
import 'package:domain/entities/user_progress.entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:screens/common/l10n/build_context_extension.dart';
import 'package:screens/common/widgets/page_content_error.widget.dart';
import 'package:screens/common/widgets/page_content_loading.widget.dart';
import 'package:screens/courses/bloc/course_list_bloc.dart';
import 'package:screens/courses/bloc/course_progress_bloc.dart';
import 'package:screens/courses/pages/courses.flow.dart';
import 'package:screens/navigation/routing_flow.dart';

class CoursesPage extends StatelessWidget {
  final CoursesNavigation navigation;

  const CoursesPage({
    required this.navigation,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const FlutterLogo(),
            const SizedBox(width: 10),
            Text(context.translations.course_list_title),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.light_mode),
            onPressed: () {
              navigation.openSettings(context);
            },
          ),
        ],
      ),
      body: BlocBuilder<CourseListBloc, CourseListState>(
        builder: (context, state) => state.map(
          initial: (state) => const SizedBox(),
          loading: (state) => const PageContentLoading(),
          content: (state) => _CourseListContent(state.courses),
          error: (state) => PageContentError(
            onRetry: () => context
                .read<CourseListBloc>()
                .add(const CourseListEvent.retry()),
          ),
        ),
      ),
    );
  }
}

class _CourseListContent extends StatelessWidget {
  final List<Course> courses;

  const _CourseListContent(this.courses);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CourseProgressBloc, CourseProgressState>(
      builder: (context, state) {
        final progresses = state.maybeMap(
          content: (content) => content.CourseProgresses,
          orElse: () => <CourseProgress>[],
        );
        return ListView(
          children: [
            for (Course course in courses)
              if (course.id != 'do_not_put_there')
                _CourseTile(
                  course,
                  progresses,
                ),
          ],
        );
      },
    );
  }
}

class _CourseTile extends StatelessWidget {
  final Course course;
  final List<CourseProgress>? progresses;

  const _CourseTile(this.course, this.progresses);

  @override
  Widget build(BuildContext context) {
    final courseProgress = progresses?.firstWhere(
          (p) => p.courseId == course.id,
          orElse: () => CourseProgress.defaultProgress(course.id),
        ) ??
        CourseProgress.defaultProgress(course.id);

    final double progressPercentage =
        courseProgress.progressPercentage(course.pages.length);
    final initialPage = courseProgress.isOver ? 0 : courseProgress.currentPage;
    final IconData icon = courseProgress.icon(course.pages.length);

    Widget tile() {
      return ListTile(
        trailing: Container(
          decoration: BoxDecoration(
            color: progressPercentage > 0 ? Colors.green.shade800 : Colors.blue,
            shape: BoxShape.circle,
          ),
          width: 40,
          height: 40,
          child: Center(
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
        ),
        title: Text(course.name),
      );
    }

    Widget progressBar() {
      return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.green.shade200,
              Colors.green.shade800,
              Colors.transparent,
            ],
            stops: [
              0,
              progressPercentage,
              progressPercentage,
            ],
          ),
        ),
        height: 5,
        width: double.infinity,
      );
    }

    return InkWell(
      onTap: () {
        if (courseProgress.isOver) {
          context.read<CourseProgressBloc>().add(
                CourseProgressEvent.updateProgress(
                  course.id,
                  initialPage,
                  isOver: false,
                ),
              );
        }
        context.go(
          getIt<CoursesFlow>().courseDetailsPath(),
          extra: CoursePageParams(course, initialPage),
        );
      },
      child: Card(
        margin: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            tile(),
            progressBar(),
          ],
        ),
      ),
    );
  }
}

extension CourseProgressX on CourseProgress {
  IconData icon(int coursePages) {
    if (isOver) {
      return Icons.restart_alt;
    } else if (progressPercentage(coursePages) == 0.0) {
      return Icons.school;
    } else {
      return Icons.play_arrow;
    }
  }
}
