part of 'task_list_bloc.dart';

@immutable
sealed class TaskListState {
  final List<Task> tasks;

  const TaskListState({required this.tasks});
}

final class TaskListInitialState extends TaskListState {
  TaskListInitialState() : super(tasks: <Task>[]);
}

final class TaskListLoadedState extends TaskListState {
  const TaskListLoadedState({required super.tasks});
}

final class TaskListUpdateTaskState extends TaskListState {
  final int from;
  final int count;

  const TaskListUpdateTaskState({
    required super.tasks,
    required this.from,
    required this.count,
  });
}
