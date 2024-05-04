part of 'task_list_bloc.dart';

@immutable
sealed class TaskListEvent {}

class TaskListGetAllEvent extends TaskListEvent {}

class TaskListAddTaskEvent extends TaskListEvent {
  final Task task;

  TaskListAddTaskEvent({required this.task}) {
    assert(task.order == -1);
  }
}

class TaskListDeleteTaskEvent extends TaskListEvent {
  final int taskId;

  TaskListDeleteTaskEvent({required this.taskId});
}

class TaskListReorderCompleteEvent extends TaskListEvent {
  final int index;
  final int dropIndex;

  TaskListReorderCompleteEvent({required this.index, required this.dropIndex});
}
