import 'package:bloc/bloc.dart';
import 'package:domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'course_progress_event.dart';

part 'course_progress_state.dart';

part 'generated/course_progress_bloc.freezed.dart';

@singleton
class CourseProgressBloc
    extends Bloc<CourseProgressEvent, CourseProgressState> {
  final GetCoursesProgressesUseCase getCoursesProgressesUseCase;
  final UpdateCourseProgressUseCase updateCourseProgressUseCase;

  CourseProgressBloc(
    this.getCoursesProgressesUseCase,
    this.updateCourseProgressUseCase,
  ) : super(const CourseProgressState.initial()) {
    on<CourseProgressEvent>(
      (event, emit) => event.map(
        load: (event) => _onLoad(emit),
        updateProgress: _onUpdateProgress,
      ),
    );
    add(const CourseProgressEvent.load());
  }

  Future<void> _onLoad(Emitter<CourseProgressState> emit) async {
    final progresses = await getCoursesProgressesUseCase.call();
    emit(CourseProgressState.content(progresses));
  }

  void _onUpdateProgress(_UpdateProgress event) {
    final progress = CourseProgress(
      courseId: event.courseId,
      currentPage: event.currentPage,
      isOver: event.isOver,
    );
    updateCourseProgressUseCase.call(params: progress);
    add(const CourseProgressEvent.load());
  }
}
