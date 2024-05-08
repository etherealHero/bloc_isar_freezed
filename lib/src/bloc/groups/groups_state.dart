part of 'groups_bloc.dart';

@freezed
class GroupsState with _$GroupsState {
  factory GroupsState.initial(final List<Group> groups) = GroupsInitial;
  factory GroupsState.loaded(final List<Group> groups) = GroupsLoaded;
  factory GroupsState.reordered(final List<Group> groups, int from, int to) =
      GroupsReordered;
  factory GroupsState.updatedSome(final List<Group> groups, int index) =
      GroupsUpdatedSome;
}
