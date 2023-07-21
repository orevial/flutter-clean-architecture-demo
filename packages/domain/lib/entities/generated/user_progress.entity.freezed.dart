// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../user_progress.entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CourseProgress {
  String get courseId => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  bool get isOver => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CourseProgressCopyWith<CourseProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseProgressCopyWith<$Res> {
  factory $CourseProgressCopyWith(
          CourseProgress value, $Res Function(CourseProgress) then) =
      _$CourseProgressCopyWithImpl<$Res, CourseProgress>;
  @useResult
  $Res call({String courseId, int currentPage, bool isOver});
}

/// @nodoc
class _$CourseProgressCopyWithImpl<$Res, $Val extends CourseProgress>
    implements $CourseProgressCopyWith<$Res> {
  _$CourseProgressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = null,
    Object? currentPage = null,
    Object? isOver = null,
  }) {
    return _then(_value.copyWith(
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      isOver: null == isOver
          ? _value.isOver
          : isOver // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CourseProgressCopyWith<$Res>
    implements $CourseProgressCopyWith<$Res> {
  factory _$$_CourseProgressCopyWith(
          _$_CourseProgress value, $Res Function(_$_CourseProgress) then) =
      __$$_CourseProgressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String courseId, int currentPage, bool isOver});
}

/// @nodoc
class __$$_CourseProgressCopyWithImpl<$Res>
    extends _$CourseProgressCopyWithImpl<$Res, _$_CourseProgress>
    implements _$$_CourseProgressCopyWith<$Res> {
  __$$_CourseProgressCopyWithImpl(
      _$_CourseProgress _value, $Res Function(_$_CourseProgress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = null,
    Object? currentPage = null,
    Object? isOver = null,
  }) {
    return _then(_$_CourseProgress(
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      isOver: null == isOver
          ? _value.isOver
          : isOver // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CourseProgress extends _CourseProgress {
  const _$_CourseProgress(
      {required this.courseId, required this.currentPage, required this.isOver})
      : super._();

  @override
  final String courseId;
  @override
  final int currentPage;
  @override
  final bool isOver;

  @override
  String toString() {
    return 'CourseProgress(courseId: $courseId, currentPage: $currentPage, isOver: $isOver)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CourseProgress &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.isOver, isOver) || other.isOver == isOver));
  }

  @override
  int get hashCode => Object.hash(runtimeType, courseId, currentPage, isOver);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CourseProgressCopyWith<_$_CourseProgress> get copyWith =>
      __$$_CourseProgressCopyWithImpl<_$_CourseProgress>(this, _$identity);
}

abstract class _CourseProgress extends CourseProgress {
  const factory _CourseProgress(
      {required final String courseId,
      required final int currentPage,
      required final bool isOver}) = _$_CourseProgress;
  const _CourseProgress._() : super._();

  @override
  String get courseId;
  @override
  int get currentPage;
  @override
  bool get isOver;
  @override
  @JsonKey(ignore: true)
  _$$_CourseProgressCopyWith<_$_CourseProgress> get copyWith =>
      throw _privateConstructorUsedError;
}
