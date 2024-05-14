part of 'tasks_bloc.dart';

@freezed
class TasksState with _$TasksState {
  const TasksState._();
  const factory TasksState(
    final List<Task> tasks,
    final bool isFetching,
  ) = _TasksState;

  factory TasksState.initial() => const TasksState(<Task>[], true);
  factory TasksState.loaded(List<Task> tasks) => TasksState(tasks, false);
}
