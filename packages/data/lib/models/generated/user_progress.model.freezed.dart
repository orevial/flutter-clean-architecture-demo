// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../user_progress.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CourseProgressResponse _$CourseProgressResponseFromJson(
    Map<String, dynamic> json) {
  return _CourseProgressResponse.fromJson(json);
}

/// @nodoc
mixin _$CourseProgressResponse {
  String get courseId => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  bool get isOver => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseProgressResponseCopyWith<CourseProgressResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseProgressResponseCopyWith<$Res> {
  factory $CourseProgressResponseCopyWith(CourseProgressResponse value,
          $Res Function(CourseProgressResponse) then) =
      _$CourseProgressResponseCopyWithImpl<$Res, CourseProgressResponse>;
  @useResult
  $Res call({String courseId, int currentPage, bool isOver});
}

/// @nodoc
class _$CourseProgressResponseCopyWithImpl<$Res,
        $Val extends CourseProgressResponse>
    implements $CourseProgressResponseCopyWith<$Res> {
  _$CourseProgressResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_CourseProgressResponseCopyWith<$Res>
    implements $CourseProgressResponseCopyWith<$Res> {
  factory _$$_CourseProgressResponseCopyWith(_$_CourseProgressResponse value,
          $Res Function(_$_CourseProgressResponse) then) =
      __$$_CourseProgressResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String courseId, int currentPage, bool isOver});
}

/// @nodoc
class __$$_CourseProgressResponseCopyWithImpl<$Res>
    extends _$CourseProgressResponseCopyWithImpl<$Res,
        _$_CourseProgressResponse>
    implements _$$_CourseProgressResponseCopyWith<$Res> {
  __$$_CourseProgressResponseCopyWithImpl(_$_CourseProgressResponse _value,
      $Res Function(_$_CourseProgressResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = null,
    Object? currentPage = null,
    Object? isOver = null,
  }) {
    return _then(_$_CourseProgressResponse(
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
@JsonSerializable()
class _$_CourseProgressResponse extends _CourseProgressResponse {
  const _$_CourseProgressResponse(
      {required this.courseId, required this.currentPage, required this.isOver})
      : super._();

  factory _$_CourseProgressResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CourseProgressResponseFromJson(json);

  @override
  final String courseId;
  @override
  final int currentPage;
  @override
  final bool isOver;

  @override
  String toString() {
    return 'CourseProgressResponse(courseId: $courseId, currentPage: $currentPage, isOver: $isOver)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CourseProgressResponse &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.isOver, isOver) || other.isOver == isOver));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, courseId, currentPage, isOver);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CourseProgressResponseCopyWith<_$_CourseProgressResponse> get copyWith =>
      __$$_CourseProgressResponseCopyWithImpl<_$_CourseProgressResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CourseProgressResponseToJson(
      this,
    );
  }
}

abstract class _CourseProgressResponse extends CourseProgressResponse {
  const factory _CourseProgressResponse(
      {required final String courseId,
      required final int currentPage,
      required final bool isOver}) = _$_CourseProgressResponse;
  const _CourseProgressResponse._() : super._();

  factory _CourseProgressResponse.fromJson(Map<String, dynamic> json) =
      _$_CourseProgressResponse.fromJson;

  @override
  String get courseId;
  @override
  int get currentPage;
  @override
  bool get isOver;
  @override
  @JsonKey(ignore: true)
  _$$_CourseProgressResponseCopyWith<_$_CourseProgressResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
