import 'package:data/constants.dart';
import 'package:data/helpers/local_storage.dart';
import 'package:data/models/user_progress.model.dart';
import 'package:injectable/injectable.dart';

abstract class UserDataSource {
  Future<List<CourseProgressResponse>> getCourseProgresses();

  Future<void> updateCourseProgress(
    CourseProgressResponse courseProgressResponse,
  );
}

@Injectable(as: UserDataSource)
class UserDataSourceImpl implements UserDataSource {
  final LocalStorage localStorage;

  UserDataSourceImpl({required this.localStorage});

  @override
  Future<List<CourseProgressResponse>> getCourseProgresses() {
    return localStorage
        .readValues(
          StorageKeys.courseProgresses.name,
          converter: CourseProgressResponse.fromJson,
        )
        .then(
          (values) =>
              values?.map((v) => v as CourseProgressResponse).toList() ?? [],
        );
  }

  @override
  Future<void> updateCourseProgress(CourseProgressResponse courseProgress) {
    return getCourseProgresses().then((progresses) {
      final List<CourseProgressResponse> newProgresses;
      final index =
          progresses.indexWhere((p) => p.courseId == courseProgress.courseId);
      if (index == -1) {
        newProgresses = [
          ...progresses,
          courseProgress,
        ];
      } else {
        newProgresses = List.of(progresses)
          ..replaceRange(
            index,
            index + 1,
            [courseProgress],
          );
      }
      return localStorage.saveValues(
        StorageKeys.courseProgresses.name,
        newProgresses,
      );
    });
  }
}
