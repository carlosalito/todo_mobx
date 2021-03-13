import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
import 'package:task_mobx/core/models/todos/todos.model.dart';
import 'package:task_mobx/core/repositories/todo_repository.dart';
import 'package:task_mobx/core/services/notifications_service.dart';

part 'home_controller.g.dart';

@singleton
class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  ToDoRepository toDoRepository;

  _HomeControllerBase({this.toDoRepository});

  @observable
  List<ToDoModel> todos = ObservableList.of([]);

  @observable
  ToDoModel todo;

  @action
  void setTodos(List<ToDoModel> values) {
    todos = values;
  }

  @action
  void setTodo(ToDoModel value) {
    todo = value;
  }

  Future<void> listTodos() async {
    final _response = await toDoRepository.listToDos();

    if (_response.isLeft())
      AppNotifications.showToastError('Erro ao listar os TODOS');
    else {
      final _todos = _response.getOrElse(() => []) ?? [];
      setTodos(_todos);
      AppNotifications.showToastSuccess('TODOS listados com sucesso!');
    }
  }
}
