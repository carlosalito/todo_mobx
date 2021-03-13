// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$todosAtom = Atom(name: '_HomeControllerBase.todos');

  @override
  List<ToDoModel> get todos {
    _$todosAtom.reportRead();
    return super.todos;
  }

  @override
  set todos(List<ToDoModel> value) {
    _$todosAtom.reportWrite(value, super.todos, () {
      super.todos = value;
    });
  }

  final _$todoAtom = Atom(name: '_HomeControllerBase.todo');

  @override
  ToDoModel get todo {
    _$todoAtom.reportRead();
    return super.todo;
  }

  @override
  set todo(ToDoModel value) {
    _$todoAtom.reportWrite(value, super.todo, () {
      super.todo = value;
    });
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  void setTodos(List<ToDoModel> values) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.setTodos');
    try {
      return super.setTodos(values);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTodo(ToDoModel value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.setTodo');
    try {
      return super.setTodo(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
todos: ${todos},
todo: ${todo}
    ''';
  }
}
