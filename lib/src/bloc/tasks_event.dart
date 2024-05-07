part of 'tasks_bloc.dart';

@freezed
class TasksEvent with _$TasksEvent {
  const factory TasksEvent.getAll() = _GetAll;
  const factory TasksEvent.add(String title, String description) = _Add;
  const factory TasksEvent.update(Task task) = _Update;
  const factory TasksEvent.delete(int taskId) = _Delete;
  const factory TasksEvent.reorderComplete(
          int index, int dropIndex, void Function(List<Task>) cb) =
      _ReorderComplete;
}
