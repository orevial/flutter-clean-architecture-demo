import 'package:domain/entities/course.entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:screens/common/l10n/build_context_extension.dart';
import 'package:screens/courses/bloc/course_progress_bloc.dart';
import 'package:screens/courses/widgets/course_progress_indicator.widget.dart';

class CourseDetailsPage extends StatefulWidget {
  final Course course;
  final int initialPage;

  const CourseDetailsPage({
    required this.course,
    required this.initialPage,
    super.key,
  });

  @override
  State<CourseDetailsPage> createState() => _CourseDetailsPageState();
}

class _CourseDetailsPageState extends State<CourseDetailsPage> {
  late final _pageController = PageController(initialPage: widget.initialPage);

  int get currentPage => _pageController.hasClients
      ? _pageController.page!.round()
      : widget.initialPage;

  bool get hasPages => widget.course.pages.isNotEmpty;

  bool get isLastPage =>
      hasPages && currentPage == widget.course.pages.length - 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.course.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: widget.course.pages.isNotEmpty
            ? _courseContent()
            : Center(
                child: Text(context.translations.course_details_doesnt_exist),
              ),
      ),
      floatingActionButton: isLastPage
          ? FloatingActionButton(
              key: const Key('terminate-course-fab'),
              onPressed: () {
                context.read<CourseProgressBloc>().add(
                      CourseProgressEvent.updateProgress(
                        widget.course.id,
                        currentPage,
                        isOver: true,
                      ),
                    );
                context.pop();
              },
              child: const Icon(Icons.check),
            )
          : Container(),
    );
  }

  Widget _courseContent() {
    return Column(
      children: [
        buildPageIndicator(
          currentPage: currentPage,
          totalPages: widget.course.pages.length,
          primaryColor: Theme.of(context).colorScheme.primary,
        ),
        const SizedBox(height: 25),
        Expanded(
          child: PageView(
            controller: _pageController,
            onPageChanged: (_) {
              setState(() {
                context.read<CourseProgressBloc>().add(
                      CourseProgressEvent.updateProgress(
                        widget.course.id,
                        currentPage,
                        isOver: false,
                      ),
                    );
              });
            },
            children: widget.course.pages.map(_coursePageContent).toList(),
          ),
        ),
      ],
    );
  }

  Widget _coursePageContent(CoursePage page) {
    return ListView(
      children: [
        Text(
          page.name,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(page.content),
      ],
    );
  }
}
