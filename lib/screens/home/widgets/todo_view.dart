import 'package:flutter/material.dart';
import 'package:task_mobx/core/di/injectable.dart';

import './../controller/home_controller.dart';

class ToDoView extends StatelessWidget {
  final controller = getIt<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Visualização de TO DO'),
      ),
      body: ListView(
        children: [
          Text(controller.todo.title),
          SizedBox(height: 8.0),
          Text(controller.todo.content),
        ],
      ),
    );
  }
}
