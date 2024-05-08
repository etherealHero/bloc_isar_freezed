part of 'groups_bloc.dart';

@freezed
class GroupsState with _$GroupsState {
  factory GroupsState.initial(final List<Group> groups) = GroupsInitial;
  factory GroupsState.loaded(final List<Group> groups) = GroupsLoaded;
}
