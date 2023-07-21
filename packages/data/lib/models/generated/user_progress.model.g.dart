// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../user_progress.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CourseProgressResponse _$$_CourseProgressResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CourseProgressResponse(
      courseId: json['courseId'] as String,
      currentPage: json['currentPage'] as int,
      isOver: json['isOver'] as bool,
    );

Map<String, dynamic> _$$_CourseProgressResponseToJson(
        _$_CourseProgressResponse instance) =>
    <String, dynamic>{
      'courseId': instance.courseId,
      'currentPage': instance.currentPage,
      'isOver': instance.isOver,
    };
