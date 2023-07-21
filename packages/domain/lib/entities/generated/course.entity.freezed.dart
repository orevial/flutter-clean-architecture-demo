// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../course.entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Course {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<CoursePage> get pages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CourseCopyWith<Course> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseCopyWith<$Res> {
  factory $CourseCopyWith(Course value, $Res Function(Course) then) =
      _$CourseCopyWithImpl<$Res, Course>;
  @useResult
  $Res call({String id, String name, List<CoursePage> pages});
}

/// @nodoc
class _$CourseCopyWithImpl<$Res, $Val extends Course>
    implements $CourseCopyWith<$Res> {
  _$CourseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? pages = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as List<CoursePage>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CourseCopyWith<$Res> implements $CourseCopyWith<$Res> {
  factory _$$_CourseCopyWith(_$_Course value, $Res Function(_$_Course) then) =
      __$$_CourseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, List<CoursePage> pages});
}

/// @nodoc
class __$$_CourseCopyWithImpl<$Res>
    extends _$CourseCopyWithImpl<$Res, _$_Course>
    implements _$$_CourseCopyWith<$Res> {
  __$$_CourseCopyWithImpl(_$_Course _value, $Res Function(_$_Course) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? pages = null,
  }) {
    return _then(_$_Course(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      pages: null == pages
          ? _value._pages
          : pages // ignore: cast_nullable_to_non_nullable
              as List<CoursePage>,
    ));
  }
}

/// @nodoc

class _$_Course implements _Course {
  const _$_Course(
      {required this.id,
      required this.name,
      required final List<CoursePage> pages})
      : _pages = pages;

  @override
  final String id;
  @override
  final String name;
  final List<CoursePage> _pages;
  @override
  List<CoursePage> get pages {
    if (_pages is EqualUnmodifiableListView) return _pages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pages);
  }

  @override
  String toString() {
    return 'Course(id: $id, name: $name, pages: $pages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Course &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._pages, _pages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(_pages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CourseCopyWith<_$_Course> get copyWith =>
      __$$_CourseCopyWithImpl<_$_Course>(this, _$identity);
}

abstract class _Course implements Course {
  const factory _Course(
      {required final String id,
      required final String name,
      required final List<CoursePage> pages}) = _$_Course;

  @override
  String get id;
  @override
  String get name;
  @override
  List<CoursePage> get pages;
  @override
  @JsonKey(ignore: true)
  _$$_CourseCopyWith<_$_Course> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CoursePage {
  String get name => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CoursePageCopyWith<CoursePage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoursePageCopyWith<$Res> {
  factory $CoursePageCopyWith(
          CoursePage value, $Res Function(CoursePage) then) =
      _$CoursePageCopyWithImpl<$Res, CoursePage>;
  @useResult
  $Res call({String name, String content});
}

/// @nodoc
class _$CoursePageCopyWithImpl<$Res, $Val extends CoursePage>
    implements $CoursePageCopyWith<$Res> {
  _$CoursePageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CoursePageCopyWith<$Res>
    implements $CoursePageCopyWith<$Res> {
  factory _$$_CoursePageCopyWith(
          _$_CoursePage value, $Res Function(_$_CoursePage) then) =
      __$$_CoursePageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String content});
}

/// @nodoc
class __$$_CoursePageCopyWithImpl<$Res>
    extends _$CoursePageCopyWithImpl<$Res, _$_CoursePage>
    implements _$$_CoursePageCopyWith<$Res> {
  __$$_CoursePageCopyWithImpl(
      _$_CoursePage _value, $Res Function(_$_CoursePage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? content = null,
  }) {
    return _then(_$_CoursePage(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CoursePage implements _CoursePage {
  const _$_CoursePage({required this.name, required this.content});

  @override
  final String name;
  @override
  final String content;

  @override
  String toString() {
    return 'CoursePage(name: $name, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CoursePage &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoursePageCopyWith<_$_CoursePage> get copyWith =>
      __$$_CoursePageCopyWithImpl<_$_CoursePage>(this, _$identity);
}

abstract class _CoursePage implements CoursePage {
  const factory _CoursePage(
      {required final String name,
      required final String content}) = _$_CoursePage;

  @override
  String get name;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$_CoursePageCopyWith<_$_CoursePage> get copyWith =>
      throw _privateConstructorUsedError;
}
