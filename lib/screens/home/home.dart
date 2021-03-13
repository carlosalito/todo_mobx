import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:task_mobx/core/constants/routes.dart';
import 'package:task_mobx/core/di/injectable.dart';
import 'package:task_mobx/core/models/todos/todos.model.dart';

import 'controller/home_controller.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeController controller = getIt<HomeController>();
  bool loading = false;

  @override
  void initState() {
    super.initState();
    _listTodos();
  }

  void _setLoading(bool value) {
    setState(() {
      loading = value;
    });
  }

  void _listTodos() async {
    try {
      _setLoading(true);
      await controller.listTodos();
    } finally {
      _setLoading(false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home Screen'),
        ),
        body: Observer(builder: (context) {
          return loading
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : ListView(
                  children: _todoList(),
                );
        }));
  }

  List<Widget> _todoList() {
    return controller.todos.map((todo) => _todoTile(todo)).toList();
  }

  Widget _todoTile(ToDoModel todo) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () => _actionTodo(todo),
        child: Ink(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Container(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(todo.title),
                    SizedBox(height: 8.0),
                    Text(todo.content),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _actionTodo(ToDoModel todo) {
    controller.setTodo(todo);
    ExtendedNavigator.root.push(AppRoutes.todoView);
  }
}
