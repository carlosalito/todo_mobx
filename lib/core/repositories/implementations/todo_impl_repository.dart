import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:task_mobx/core/constants/endpoints.dart';
import 'package:task_mobx/core/error/failure.dart';
import 'package:task_mobx/core/models/todos/todos.model.dart';
import 'package:task_mobx/core/repositories/todo_repository.dart';
import 'package:task_mobx/core/services/http_service.dart';

@Injectable(as: ToDoRepository)
class ToDoImplRepository implements ToDoRepository {
  HttpService httpClient;

  ToDoImplRepository({this.httpClient});

  @override
  Future<Either<Failure, List<ToDoModel>>> listToDos() async {
    try {
      final _response = await httpClient.httpGet(Endpoints.getTodo);
      if (_response.statusCode == 200) {
        final _result = jsonDecode(_response.body);
        return right(_parseListTodo(_result));
      } else {
        return left(NetworkFailure());
      }
    } catch (e) {
      return left(NetworkFailure());
    }
  }

  List<ToDoModel> _parseListTodo(List list) {
    return list.map((entry) => ToDoModel.fromJson(entry)).toList();
  }
}
