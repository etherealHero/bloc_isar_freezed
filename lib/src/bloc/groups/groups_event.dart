part of 'groups_bloc.dart';

@freezed
class GroupsEvent with _$GroupsEvent {
  const factory GroupsEvent.getAll() = _GetAll;
  const factory GroupsEvent.add(String title, int color) = _Add;
  const factory GroupsEvent.update(Group group) = _Update;
  const factory GroupsEvent.delete(int groupId) = _Delete;
  const factory GroupsEvent.reorderComplete(int id, int dropId) =
      _ReorderComplete;
}
