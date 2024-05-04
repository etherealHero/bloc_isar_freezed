import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../repository/repository.dart';
import '../models/task.dart';

part 'task_list_event.dart';
part 'task_list_state.dart';

class TaskListBloc extends Bloc<TaskListEvent, TaskListState> {
  TaskListBloc({required this.dispatcher}) : super(TaskListInitialState()) {
    on<TaskListGetAllEvent>(_getAll);
    on<TaskListAddTaskEvent>(_add);
    on<TaskListDeleteTaskEvent>(_delete);
  }

  final void Function(List<Task>)? dispatcher;
  final repository = Repository();
  int maxOrder = -1;

  FutureOr<void> _delete(
    TaskListDeleteTaskEvent event,
    Emitter<TaskListState> emit,
  ) async {
    var task = state.tasks.firstWhere((t) => t.id! == event.taskId);

    var isDeleted = await repository.deleteTask(task.id!);

    if (isDeleted) {
      var tasks = state.tasks.where((t) => t.id! != event.taskId).toList();

      emit(TaskListLoadedState(tasks: tasks));

      dispatcher?.call(tasks);

      if (task.order == maxOrder) {
        if (tasks.isNotEmpty) {
          maxOrder = tasks
              .reduce((curr, next) => curr.order > next.order ? curr : next)
              .order;
        } else {
          maxOrder = -1;
        }
      }
    }
  }

  FutureOr<void> _add(
    TaskListAddTaskEvent event,
    Emitter<TaskListState> emit,
  ) async {
    var task = event.task;

    if (maxOrder == -1) {
      maxOrder = 1;
    } else {
      ++maxOrder;
    }

    task.order = maxOrder;

    var id = await repository.createTask(task);
    var tasks = [task..id = id, ...state.tasks];

    emit(TaskListLoadedState(tasks: tasks));

    dispatcher?.call(tasks);
  }

  FutureOr<void> _getAll(
    TaskListGetAllEvent event,
    Emitter<TaskListState> emit,
  ) async {
    var tasks = await repository.getTasks();

    tasks = tasks.reversed.toList();

    if (tasks.isNotEmpty) {
      maxOrder = tasks
          .reduce((curr, next) => curr.order > next.order ? curr : next)
          .order;
    }

    emit(TaskListLoadedState(tasks: tasks));

    dispatcher?.call(tasks);
  }
}
