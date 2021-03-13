import 'package:auto_route/auto_route_annotations.dart';
import 'package:task_mobx/core/constants/routes.dart';
import 'package:task_mobx/screens/home/home.dart';
import 'package:task_mobx/screens/home/widgets/todo_view.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  AdaptiveRoute<HomeScreen>(
    page: HomeScreen,
    path: '/',
    initial: true,
  ),
  AdaptiveRoute<ToDoView>(
    page: ToDoView,
    path: AppRoutes.todoView,
  ),
])
class $AppRouter {
  HomeScreen initialScreen;
  ToDoView toDoView;
}
