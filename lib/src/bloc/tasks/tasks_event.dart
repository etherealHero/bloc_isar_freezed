part of 'tasks_bloc.dart';

@freezed
class TasksEvent with _$TasksEvent {
  const factory TasksEvent.getAll() = _GetAll;
  const factory TasksEvent.getSublist(List<int> ids) = _GetSublist;
  const factory TasksEvent.update(Task task) = _Update;
  const factory TasksEvent.delete(int taskId) = _Delete;
  const factory TasksEvent.reorderComplete(
    int id,
    int dropId,
  ) = _ReorderComplete;
  const factory TasksEvent.add(
    String title,
    String description,
    int? groupId,
  ) = _Add;
}
