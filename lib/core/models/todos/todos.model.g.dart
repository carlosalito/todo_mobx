// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todos.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ToDoModel _$ToDoModelFromJson(Map json) {
  return ToDoModel(
    content: json['content'] as String,
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    doneAt: json['done_at'] == null
        ? null
        : DateTime.parse(json['done_at'] as String),
    id: json['id'] as String,
    title: json['title'] as String,
    when: json['when'] == null ? null : DateTime.parse(json['when'] as String),
  );
}

Map<String, dynamic> _$ToDoModelToJson(ToDoModel instance) => <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt?.toIso8601String(),
      'title': instance.title,
      'content': instance.content,
      'done_at': instance.doneAt?.toIso8601String(),
      'when': instance.when?.toIso8601String(),
    };
