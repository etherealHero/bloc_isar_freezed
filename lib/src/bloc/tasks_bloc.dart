import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../repository/repository.dart';
import '../models/task.dart';

part 'tasks_event.dart';
part 'tasks_state.dart';
part 'tasks_bloc.freezed.dart';

class TasksBloc extends Bloc<TasksEvent, TasksState> {
  TasksBloc() : super(TasksInitial(<Task>[])) {
    on<_GetAll>(_onGetAll);
    on<_Add>(_onAdd);
    on<_Update>(_onUpdate);
    on<_Delete>(_onDelete);
    on<_ReorderComplete>(_onReorderComplete);
  }

  final repository = Repository();
  int maxOrder = -1;

  void _onGetAll(_GetAll event, Emitter<TasksState> emit) async {
    var tasks = await repository.getTasks();

    tasks.sort((a, b) => b.order.compareTo(a.order));

    if (tasks.isNotEmpty) {
      maxOrder = tasks
          .reduce((curr, next) => curr.order > next.order ? curr : next)
          .order;
    }

    emit(TasksState.loaded(tasks));
  }

  void _onAdd(_Add event, Emitter<TasksState> emit) async {
    if (maxOrder == -1) {
      maxOrder = 1;
    } else {
      ++maxOrder;
    }

    var newTask = Task(
        title: event.title,
        description: event.description,
        dateCreateUtc: DateTime.now().toUtc(),
        dateModifyUtc: DateTime.now().toUtc(),
        order: maxOrder);
    var id = await repository.createTask(newTask);
    newTask = newTask.copyWith(id: id);

    var newState = state.copyWith(tasks: [newTask, ...state.tasks]);

    emit(TasksState.loaded(newState.tasks));
  }

  void _onUpdate(_Update event, Emitter<TasksState> emit) async {
    final updatedTask = event.task.updateModifyDate();
    final newTasks = [...state.tasks];
    final index = state.tasks.indexWhere((t) => t.id == updatedTask.id);

    if (index == -1) {
      return;
    }

    await repository.updateTask(updatedTask);

    newTasks[index] = updatedTask;

    emit(TasksState.loaded(newTasks));
  }

  void _onDelete(_Delete event, Emitter<TasksState> emit) async {
    Task task;

    try {
      task = state.tasks.firstWhere((t) => t.id == event.taskId);
    } on StateError {
      if (state.tasks.isEmpty) {
        emit(TasksState.loaded(<Task>[]));
      }

      return;
    }

    var isDeleted = await repository.deleteTask(task.id!);

    if (isDeleted) {
      var tasks = state.tasks.where((t) => t.id != event.taskId).toList();

      emit(TasksState.loaded(tasks));

      if (task.order == maxOrder) {
        if (tasks.isNotEmpty) {
          maxOrder = tasks.first.order;
        } else {
          maxOrder = -1;
        }
      }
    }
  }

  void _onReorderComplete(
      _ReorderComplete event, Emitter<TasksState> emit) async {
    final newTasks = [...state.tasks];
    final orders = state.tasks.map((e) => e.order).toList();

    final from = min(event.dropIndex, event.index);
    final to = max(event.dropIndex, event.index) + 1;

    newTasks.insert(event.dropIndex, newTasks.removeAt(event.index));
    for (var i = from; i < to; i++) {
      newTasks[i] = newTasks[i].copyWith(order: orders[i])..updateModifyDate();
      await repository.updateTask(newTasks[i]);
    }

    event.cb.call(newTasks);

    emit(TasksState.loaded(newTasks));
  }
}
