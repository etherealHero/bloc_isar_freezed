import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../repository/repository.dart';
import '../../models/task/task.dart';

part 'tasks_event.dart';
part 'tasks_state.dart';
part 'tasks_bloc.freezed.dart';

class TasksBloc extends Bloc<TasksEvent, TasksState> {
  TasksBloc() : super(TasksState.initial()) {
    on<_GetAll>(_onGetAll);
    on<_Add>(_onAdd);
    on<_Update>(_onUpdate);
    on<_Delete>(_onDelete);
    on<_ReorderComplete>(_onReorderComplete);
    on<_FilterByGroup>(_onFilterByGroup);
  }

  final repository = Repository<TaskDTO>();
  int maxOrder = -1;

  void _onGetAll(_GetAll event, Emitter<TasksState> emit) async {
    var tasks = (await repository.getAll()).map((e) => e.toEntity()).toList();

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

    var taskDTO = TaskDTO(
      isDone: false,
      isArchived: false,
      isTrash: false,
      title: event.title,
      description: event.description,
      dateCreateUtc: DateTime.now().toUtc(),
      dateModifyUtc: DateTime.now().toUtc(),
      order: maxOrder,
    );

    await repository.createTask(taskDTO);

    var newState = state.copyWith(
      tasks: [(taskDTO.toEntity()), ...state.tasks],
    );

    emit(TasksState.loaded(newState.tasks));
  }

  void _onUpdate(_Update event, Emitter<TasksState> emit) async {
    Task updatedTask = event.task.copyWith(
      dateModifyUtc: DateTime.now().toUtc(),
    );

    final newTasks = [...state.tasks];
    final index = state.tasks.indexWhere((t) => t.id == updatedTask.id);

    if (index == -1) {
      return;
    }

    await repository.update(updatedTask.toDTO());

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

    var isDeleted = await repository.delete(task.id);

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
      newTasks[i] = newTasks[i]
          .copyWith(order: orders[i], dateModifyUtc: DateTime.now().toUtc());
      await repository.update(newTasks[i].toDTO());
    }

    emit(TasksState.loaded(newTasks));
  }

  void _onFilterByGroup(
    _FilterByGroup event,
    Emitter<TasksState> emit,
  ) async {
    var tasks = (await repository.getAll()).map((e) => e.toEntity()).toList();

    tasks.sort((a, b) => b.order.compareTo(a.order));

    if (tasks.isNotEmpty) {
      maxOrder = tasks
          .reduce((curr, next) => curr.order > next.order ? curr : next)
          .order;
    }

    if (event.groupId != null) {
      var newTasks = tasks.where((e) => e.groupId == event.groupId).toList();
      emit(TasksState.loaded(newTasks));
    } else {
      emit(TasksState.loaded(tasks));
    }
  }
}
