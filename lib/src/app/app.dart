import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../pages/tasks_page.dart';
import '../pages/groups_page.dart';
import '../pages/analytics_page.dart';
import '../pages/profile_page.dart';

import '../bloc/groups/groups_bloc.dart';
import '../bloc/tasks/tasks_bloc.dart';
import '../shared/colors.dart';
import 'theme_provider.dart';

part "observer.dart";

class App extends StatefulWidget {
  const App({super.key, required ThemeController themeController})
      : _themeController = themeController;

  final ThemeController _themeController;

  static AppState of(BuildContext context) {
    return context.findAncestorStateOfType<AppState>()!;
  }

  @override
  State<App> createState() => AppState();
}

class AppState extends State<App> {
  final ValueNotifier<int?> selectedGroupNotifier = ValueNotifier<int?>(null);
  int _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    Color seedColor = Colors.deepPurpleAccent;

    return ThemeProvider(
      controller: widget._themeController,
      builder: (context, _) => MaterialApp(
          title: 'Test App',
          theme: ThemeData(colorSchemeSeed: seedColor),
          darkTheme: ThemeData(
              colorSchemeSeed: seedColor, brightness: Brightness.dark),
          themeMode: widget._themeController.currentTheme,
          // TODO: bloc вынести в отдельный файл
          home: MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (context) =>
                      GroupsBloc()..add(const GroupsEvent.getAll()),
                  lazy: false,
                ),
                BlocProvider(
                  create: (context) =>
                      TasksBloc()..add(const TasksEvent.getAll()),
                  lazy: false,
                ),
              ],
              child: Scaffold(
                body: SafeArea(
                    child: [
                  const TasksPage(),
                  const GroupsPage(),
                  const AnalyticsPage(),
                  const ProfilePage(),
                ][_currentPageIndex]),
                floatingActionButton: [
                  Builder(builder: (context) {
                    return FloatingActionButton(
                        heroTag: null,
                        onPressed: () {
                          context.read<TasksBloc>().add(TasksEvent.add(
                                "title",
                                "description",
                                App.of(context).selectedGroupNotifier.value,
                              ));
                        },
                        child: const Icon(Icons.add));
                  }),
                  Builder(builder: (context) {
                    return FloatingActionButton(
                        heroTag: null,
                        onPressed: () {
                          final color = colorPallete[
                              Random().nextInt(colorPallete.length)];
                          context
                              .read<GroupsBloc>()
                              .add(GroupsEvent.add("title", color.value));
                        },
                        child: const Icon(Icons.add));
                  }),
                  const SizedBox.shrink(),
                  const SizedBox.shrink(),
                ][_currentPageIndex],
                bottomNavigationBar: NavigationBar(
                  onDestinationSelected: (int index) => setState(() {
                    _currentPageIndex = index;
                  }),
                  selectedIndex: _currentPageIndex,
                  destinations: const <Widget>[
                    NavigationDestination(
                      selectedIcon: Icon(Icons.task),
                      icon: Icon(Icons.task_outlined),
                      label: 'Tasks',
                    ),
                    NavigationDestination(
                      selectedIcon: Icon(Icons.view_agenda),
                      icon: Icon(Icons.view_agenda_outlined),
                      label: 'Groups',
                    ),
                    NavigationDestination(
                      selectedIcon: Icon(Icons.analytics),
                      icon: Icon(Icons.analytics_outlined),
                      label: 'Analytics',
                    ),
                    NavigationDestination(
                      selectedIcon: Icon(Icons.person),
                      icon: Icon(Icons.person_outline),
                      label: 'Profile',
                    ),
                  ],
                ),
              ))),
    );
  }
}
