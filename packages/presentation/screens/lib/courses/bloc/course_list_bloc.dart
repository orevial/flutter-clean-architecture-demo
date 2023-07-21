import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'course_list_event.dart';

part 'course_list_state.dart';

part 'generated/course_list_bloc.freezed.dart';

@injectable
class CourseListBloc extends Bloc<CourseListEvent, CourseListState> {
  final GetCoursesUseCase usecase;

  CourseListBloc(this.usecase) : super(const CourseListState.initial()) {
    on<CourseListEvent>(
      (event, emit) => event.map(
        load: (event) => _onLoad(emit),
        retry: (event) => _onRetry(),
      ),
    );

    add(const CourseListEvent.load());
  }

  Future<void> _onLoad(
    Emitter<CourseListState> emit,
  ) async {
    emit(const CourseListState.loading());

    try {
      final courses = await usecase.call();
      emit(CourseListState.content(courses));
    } catch (err, st) {
      debugPrint('Exception: $err - $st');
      emit(const CourseListState.error());
    }
  }

  void _onRetry() {
    add(const CourseListEvent.load());
  }
}
