import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:great_list_view/great_list_view.dart';
import 'package:sandbox/src/widgets/task_list.dart';

import '../repository/repository.dart';
import '../models/task.dart';

part 'task_list_event.dart';
part 'task_list_state.dart';

class TaskListBloc extends Bloc<TaskListEvent, TaskListState> {
  TaskListBloc({required this.dispatcher}) : super(TaskListInitialState()) {
    on<TaskListGetAllEvent>(_getAll);
    on<TaskListAddTaskEvent>(_add);
    on<TaskListDeleteTaskEvent>(_delete);
    on<TaskListReorderCompleteEvent>(_reorderComplete);
  }

  final AnimatedListDiffListDispatcher<Task>? dispatcher;
  final repository = Repository();
  int maxOrder = -1;

  FutureOr<void> _reorderComplete(
    TaskListReorderCompleteEvent event,
    Emitter<TaskListState> emit,
  ) async {
    final index = event.index;
    final dropIndex = event.dropIndex;
    final newTasks = [...state.tasks];
    final from = min(dropIndex, index);
    final to = max(dropIndex, index) + 1;
    final orders = state.tasks.sublist(from, to).map((e) => e.order).toList();

    newTasks.insert(dropIndex, newTasks.removeAt(index));
    newTasks.sublist(from, to).asMap().forEach((i, task) async {
      task.order = orders.elementAt(i);
      task.updateModifyDate();

      await repository.updateTask(task);
    });

    emit(TaskListLoadedState(tasks: newTasks));

    dispatcher?.dispatchNewList([...newTasks]);
    dispatcher?.controller.notifyChangedRange(from, to - from,
        (context, index, data) {
      return itemBuilder(context, newTasks.sublist(from, to)[index], data);
    });
  }

  FutureOr<void> _delete(
    TaskListDeleteTaskEvent event,
    Emitter<TaskListState> emit,
  ) async {
    Task task;

    try {
      task = state.tasks.firstWhere((t) => t.id! == event.taskId);
    } on StateError {
      return;
    }

    var isDeleted = await repository.deleteTask(task.id!);

    if (isDeleted) {
      var tasks = state.tasks.where((t) => t.id! != event.taskId).toList();

      emit(TaskListLoadedState(tasks: tasks));

      dispatcher?.dispatchNewList([...tasks]);

      if (task.order == maxOrder) {
        if (tasks.isNotEmpty) {
          maxOrder = tasks.first.order;
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

    dispatcher?.dispatchNewList([...tasks]);
  }

  FutureOr<void> _getAll(
    TaskListGetAllEvent event,
    Emitter<TaskListState> emit,
  ) async {
    var tasks = await repository.getTasks();

    tasks.sort((a, b) => b.order.compareTo(a.order));

    if (tasks.isNotEmpty) {
      maxOrder = tasks
          .reduce((curr, next) => curr.order > next.order ? curr : next)
          .order;
    }

    emit(TaskListLoadedState(tasks: tasks));

    dispatcher?.dispatchNewList([...tasks]);
  }
}
