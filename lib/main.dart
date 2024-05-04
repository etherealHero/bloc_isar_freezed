import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:great_list_view/great_list_view.dart';

import 'src/app/app.dart';
import 'src/app/bloc_observer.dart';
import 'src/repository/repository.dart';

void main() async {
  Executor().warmUp();

  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();

  await Repository().performMigrationIfNeeded(prefs);

  Bloc.observer = const AppBlocObserver();

  runApp(const App());
}
