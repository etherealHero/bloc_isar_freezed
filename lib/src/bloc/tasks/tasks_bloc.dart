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
    on<_GetSublist>(_onGetSublist);
    on<_Add>(_onAdd);
    on<_Update>(_onUpdate);
    on<_Delete>(_onDelete);
    on<_ReorderComplete>(_onReorderComplete);
  }

  final repository = Repository<TaskDTO>();
  int maxOrder = -1;

  void _onGetSublist(_GetSublist event, Emitter<TasksState> emit) async {
    var tasksSublist = (await repository.getSublist(event.ids))
        .map((e) => e!.toEntity())
        .toList();

    tasksSublist.sort((a, b) => b.order.compareTo(a.order));

    var newTasks = [for (var task in state.tasks) task.copyWith()];

    for (var t in tasksSublist) {
      var i = newTasks.indexWhere((nt) => nt.id == t.id);
      newTasks[i] = t;
    }

    emit(TasksState.loaded(newTasks));
  }

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
      groupId: event.groupId,
      dateCreateUtc: DateTime.now().toUtc(),
      dateModifyUtc: DateTime.now().toUtc(),
      order: maxOrder,
    );

    await repository.create(taskDTO);

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

    var taskDTO = updatedTask.toDTO();

    await repository.update(taskDTO);

    taskDTO = (await repository.get(updatedTask.id))!;

    updatedTask = taskDTO.toEntity();

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

    final index = state.tasks.indexWhere((t) => t.id == event.id);
    final dropIndex = state.tasks.indexWhere((t) => t.id == event.dropId);

    final from = min(dropIndex, index);
    final to = max(dropIndex, index) + 1;

    newTasks.insert(dropIndex, newTasks.removeAt(index));

    for (var i = from; i < to; i++) {
      newTasks[i] = newTasks[i]
          .copyWith(order: orders[i], dateModifyUtc: DateTime.now().toUtc());
      await repository.update(newTasks[i].toDTO());
    }

    emit(TasksState.loaded(newTasks));
  }
}
