import 'package:dartz/dartz.dart';
import 'package:task_mobx/core/error/failure.dart';
import 'package:task_mobx/core/models/todos/todos.model.dart';

abstract class ToDoRepository {
  Future<Either<Failure, List<ToDoModel>>> listToDos();
}
