// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../courses.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CoursesResponse _$$_CoursesResponseFromJson(Map<String, dynamic> json) =>
    _$_CoursesResponse(
      courses: (json['courses'] as List<dynamic>)
          .map((e) => CourseResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CoursesResponseToJson(_$_CoursesResponse instance) =>
    <String, dynamic>{
      'courses': instance.courses,
    };

_$_CourseResponse _$$_CourseResponseFromJson(Map<String, dynamic> json) =>
    _$_CourseResponse(
      id: json['id'] as String,
      name: json['name'] as String,
      pages: (json['pages'] as List<dynamic>)
          .map((e) => CoursePageResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CourseResponseToJson(_$_CourseResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'pages': instance.pages,
    };

_$_CoursePageResponse _$$_CoursePageResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CoursePageResponse(
      name: json['name'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$$_CoursePageResponseToJson(
        _$_CoursePageResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'content': instance.content,
    };
