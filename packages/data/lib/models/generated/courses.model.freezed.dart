// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../courses.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CoursesResponse _$CoursesResponseFromJson(Map<String, dynamic> json) {
  return _CoursesResponse.fromJson(json);
}

/// @nodoc
mixin _$CoursesResponse {
  List<CourseResponse> get courses => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoursesResponseCopyWith<CoursesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoursesResponseCopyWith<$Res> {
  factory $CoursesResponseCopyWith(
          CoursesResponse value, $Res Function(CoursesResponse) then) =
      _$CoursesResponseCopyWithImpl<$Res, CoursesResponse>;
  @useResult
  $Res call({List<CourseResponse> courses});
}

/// @nodoc
class _$CoursesResponseCopyWithImpl<$Res, $Val extends CoursesResponse>
    implements $CoursesResponseCopyWith<$Res> {
  _$CoursesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courses = null,
  }) {
    return _then(_value.copyWith(
      courses: null == courses
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<CourseResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CoursesResponseCopyWith<$Res>
    implements $CoursesResponseCopyWith<$Res> {
  factory _$$_CoursesResponseCopyWith(
          _$_CoursesResponse value, $Res Function(_$_CoursesResponse) then) =
      __$$_CoursesResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CourseResponse> courses});
}

/// @nodoc
class __$$_CoursesResponseCopyWithImpl<$Res>
    extends _$CoursesResponseCopyWithImpl<$Res, _$_CoursesResponse>
    implements _$$_CoursesResponseCopyWith<$Res> {
  __$$_CoursesResponseCopyWithImpl(
      _$_CoursesResponse _value, $Res Function(_$_CoursesResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courses = null,
  }) {
    return _then(_$_CoursesResponse(
      courses: null == courses
          ? _value._courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<CourseResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CoursesResponse implements _CoursesResponse {
  const _$_CoursesResponse({required final List<CourseResponse> courses})
      : _courses = courses;

  factory _$_CoursesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CoursesResponseFromJson(json);

  final List<CourseResponse> _courses;
  @override
  List<CourseResponse> get courses {
    if (_courses is EqualUnmodifiableListView) return _courses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_courses);
  }

  @override
  String toString() {
    return 'CoursesResponse(courses: $courses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CoursesResponse &&
            const DeepCollectionEquality().equals(other._courses, _courses));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_courses));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoursesResponseCopyWith<_$_CoursesResponse> get copyWith =>
      __$$_CoursesResponseCopyWithImpl<_$_CoursesResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoursesResponseToJson(
      this,
    );
  }
}

abstract class _CoursesResponse implements CoursesResponse {
  const factory _CoursesResponse(
      {required final List<CourseResponse> courses}) = _$_CoursesResponse;

  factory _CoursesResponse.fromJson(Map<String, dynamic> json) =
      _$_CoursesResponse.fromJson;

  @override
  List<CourseResponse> get courses;
  @override
  @JsonKey(ignore: true)
  _$$_CoursesResponseCopyWith<_$_CoursesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

CourseResponse _$CourseResponseFromJson(Map<String, dynamic> json) {
  return _CourseResponse.fromJson(json);
}

/// @nodoc
mixin _$CourseResponse {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<CoursePageResponse> get pages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseResponseCopyWith<CourseResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseResponseCopyWith<$Res> {
  factory $CourseResponseCopyWith(
          CourseResponse value, $Res Function(CourseResponse) then) =
      _$CourseResponseCopyWithImpl<$Res, CourseResponse>;
  @useResult
  $Res call({String id, String name, List<CoursePageResponse> pages});
}

/// @nodoc
class _$CourseResponseCopyWithImpl<$Res, $Val extends CourseResponse>
    implements $CourseResponseCopyWith<$Res> {
  _$CourseResponseCopyWithImpl(this._value, this._then);

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
              as List<CoursePageResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CourseResponseCopyWith<$Res>
    implements $CourseResponseCopyWith<$Res> {
  factory _$$_CourseResponseCopyWith(
          _$_CourseResponse value, $Res Function(_$_CourseResponse) then) =
      __$$_CourseResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, List<CoursePageResponse> pages});
}

/// @nodoc
class __$$_CourseResponseCopyWithImpl<$Res>
    extends _$CourseResponseCopyWithImpl<$Res, _$_CourseResponse>
    implements _$$_CourseResponseCopyWith<$Res> {
  __$$_CourseResponseCopyWithImpl(
      _$_CourseResponse _value, $Res Function(_$_CourseResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? pages = null,
  }) {
    return _then(_$_CourseResponse(
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
              as List<CoursePageResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CourseResponse extends _CourseResponse {
  const _$_CourseResponse(
      {required this.id,
      required this.name,
      required final List<CoursePageResponse> pages})
      : _pages = pages,
        super._();

  factory _$_CourseResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CourseResponseFromJson(json);

  @override
  final String id;
  @override
  final String name;
  final List<CoursePageResponse> _pages;
  @override
  List<CoursePageResponse> get pages {
    if (_pages is EqualUnmodifiableListView) return _pages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pages);
  }

  @override
  String toString() {
    return 'CourseResponse(id: $id, name: $name, pages: $pages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CourseResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._pages, _pages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(_pages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CourseResponseCopyWith<_$_CourseResponse> get copyWith =>
      __$$_CourseResponseCopyWithImpl<_$_CourseResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CourseResponseToJson(
      this,
    );
  }
}

abstract class _CourseResponse extends CourseResponse {
  const factory _CourseResponse(
      {required final String id,
      required final String name,
      required final List<CoursePageResponse> pages}) = _$_CourseResponse;
  const _CourseResponse._() : super._();

  factory _CourseResponse.fromJson(Map<String, dynamic> json) =
      _$_CourseResponse.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  List<CoursePageResponse> get pages;
  @override
  @JsonKey(ignore: true)
  _$$_CourseResponseCopyWith<_$_CourseResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

CoursePageResponse _$CoursePageResponseFromJson(Map<String, dynamic> json) {
  return _CoursePageResponse.fromJson(json);
}

/// @nodoc
mixin _$CoursePageResponse {
  String get name => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoursePageResponseCopyWith<CoursePageResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoursePageResponseCopyWith<$Res> {
  factory $CoursePageResponseCopyWith(
          CoursePageResponse value, $Res Function(CoursePageResponse) then) =
      _$CoursePageResponseCopyWithImpl<$Res, CoursePageResponse>;
  @useResult
  $Res call({String name, String content});
}

/// @nodoc
class _$CoursePageResponseCopyWithImpl<$Res, $Val extends CoursePageResponse>
    implements $CoursePageResponseCopyWith<$Res> {
  _$CoursePageResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_CoursePageResponseCopyWith<$Res>
    implements $CoursePageResponseCopyWith<$Res> {
  factory _$$_CoursePageResponseCopyWith(_$_CoursePageResponse value,
          $Res Function(_$_CoursePageResponse) then) =
      __$$_CoursePageResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String content});
}

/// @nodoc
class __$$_CoursePageResponseCopyWithImpl<$Res>
    extends _$CoursePageResponseCopyWithImpl<$Res, _$_CoursePageResponse>
    implements _$$_CoursePageResponseCopyWith<$Res> {
  __$$_CoursePageResponseCopyWithImpl(
      _$_CoursePageResponse _value, $Res Function(_$_CoursePageResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? content = null,
  }) {
    return _then(_$_CoursePageResponse(
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
@JsonSerializable()
class _$_CoursePageResponse extends _CoursePageResponse {
  const _$_CoursePageResponse({required this.name, required this.content})
      : super._();

  factory _$_CoursePageResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CoursePageResponseFromJson(json);

  @override
  final String name;
  @override
  final String content;

  @override
  String toString() {
    return 'CoursePageResponse(name: $name, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CoursePageResponse &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoursePageResponseCopyWith<_$_CoursePageResponse> get copyWith =>
      __$$_CoursePageResponseCopyWithImpl<_$_CoursePageResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoursePageResponseToJson(
      this,
    );
  }
}

abstract class _CoursePageResponse extends CoursePageResponse {
  const factory _CoursePageResponse(
      {required final String name,
      required final String content}) = _$_CoursePageResponse;
  const _CoursePageResponse._() : super._();

  factory _CoursePageResponse.fromJson(Map<String, dynamic> json) =
      _$_CoursePageResponse.fromJson;

  @override
  String get name;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$_CoursePageResponseCopyWith<_$_CoursePageResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
