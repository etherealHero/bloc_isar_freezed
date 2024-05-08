part of 'tasks_bloc.dart';

@freezed
class TasksState with _$TasksState {
  factory TasksState.initial(final List<Task> tasks) = TasksInitial;
  factory TasksState.loaded(final List<Task> tasks) = TasksLoaded;
  factory TasksState.reordered(final List<Task> tasks, int from, int to) =
      TasksReordered;
}
