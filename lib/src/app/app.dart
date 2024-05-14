import 'package:flutter/material.dart';

import '../pages/home_page.dart';

class App extends StatefulWidget {
  const App({super.key});

  static ValueNotifier<int?> selectedGroup(BuildContext context) {
    return context.findAncestorStateOfType<_AppState>()!._selectedGroup;
  }

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final ValueNotifier<int?> _selectedGroup = ValueNotifier<int?>(null);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Test App', home: HomePage());
  }
}
