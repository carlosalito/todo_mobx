// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';

import '../../screens/home/home.dart';
import '../../screens/home/widgets/todo_view.dart';

class Routes {
  static const String homeScreen = '/';
  static const String toDoView = '/todo-view';
  static const all = <String>{
    homeScreen,
    toDoView,
  };
}

class AppRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homeScreen, page: HomeScreen),
    RouteDef(Routes.toDoView, page: ToDoView),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    HomeScreen: (data) {
      return buildAdaptivePageRoute<HomeScreen>(
        builder: (context) => HomeScreen(),
        settings: data,
      );
    },
    ToDoView: (data) {
      return buildAdaptivePageRoute<ToDoView>(
        builder: (context) => ToDoView(),
        settings: data,
      );
    },
  };
}
