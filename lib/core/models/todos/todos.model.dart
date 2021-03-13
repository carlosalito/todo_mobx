import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'todos.model.g.dart';

@JsonSerializable(
  nullable: true,
  anyMap: true,
  fieldRename: FieldRename.snake,
)
class ToDoModel extends Equatable {
  final String id;
  // @JsonKey(name: 'created_at') //tbm poderia ser usado essa abordagem
  final DateTime createdAt;
  final String title;
  final String content;
  final DateTime doneAt;
  final DateTime when;

  ToDoModel({
    this.content,
    this.createdAt,
    this.doneAt,
    this.id,
    this.title,
    this.when,
  });

  // {"id":"1","created_at":"2021-02-18T01:58:02.651Z","title":"title 1","content":"content 1",
  // "done_at":"2021-02-18T19:22:02.491Z","when":"2021-02-18T22:33:47.241Z"}

  factory ToDoModel.fromJson(Map json) => _$ToDoModelFromJson(json);
  Map<String, dynamic> toJson() => _$ToDoModelToJson(this);

  @override
  List<Object> get props => [];
}
