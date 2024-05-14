part of 'groups_bloc.dart';

@freezed
class GroupsEvent with _$GroupsEvent {
  const factory GroupsEvent.getAll() = _GetAll;
  const factory GroupsEvent.add(String title) = _Add;
  const factory GroupsEvent.update(Group group) = _Update;
  const factory GroupsEvent.delete(int groupId) = _Delete;
  const factory GroupsEvent.reorderComplete(int index, int dropIndex) =
      _ReorderComplete;
  const factory GroupsEvent.clean() = _Clean;
}
